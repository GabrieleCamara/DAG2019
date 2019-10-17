<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="1" version="3.4.4-Madeira" simplifyAlgorithm="0" readOnly="0" minScale="1e+08" maxScale="0" hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" simplifyLocal="1" simplifyMaxScale="1" labelsEnabled="0" simplifyDrawingTol="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" symbollevels="0" forceraster="0" type="singleSymbol">
    <symbols>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" alpha="1" name="0">
        <layer enabled="1" locked="0" pass="0" class="SimpleFill">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="91,138,139,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="145,145,145,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.3" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="no" k="style"/>
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
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory diagramOrientation="Up" barWidth="5" opacity="1" height="15" penColor="#000000" scaleDependency="Area" width="15" scaleBasedVisibility="0" rotationOffset="270" backgroundAlpha="255" lineSizeType="MM" penWidth="0" maxScaleDenominator="1e+08" minimumSize="0" sizeType="MM" labelPlacementMethod="XHeight" lineSizeScale="3x:0,0,0,0,0,0" enabled="0" backgroundColor="#ffffff" minScaleDenominator="0" sizeScale="3x:0,0,0,0,0,0" penAlpha="255">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" dist="0" obstacle="0" zIndex="0" showAll="1" placement="1" priority="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="OBJECTID">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NOME">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Shape_Leng">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Shape_Area">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AREA_KM2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Area_nova">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="OBJECTID" name=""/>
    <alias index="1" field="NOME" name=""/>
    <alias index="2" field="Shape_Leng" name=""/>
    <alias index="3" field="Shape_Area" name=""/>
    <alias index="4" field="AREA_KM2" name=""/>
    <alias index="5" field="Area_nova" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="OBJECTID" applyOnUpdate="0"/>
    <default expression="" field="NOME" applyOnUpdate="0"/>
    <default expression="" field="Shape_Leng" applyOnUpdate="0"/>
    <default expression="" field="Shape_Area" applyOnUpdate="0"/>
    <default expression="" field="AREA_KM2" applyOnUpdate="0"/>
    <default expression="" field="Area_nova" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="OBJECTID" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="NOME" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="Shape_Leng" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="Shape_Area" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="AREA_KM2" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" unique_strength="0" field="Area_nova" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="OBJECTID" desc="" exp=""/>
    <constraint field="NOME" desc="" exp=""/>
    <constraint field="Shape_Leng" desc="" exp=""/>
    <constraint field="Shape_Area" desc="" exp=""/>
    <constraint field="AREA_KM2" desc="" exp=""/>
    <constraint field="Area_nova" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" width="-1" type="field" name="OBJECTID"/>
      <column hidden="0" width="-1" type="field" name="NOME"/>
      <column hidden="0" width="-1" type="field" name="Shape_Leng"/>
      <column hidden="0" width="-1" type="field" name="Shape_Area"/>
      <column hidden="0" width="-1" type="field" name="AREA_KM2"/>
      <column hidden="0" width="-1" type="field" name="Area_nova"/>
      <column hidden="1" width="-1" type="actions"/>
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
    <field editable="1" name="AREA_KM2"/>
    <field editable="1" name="Area_nova"/>
    <field editable="1" name="NOME"/>
    <field editable="1" name="OBJECTID"/>
    <field editable="1" name="Shape_Area"/>
    <field editable="1" name="Shape_Leng"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="AREA_KM2"/>
    <field labelOnTop="0" name="Area_nova"/>
    <field labelOnTop="0" name="NOME"/>
    <field labelOnTop="0" name="OBJECTID"/>
    <field labelOnTop="0" name="Shape_Area"/>
    <field labelOnTop="0" name="Shape_Leng"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>OBJECTID</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
