<%@ Control language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="JavaScriptLibraryInclude" Src="~/Admin/Skins/JavaScriptLibraryInclude.ascx" %>

<div role="alert" id="alert_<%:ModuleConfiguration.ModuleID%>" class="module-container module-container__dismissible alert alert-dismissible"> 
	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> 
	<div runat="server" id="ContentPane"  class="module-container--body" ></div>
</div>

<dnn:JavaScriptLibraryInclude runat="server" Name="jquery.cookie" />
<dnn:DnnJsInclude runat="server" PathNameAlias="SkinPath" FilePath="js/dismissable.js" ForceProvider="DnnFormBottomProvider" Priority="10000" />
