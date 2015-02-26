<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="NotificationArea" runat="server">
    <section><%: Html.Partial("_Notification")%></section>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>We suggest the following:</h3>

    <ol>
        <li>item 1</li>
        <li>item 2</li>
        <li>item 3</li>
    </ol>
</asp:Content>
