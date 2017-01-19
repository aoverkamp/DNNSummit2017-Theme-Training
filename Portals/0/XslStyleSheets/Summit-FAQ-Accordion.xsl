<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:udt="DotNetNuke/UserDefinedTable" exclude-result-prefixes="udt">
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />
  <!--
  This prefix is used to generate module specific query strings
  Each querystring or form value that starts with udt_{ModuleId}_param 
  will be added as parameter starting with param
  -->
  <xsl:variable name="prefix_param">udt_<xsl:value-of select="//udt:Context/udt:ModuleId" />_param</xsl:variable>

  <xsl:template match="udt:Data" mode="list">
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading_{udt:Question_x0020_ID}">
          <h4 class="panel-title">
            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#{udt:Question_x0020_ID}" aria-expanded="true" aria-controls="{udt:Question_x0020_ID}">
              <xsl:value-of select="udt:Question" disable-output-escaping="yes" />
              <xsl:call-template name="EditLink" />
            </a>
          </h4>
        </div>
        <div id="{udt:Question_x0020_ID}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading_{udt:Question_x0020_ID}">
          <div class="panel-body">
            <xsl:value-of select="udt:Answer" disable-output-escaping="yes" />
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="/udt:UserDefinedTable">
    <xsl:variable name="currentData" select="udt:Data" />
    <xsl:if test="$currentData">
      <xsl:apply-templates select="$currentData" mode="list">
      </xsl:apply-templates>
    </xsl:if>
  </xsl:template>

  <xsl:template name="EditLink">
    <xsl:if test="udt:EditLink">
      <a href="{udt:EditLink}">
        <img border="0" alt="edit" src="{//udt:Context/udt:ApplicationPath}/images/edit.gif" />
      </a>
    </xsl:if>
  </xsl:template>
<udt:template listType="div" delimiter=";" listView="&lt;div class=&quot;panel-group&quot; id=&quot;accordion&quot; role=&quot;tablist&quot; aria-multiselectable=&quot;true&quot;&gt;&#xD;&#xA;  &lt;div class=&quot;panel panel-default&quot;&gt;&#xD;&#xA;    &lt;div class=&quot;panel-heading&quot; role=&quot;tab&quot; id=&quot;[Question ID]&quot;&gt;&#xD;&#xA;      &lt;h4 class=&quot;panel-title&quot;&gt;&#xD;&#xA;        &lt;a role=&quot;button&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#[Question ID]&quot; aria-expanded=&quot;true&quot; aria-controls=&quot;collapseOne&quot;&gt;&#xD;&#xA;          [Question] [UDT:EditLink]&#xD;&#xA;        &lt;/a&gt;&#xD;&#xA;      &lt;/h4&gt;&#xD;&#xA;    &lt;/div&gt;&#xD;&#xA;    &lt;div id=&quot;collapseOne&quot; class=&quot;panel-collapse collapse in&quot; role=&quot;tabpanel&quot; aria-labelledby=&quot;[Question ID]&quot;&gt;&#xD;&#xA;      &lt;div class=&quot;panel-body&quot;&gt;&#xD;&#xA;        [Answer]&#xD;&#xA;      &lt;/div&gt;&#xD;&#xA;    &lt;/div&gt;&#xD;&#xA;  &lt;/div&gt;&#xD;&#xA;&lt;/div&gt;" headerView="" detailView="[UDT:ListView][UDT:EditLink]&#xD;&#xA;&lt;table&gt;&#xD;&#xA;  &lt;tr&gt;&#xD;&#xA;    &lt;td class=&quot;normalBold&quot;&gt;Question&lt;/td&gt;&#xD;&#xA;    &lt;td class=&quot;Normal&quot;&gt;[Question]&lt;/td&gt;&#xD;&#xA;  &lt;/tr&gt;&#xD;&#xA;  &lt;tr&gt;&#xD;&#xA;    &lt;td class=&quot;normalBold&quot;&gt;Answer&lt;/td&gt;&#xD;&#xA;    &lt;td class=&quot;Normal&quot;&gt;[Answer]&lt;/td&gt;&#xD;&#xA;  &lt;/tr&gt;&#xD;&#xA;  &lt;tr&gt;&#xD;&#xA;    &lt;td class=&quot;normalBold&quot;&gt;Question ID&lt;/td&gt;&#xD;&#xA;    &lt;td class=&quot;Normal&quot;&gt;[Question ID]&lt;/td&gt;&#xD;&#xA;  &lt;/tr&gt;&#xD;&#xA;  &lt;tr&gt;&#xD;&#xA;    &lt;td class=&quot;normalBold&quot;&gt;Created by&lt;/td&gt;&#xD;&#xA;    &lt;td class=&quot;Normal&quot;&gt;[Created by]&lt;/td&gt;&#xD;&#xA;  &lt;/tr&gt;&#xD;&#xA;  &lt;tr&gt;&#xD;&#xA;    &lt;td class=&quot;normalBold&quot;&gt;Created at&lt;/td&gt;&#xD;&#xA;    &lt;td class=&quot;Normal&quot;&gt;[Created at_UDT_Value]&lt;/td&gt;&#xD;&#xA;  &lt;/tr&gt;&#xD;&#xA;  &lt;tr&gt;&#xD;&#xA;    &lt;td class=&quot;normalBold&quot;&gt;Changed by&lt;/td&gt;&#xD;&#xA;    &lt;td class=&quot;Normal&quot;&gt;[Changed by]&lt;/td&gt;&#xD;&#xA;  &lt;/tr&gt;&#xD;&#xA;  &lt;tr&gt;&#xD;&#xA;    &lt;td class=&quot;normalBold&quot;&gt;Changed at&lt;/td&gt;&#xD;&#xA;    &lt;td class=&quot;Normal&quot;&gt;[Changed at_UDT_Value]&lt;/td&gt;&#xD;&#xA;  &lt;/tr&gt;&#xD;&#xA;&lt;/table&gt;" trackingEmail="" />
</xsl:stylesheet>