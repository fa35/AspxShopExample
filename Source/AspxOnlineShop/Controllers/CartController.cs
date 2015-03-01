using System.Collections.Generic;
using System.Web.Mvc;
using AspxOnlineShop.Models;

namespace AspxOnlineShop.Controllers
{
    public class CartController : Controller
    {
        // /Cart/Index

        public ActionResult Index()
        {
            return View("Cart",  new List<ArticleAtCardModel>());
        }

        public ActionResult Billing()
        {
            return View("Billing", new BillingModel());
        }
    }

}
