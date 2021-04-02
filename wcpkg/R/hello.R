
#' @title Table Crawler.
#' @description  Crawl all the tables as dataframe from the webpage.
#' @details Input webpage address, return all the table as a list inside the webpage.
#'
#' @param address A webpage address.
#'
#' @return A list of dataframe.
#' @export
#' @import XML RCurl
#' @examples
#' get_table("https://en.wanweibaike.com/wiki-List%20of%20ambassadors%20to%20Canada")
#' get_table("https://en.wanweibaike.com/wiki-List_of_House_members_of_the_42nd_Parliament_of_Canada")
#' get_table("https://en.wanweibaike.com/wiki-List%20of%20largest%20cities")
get_table <- function(address) {
  url = RCurl::getURL(address)
  XML::readHTMLTable(url)
}






#' @title Text Crawler.
#' @description  Crawl all the text as a string from the webpage.
#' @details Input webpage address, return all the text inside the webpage.
#'
#' @param address A webpage address.
#'
#' @return A string of text.
#' @export
#' @import rvest RCurl
#' @examples
#' get_text("https://en.wanweibaike.com/wiki-Canada.")
#' get_text("https://en.wanweibaike.com/wiki-Pacific_Ocean")
#' get_text("https://en.wanweibaike.com/wiki-Parliament_of_the_United_Kingdom")
get_text <- function(address) {
  url = RCurl::getURL(address)
  html = rvest::read_html(url)
  rvest::html_text(html)
}






#' @title Image Crawler.
#' @description  Crawl all the image address as a list of string from the webpage.
#' @details Input webpage address, return all the image address inside the webpage.
#'
#' @param address A webpage address.
#'
#' @return A list of image address.
#' @export
#' @import rvest RCurl
#' @examples
#' get_image("https://en.wanweibaike.com/wiki-University%20of%20Toronto")
#' get_image("https://en.wanweibaike.com/wiki-Toronto")
#' get_image("https://en.wanweibaike.com/wiki-list%20of%20largest%20cities")
get_image <- function(address) {

  url = RCurl::getURL(address)
  html = rvest::read_html(url)
  nodes = rvest::html_nodes(html, "img")
  rvest::html_attr(nodes,"src")
}


#' Title Hello
#'
#' @return string Hello, World!
#' @export
#'
#' @examples
#' hello()
hello <- function() {
  print("Hello, World!")
}

