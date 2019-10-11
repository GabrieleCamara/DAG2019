from qgis.PyQt import *

uri = QgsDataSourceUri()
# Defina o nome do servidor, a porta, o nome do banco de dados, o usuário e a senha
uri.setConnection("localhost", "5432", "pyqgis", "user", "user")
# Defina o esquema, o nome da tabela, a coluna de geometria, e opcionalmente uma cláusula de
# filtro WHERE 
uri.setDataSource("public", "mun_sirgas", "geom", "")
layer1 = QgsVectorLayer(uri.uri(), "mun_sirgas", "postgres")
# Quando é consulta
uri.setDataSource("public", "mun_sirgas", "geom", "", "gid")
# Adicionando layer ao prj
QgsProject.instance().addMapLayer(layer1)

# Mudar a simbologia do layer1
# Mostra as propriedades da simbologia da camada
#renderer = layer1.renderer()
#print(layer1.renderer().symbol().symbolLayers()[0].properties())

symbol = QgsFillSymbol.createSimple({'border_width_map_unit_scale': '3x:0,0,0,0,0,0', 'color': '244,226,196,255', 'joinstyle': 'bevel', 'offset': '0,0', 'offset_map_unit_scale': '3x:0,0,0,0,0,0', 'offset_unit': 'MM', 'outline_color': '175,179,138,255', 'outline_style': 'solid', 'outline_width': '0.26', 'outline_width_unit': 'MM', 'style': 'solid'})
layer1.renderer().setSymbol(symbol)
# mostrar as mudancas
layer1.triggerRepaint()

# Solicita que o usuario digite um municipio
mun = QInputDialog.getText(None, 'Municipio', 'Digite o nome do municipio')
mun[0]
# print(mun)

# Selecionar no mapa o municipio digitado
layer1 = iface.activeLayer()
feature = layer1.getFeatures('mun') 
print(feature)
#layer1.selectByExpression('"nm_municip"=\'%s\', %mun', QgsVectorLayer.SetSelection)
    


