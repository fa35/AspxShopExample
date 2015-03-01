<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<System.Collections.Generic.List<AspxOnlineShop.Models.ArticleViewModel>>" %>


<%--<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.5/css/jquery.dataTables.min.css"/>
<script type="text/javascript" src="//cdn.datatables.net/1.10.5/js/jquery.dataTables.min.js"></script>--%>

<%
    if (Model != null)
    {
%>

<table class="table table-striped table-hover table-condensed articleslist">

    <thead>
        <tr>
            <th style="width: 100px">Bild</th>
            <th style="width: 200px">Titel</th>
            <th>Beschreibung</th>
            <th style="width: 70px">Preis</th>
        </tr>
    </thead>

    <tbody>

        <% foreach (var article in Model)
           { %>
                <tr>
                    <td><img src="<%=article.PicLink%>" width="70" alt="pic" class="img-rounded" /></td>

                    <td><%=article.Title%></td>

                    <td id="<%=article.Id%>">
                        <%=article.Description%>
                        <a href="#" onclick="showArticleDescription(<%=article.Id%>)"><strong>...</strong></a>
                    </td>

                    <td><%=article.Price%> €</td>
                </tr>
        <% } %>
    </tbody>

</table>

<ul class="pagination">
    <li class="active"><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
</ul>

<ul class="pager">
    <li class="previous"><a href="#">Previous</a></li>
    <li class="next"><a href="#">Next</a></li>
</ul>

<% } %>