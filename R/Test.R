#' Predict next page model 2
#'
#' @param current_url the url to predict from
#' @export
#' @import markovchain
predictNextPage <- function(current_url){
  out <- try(predict(model$estimate, newdata = current_url), silent = TRUE)
  if(inherits(out, "try-error")){
    out <- "None"
  }
  out
}
