#' Save http text to file
#'
#' @param html_text http text
#' @param filename File name to save
#'
#' @export
#'
#' @examples
#' res <- httr::GET("http://google.com/")
#' html_text <- httr::content(res, "text")
#' save_html(html_text)
#'
save_html <- function (html_text, filename='./page_output/page_output.html'){
  dir.create("page_output", showWarnings = F)

  f <- file(filename, encoding = "UTF-8")
  writeLines(html_text, f)
  close(f)
  invisible(NULL)
}
