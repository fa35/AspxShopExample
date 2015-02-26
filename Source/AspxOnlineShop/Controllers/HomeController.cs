using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using AspxOnlineShop.Database;
using AspxOnlineShop.Models;

namespace AspxOnlineShop.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "ViewBag.Message - HomeController - IndexView";
            
            // todo: partial navegation 

            // todo: hole artikel

            var navModel = new NavigationModel();

            var ct = new ShopDbDataContext();

            foreach (var hauptgruppe in ct.Hauptgruppes)
            {
                var content = new Dictionary<string, List<string>>();

                var list = new List<string>(); // untergruppen
                foreach (var untergruppe in ct.Untergruppes.Where(u => u.IdUntergruppe))
                {
                 // todo: eine Untergruppe muss wissen zu welcher hauptgruppe sie gehört   
                }

                content.Add(hauptgruppe.Titel, list);

                navModel.Groups = content;
            }

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "ViewBag.Message - HomeController - AboutView";
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "ViewBag.Message - HomeController - ContactView";
            return View();
        }

    }
}
