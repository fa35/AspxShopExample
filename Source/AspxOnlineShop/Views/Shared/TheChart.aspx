<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<AspxOnlineShop.Controllers.HomeController.Quelle[]>" %>

<%@ Import Namespace="Newtonsoft.Json" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TheChart
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%--    <%= Html.Raw(JsonConvert.SerializeObject(Model.ToArray())) %>--%>
    
    

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">

        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawVisualization);

        function drawVisualization() {

            //Some raw data (not necessarily accurate)
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Datum');
            data.addColumn('number', 'Meldungen');


            var dates = <% = JsonConvert.SerializeObject(Model) %>;

            data.rows = dates;

            //data.addRows([
            //  ['10.02.2015', 310],
            //  ['11.02.2015', 144],
            //  ['12.02.2015', 241],
            //  ['13.02.2015', 521],
            //  ['14.02.2015', 427],
            //  ['15.02.2015', 310],
            //  ['16.02.2015', 440],
            //  ['17.02.2015', 421],
            //  ['18.02.2015', 571]
            //]);


            var options = {
                title: 'Meldungen im Verlauf von Quelle: Quelle',
                vAxis: { title: "Meldungen" },
                hAxis: { title: "Tag" },
                seriesType: "bars",
                series: { 5: { type: "line" } }
            };

            var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>

    <div id="chart_div" style="width: 900px; height: 500px;"></div>

    }

</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="NotificationArea" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
