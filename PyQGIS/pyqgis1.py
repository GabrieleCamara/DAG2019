from qgis.PyQt import *
import psycopg2
canvas = qgis.utils.iface.mapCanvas() 

# Conexao com o bdg
try:
	conn = psycopg2.connect("dbname = 'pyqgis' port = '5432'  user= 'postgres' password = 'postgres' host='localhost'")
	cursor = conn.cursor()
except:
	print('Erro')

uri = QgsDataSourceUri()
# Defina o nome do servidor, a porta, o nome do banco de dados, o usuário e a senha
uri.setConnection("localhost", "5432", "pyqgis", "user", "user")

# Layer dos municipios
# Defina o esquema, o nome da tabela, a coluna de geometria, e opcionalmente uma cláusula de
# filtro WHERE 
uri.setDataSource("public", "mun_sirgas", "geom", "")
layer1 = QgsVectorLayer(uri.uri(), "mun_sirgas", "postgres")
# Adicionando layer ao prj
QgsProject.instance().addMapLayer(layer1)

# Mudar a simbologia do layer1
# Mostra as propriedades da simbologia da camada
#renderer = layer1.renderer()
#print(layer1.renderer().symbol().symbolLayers()[0].properties())

# Simbologia dos municipios
symbol = QgsFillSymbol.createSimple({'border_width_map_unit_scale': '3x:0,0,0,0,0,0', 'color': '244,226,196,255', 'joinstyle': 'bevel', 'offset': '0,0', 'offset_map_unit_scale': '3x:0,0,0,0,0,0', 'offset_unit': 'MM', 'outline_color': '175,179,138,255', 'outline_style': 'solid', 'outline_width': '0.26', 'outline_width_unit': 'MM', 'style': 'solid'})
layer1.renderer().setSymbol(symbol)
# mostrar as mudancas
layer1.triggerRepaint()
iface.layerTreeView().refreshLayerSymbology(layer1.id())

# Solicita que o usuario digite um municipio
mun = QInputDialog.getText(None, 'Municipio', 'Digite o nome do municipio')

# Criando uma view no banco com o municipio selecionado
cursor.execute("""CREATE OR REPLACE VIEW mun_selec AS SELECT * FROM mun_sirgas WHERE mun_sirgas.nm_municip='%s';""" %(mun[0]))
conn.commit()

# Layer do municipio selecionado
uri.setDataSource("public", "mun_selec", "geom", "", "gid")
layer2 = QgsVectorLayer(uri.uri(), "mun_selec", "postgres")
QgsProject.instance().addMapLayer(layer2)

# Simbologia dos municipios selecionados
symbol2 = QgsFillSymbol.createSimple({'border_width_map_unit_scale': '3x:0,0,0,0,0,0', 'color': '175,179,138,255', 'joinstyle': 'bevel', 'offset': '0,0', 'offset_map_unit_scale': '3x:0,0,0,0,0,0', 'offset_unit': 'MM', 'outline_color': '175,179,138,255', 'outline_style': 'solid', 'outline_width': '0.26', 'outline_width_unit': 'MM', 'style': 'solid'})
layer2.renderer().setSymbol(symbol2)
layer2.triggerRepaint()
iface.layerTreeView().refreshLayerSymbology(layer2.id())

# Selecionando as cidade a até aproximadamente 200 km
cursor.execute("""CREATE OR REPLACE VIEW cidades_selec AS SELECT cidades_novo.* FROM cidades_novo, mun_selec 
WHERE ST_DWithin(cidades_novo.geom, mun_selec.geom, 0.5);""")
conn.commit()

# Layer das cidades selecionadas
uri.setDataSource("public", "cidades_selec", "geom", "", "gid")
layer3 = QgsVectorLayer(uri.uri(), "cidades_selec", "postgres")
QgsProject.instance().addMapLayer(layer3)

# Simbologia das cidades
symbol3 = QgsMarkerSymbol.createSimple({'angle': '0', 'color': '255,35,1,255', 'horizontal_anchor_point': '1', 'joinstyle': 'bevel', 'name': 'circle', 'offset': '0,0', 'offset_map_unit_scale': '3x:0,0,0,0,0,0', 'offset_unit': 'MM', 'outline_color': '88,88,88,255', 'outline_style': 'solid', 'outline_width': '0', 'outline_width_map_unit_scale': '3x:0,0,0,0,0,0', 'outline_width_unit': 'MM', 'scale_method': 'diameter', 'size': '2', 'size_map_unit_scale': '3x:0,0,0,0,0,0', 'size_unit': 'MM', 'vertical_anchor_point': '1'})
layer3.renderer().setSymbol(symbol3)
layer3.triggerRepaint()
iface.layerTreeView().refreshLayerSymbology(layer3.id())

# Zoom nas cidades
canvas.setExtent(layer3.extent())

# Label das cidades
layer3 = QgsProject.instance().mapLayersByName("cidades_selec")[0]
layer_settings = QgsPalLayerSettings()
text_format = QgsTextFormat()
text_format.setFont(QFont("Arial", 12))
text_format.setSize(6)
buffer_settings = QgsTextBufferSettings()
buffer_settings.setEnabled(True)
buffer_settings.setSize(1)
buffer_settings.setColor(QColor("white"))
text_format.setBuffer(buffer_settings)
layer_settings.setFormat(text_format)
layer_settings.fieldName = "nm_nng"
layer_settings.placement = 4
layer_settings.enabled = True
layer_settings = QgsVectorLayerSimpleLabeling(layer_settings)
layer3.setLabelsEnabled(True)
layer3.setLabeling(layer_settings)
layer3.triggerRepaint()

# Criando um arquivo com os dados das cidades
output_file = open('c:/Users/aluno/Documents/DAG2019/PyQGIS/dados_cidades.txt', 'w')
layer3 = iface.activeLayer()
for f in layer3.getFeatures():
    geom = f.geometry()
    line = '%s,  %f,  %f\n' % (f['nm_nng'], geom.asPoint().x(), geom.asPoint().y(), )
    output_file.write(line)
output_file.close()

# Layer da bacia
uri.setDataSource("public", "bacias", "geom", "", "gid")
layer4 = QgsVectorLayer(uri.uri(), "bacias", "postgres")
QgsProject.instance().addMapLayer(layer4)

# Simbologia da bacia
symbol4 = QgsFillSymbol.createSimple({'border_width_map_unit_scale': '3x:0,0,0,0,0,0', 'color': '175,179,138,0', 'joinstyle': 'bevel', 'offset': '0,0', 'offset_map_unit_scale': '3x:0,0,0,0,0,0', 'offset_unit': 'MM', 'outline_color': '145,145,145,255', 'outline_style': 'solid', 'outline_width': '0.26', 'outline_width_unit': 'MM', 'style': 'solid'})
layer4.renderer().setSymbol(symbol4)
layer4.triggerRepaint()
iface.layerTreeView().refreshLayerSymbology(layer4.id())

# Selecionando os municipios dentro da bacia Tibagi
cursor.execute("""CREATE OR REPLACE VIEW tibagi AS SELECT *
FROM bacias WHERE nome = 'Tibagi';""")
conn.commit()

cursor.execute("""CREATE OR REPLACE VIEW mun_tibagi AS 
SELECT ST_Intersection(tibagi.geom, mun_sirgas.geom) AS GEOM, ROW_NUMBER() OVER (ORDER BY mun_sirgas.geom ASC) AS id
FROM mun_sirgas, tibagi;""")
conn.commit()

# Layer dos municipios na bacia
uri.setDataSource("public", "mun_tibagi", "geom", "", "id")
layer5 = QgsVectorLayer(uri.uri(), "mun_tibagi", "postgres")
QgsProject.instance().addMapLayer(layer5)

cursor.close()
conn.close()












