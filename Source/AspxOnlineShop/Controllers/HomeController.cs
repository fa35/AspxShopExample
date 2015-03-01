using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using AspxOnlineShop.Database;
using AspxOnlineShop.Models;

namespace AspxOnlineShop.Controllers
{
    public class HomeController : Controller
    {
        // GET: /Home/Index
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult GetNavigationModel()
        {
            using (var context = new ShopDbDataContext())
            {
                var model = new Dictionary<string, List<string>>();
                foreach (var hauptgruppe in context.Hauptgruppes)
                {
                    var untergruppen = context.Untergruppes
                        .Where(u => u.IdHauptgruppe == hauptgruppe.IdHauptgruppe)
                        .Select(untergruppe => untergruppe.Titel).ToList();

                    model.Add(hauptgruppe.Titel, untergruppen);
                }
                return PartialView("_Navigation", model);
            }
        }


        public ActionResult GetArticleViewModels(int page = 0)
        {
            using (var context = new ShopDbDataContext())
            {
                var ele = context.Artikels.OrderByDescending(a => a.NettoPreis).Skip(page * 10).Take(10);
                var result = new List<ArticleViewModel>();
                foreach (var e in ele)
                {
                    var satz = context.Steuersatzs.FirstOrDefault(s => s.IdSteuersatz == e.IdSteuersatz);
                    if(satz != null)
                        result.Add(new ArticleViewModel(e, satz.Steuersatz1));
                    else
                        result.Add(new ArticleViewModel(e, 19));
                }
                return PartialView("_ArticlesList", result);
            }
        }


        public string GetArticleDescription(string articleId)
        {
            var id = 0;
            int.TryParse(articleId, out id);

            using (var context = new ShopDbDataContext())
            {
                var article = context.Artikels.FirstOrDefault(a => a.IdArtikel == id);
                return article != null ? article.Beschreibung : "";
            }
        }




        public ActionResult LegalNotice()
        {
            return View("LegalNotice");
        }

        public ActionResult GeneralBussinessTerms()
        {
            return View("GeneralBusinessTerms");
        }

        public ActionResult PrivacyPolicy()
        {
            return View("PrivacyPolicy");
        }

    }
}
