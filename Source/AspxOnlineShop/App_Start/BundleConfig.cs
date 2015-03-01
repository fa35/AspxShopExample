using System.Web.Optimization;

namespace AspxOnlineShop
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/others").Include("~/Scripts/knockout-2.2.0.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include("~/Content/style.css"));
            bundles.Add(new StyleBundle("~/bootstrap/css").IncludeDirectory("~/Content/bootstrap/css", "bootstrap*", true));
            bundles.Add(new StyleBundle("~/bootstrap/fonts").IncludeDirectory("~/Content/bootstrap/fonts", "glyphicons*", true));

            bundles.Add(new ScriptBundle("~/bundles/jquery")
                .Include("~/Scripts/jquery/jquery-2.1.3.js")
                .Include("~/Scripts/jquery/jquery-2.1.3.min.js")
                .Include("~/Scripts/jquery/jquery-2.1.3.intellisense.js"));

            bundles.Add(new ScriptBundle("~/bootstrap/scripts")
                .IncludeDirectory("~/Scripts/bootstrap", "bootstrap*")
                .Include("~/Scripts/bootstrap/npm.js"));
        }
    }
}