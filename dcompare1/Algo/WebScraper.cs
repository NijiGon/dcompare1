using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

namespace dcompare1.Algo
{
    public class WebScraper
    {
        public static string ScrapeWebsite(string url)
        {
            if(url != null)
            {
                // Create a WebClient to make the HTTP request
                WebClient client = new WebClient();

                try
                {
                    // Download the HTML content of the web page
                    string html = client.DownloadString(url);

                    // Load the HTML document using HtmlAgilityPack
                    HtmlDocument document = new HtmlDocument();
                    document.LoadHtml(html);

                    // Perform scraping operations on the document
                    // Extract desired information using XPath or other querying methods

                    // Example: Extract the text of a specific HTML element
                    HtmlNode element = document.DocumentNode.SelectSingleNode("//div[@class='price']");
                    string extractedText = element?.InnerText;

                    // Return the extracted information
                    return extractedText;
                }
                catch (WebException ex)
                {
                    // Handle exceptions, e.g., if the web page is not accessible
                    // Log or display an error message
                    return "Error: " + ex.Message;
                }
            }
            return "-";
        }
    }
}