<%@ Page Title="Cart" Language="C#" Inherits="System.Web.Mvc.ViewPage<System.Collections.Generic.List<AspxOnlineShop.Models.ArticleAtCardModel>>" MasterPageFile="~/Views/Shared/Site.Master" %>

<asp:Content runat="server" ID="Title" ContentPlaceHolderID="TitleContent"></asp:Content>

<asp:Content runat="server" ID="Main" ContentPlaceHolderID="MainContent">
    
    <h2>Artikel im Warenkorb</h2>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Bezeichnung</th>
                <th>Menge</th>
                <th>Einzelpreis</th>
                <th>Gesamtpreis</th>
            </tr>
        </thead>
        <tbody>
            <% foreach (var article in Model)
               { %>
                    <tr>
                        <td><%=article.Name %></td>
                        <td><%=article.Amount%></td>
                        <td><%=article.Price%></td>
                        <td><%=article.TotalPrice%></td>
                    </tr>
            <% } %>
        </tbody>
    </table>

</asp:Content>

<asp:Content runat="server" ID="ScriptsSection" ContentPlaceHolderID="ScriptsSection"></asp:Content>
