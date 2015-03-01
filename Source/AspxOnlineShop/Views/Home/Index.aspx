<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>


<asp:Content ContentPlaceHolderID="content" runat="server">

    <div id="articleListResult"><%: Html.Partial("_ArticlesList")%></div>

</asp:Content>


<asp:Content ContentPlaceHolderID="navigation" runat="server">

    <div id="ResultContent"><%: Html.Partial("_Navigation")%></div>

</asp:Content>

<asp:Content ContentPlaceHolderID="scripts" runat="server">
    <%: Scripts.Render("~/bundles/jquery") %>
    <script type="text/javascript" src="../../Scripts/custom/articleList.js"></script>
    <script type="text/javascript" src="../../Scripts/custom/navigation.js"></script>

</asp:Content>
