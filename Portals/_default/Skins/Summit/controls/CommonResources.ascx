<%@ Import Namespace="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JavaScriptLibraryInclude" Src="~/Admin/Skins/JavaScriptLibraryInclude.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:Meta runat="server" name="viewport" content="width=device-width, initial-scale=1.0" />

<dnn:DnnCssInclude runat="server" FilePath="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i|Open+Sans:400,300,600,800,700,400italic,600italic,700italic,800italic,300italic" Priority="0"/>
<dnn:DnnCssInclude runat="server" FilePath="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" Priority="<%#FileOrder.Css.DefaultCss + 1%>" />

<dnn:JavaScriptLibraryInclude runat="server" Name="bootstrap" />
<dnn:JavaScriptLibraryInclude runat="server" Name="html5shiv" />
<dnn:JavaScriptLibraryInclude runat="server" Name="respond-minmax" />
<dnn:DnnJsInclude runat="server" FilePath="https://use.fontawesome.com/ea9a2a440b.js" />