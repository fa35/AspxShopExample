using System.Collections.Generic;
using AspxOnlineShop.Database;

namespace AspxOnlineShop.Models
{
    public class BillingModel
    {
        public Nutzer User { get; set; }
        public List<ArticleAtCardModel> ArticlesAtCart { get; set; }
    }
}