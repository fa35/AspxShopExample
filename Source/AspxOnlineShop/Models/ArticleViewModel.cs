using System;
using AspxOnlineShop.Database;

namespace AspxOnlineShop.Models
{
    public class ArticleViewModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string PicLink { get; set; }
        public decimal Price { get; set; }

        public ArticleViewModel(Artikel artikel, decimal satz)
        {
            Id = artikel.IdArtikel;
            Title = artikel.Titel;
            Description = GetText(artikel.Beschreibung);
            PicLink = artikel.BildLink;
            Price = GetBruttoPreis(artikel.NettoPreis, satz);
        }

        private string GetText(string text)
        {
            return text.Length > 100 ? text.Substring(0, 100) : text;
        }

        private decimal GetBruttoPreis(decimal netto, decimal satz)
        {
            return Math.Round((netto * (decimal)1.19), 2);
        }
    }
}