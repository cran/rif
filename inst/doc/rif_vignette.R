## ----echo=FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  warning = FALSE,
  message = FALSE
)

## ----eval=FALSE----------------------------------------------------------
#  install.packages("rif")

## ----eval=FALSE----------------------------------------------------------
#  devtools::install_github("ropensci/rif")

## ------------------------------------------------------------------------
library("rif")

## ------------------------------------------------------------------------
out <- rif_summary("cellular")
head(out$result$federationSummary$results)

## ------------------------------------------------------------------------
rif_query_categories()

## ------------------------------------------------------------------------
vocabulary_search("cell", limit = 3)

## ------------------------------------------------------------------------
text <- "Lorem ipsum inceptos dolor nisi torquent porttitor donec, blandit scelerisque
mattis cras quis mi, aliquam sagittis. Convallis placerat commodo imperdiet varius nunc
tempus urna vitae ultrices tristique eu mi ornare velit donec, posuere laoreet pretium
vitae porta augue porta feugiat in sapien egestas. Quam odio nullam pulvinar litora
curabitur amet lacus sociosqu gravida ligula molestie dui netus fusce bibendum
scelerisque, dictum malesuada proin elit etiam aliquam, mattis euismod donec nisl facilisis."
text <- gsub("\n", "", text)

## ------------------------------------------------------------------------
lexical_sentences(text)

## ------------------------------------------------------------------------
head(lexical_chunks(text))

## ------------------------------------------------------------------------
head(lexical_entities(text))

## ------------------------------------------------------------------------
literature_search(query = "cellular", count = 5)

## ------------------------------------------------------------------------
out <- literature_retractions()
out[1:20]

## ------------------------------------------------------------------------
arts <- literature_pmid(pmid = out[1:2])
lapply(arts, "[[", "title")

## ------------------------------------------------------------------------
out <- federation_search("cellular")
out$query
head(out$result$results)

## ------------------------------------------------------------------------
out <- federation_data(id = "nlx_152871-2")
out$result$result

