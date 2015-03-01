<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<System.Collections.Generic.Dictionary<string,System.Collections.Generic.List<string>>>" %>


<% if (Model != null)
   { %>

<ul class="nav navbar">

    <% foreach (var hauptgruppe in Model)
       { %>
            <li><a href="#" onclick="toggleVisibilityUntergruppe(this)"><%=hauptgruppe.Key%></a>

                <ul id="untergruppen_<%=hauptgruppe.Key%>" style="display: none">
                    
                    <% foreach (var untergruppe in hauptgruppe.Value)
                       {
                           %>
                            <li><a href="#"><%=untergruppe%></a></li>
                    <%
                       } %>

                </ul>
            </li>
    <% } %>
</ul>

<% } %>