<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.4.4-Madeira" simplifyAlgorithm="0" minScale="1e+08" readOnly="0" simplifyMaxScale="1" maxScale="0" labelsEnabled="0" simplifyDrawingTol="1" simplifyDrawingHints="1" styleCategories="AllStyleCategories" simplifyLocal="1" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" type="singleSymbol" enableorderby="0" forceraster="0">
    <symbols>
      <symbol clip_to_extent="1" type="fill" alpha="1" name="0" force_rhr="0">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="175,179,138,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="175,179,138,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory opacity="1" backgroundColor="#ffffff" sizeType="MM" penWidth="0" labelPlacementMethod="XHeight" height="15" sizeScale="3x:0,0,0,0,0,0" enabled="0" scaleDependency="Area" maxScaleDenominator="1e+08" width="15" lineSizeType="MM" penAlpha="255" scaleBasedVisibility="0" lineSizeScale="3x:0,0,0,0,0,0" penColor="#000000" barWidth="5" diagramOrientation="Up" backgroundAlpha="255" minimumSize="0" minScaleDenominator="0" rotationOffset="270">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" zIndex="0" linePlacementFlags="18" showAll="1" priority="0" placement="1" dist="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="gid">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cd_geocodm">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="nm_municip">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="area">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="gid"/>
    <alias index="1" name="" field="id"/>
    <alias index="2" name="" field="cd_geocodm"/>
    <alias index="3" name="" field="nm_municip"/>
    <alias index="4" name="" field="area"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="gid" expression=""/>
    <default applyOnUpdate="0" field="id" expression=""/>
    <default applyOnUpdate="0" field="cd_geocodm" expression=""/>
    <default applyOnUpdate="0" field="nm_municip" expression=""/>
    <default applyOnUpdate="0" field="area" expression=""/>
  </defaults>
  <constraints>
    <constraint notnull_strength="1" unique_strength="1" constraints="3" field="gid" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="id" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="cd_geocodm" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="nm_municip" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="area" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="gid" exp=""/>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="cd_geocodm" exp=""/>
    <constraint desc="" field="nm_municip" exp=""/>
    <constraint desc="" field="area" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" width="-1" name="gid" hidden="0"/>
      <column type="field" width="-1" name="id" hidden="0"/>
      <column type="field" width="-1" name="cd_geocodm" hidden="0"/>
      <column type="field" width="-1" name="nm_municip" hidden="0"/>
      <column type="field" width="-1" name="area" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- código: utf-8 -*-
"""
Formas QGIS podem ter uma função Python que é chamada quando o formulário é
aberto.

Use esta função para adicionar lógica extra para seus formulários.

Digite o nome da função na "função Python Init"
campo.
Um exemplo a seguir:
"""
de qgis.PyQt.QtWidgets importar QWidget

def my_form_open(diálogo, camada, feição):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="area"/>
    <field editable="1" name="cd_geocodm"/>
    <field editable="1" name="gid"/>
    <field editable="1" name="id"/>
    <field editable="1" name="nm_municip"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="area"/>
    <field labelOnTop="0" name="cd_geocodm"/>
    <field labelOnTop="0" name="gid"/>
    <field labelOnTop="0" name="id"/>
    <field labelOnTop="0" name="nm_municip"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>gid</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
