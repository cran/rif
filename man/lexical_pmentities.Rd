% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexical_pmentities.R
\name{lexical_pmentities}
\alias{lexical_pmentities}
\title{Lexical services - break Pubmed documents into entities}
\usage{
lexical_pmentities(pmid, key = NULL, ...)
}
\arguments{
\item{pmid}{One or more PMID's in a vector or list}

\item{key}{(character) API key. required either passed in here or save
as an env var or R option. see \code{\link{rif}} and \code{\link{Startup}}}

\item{...}{Curl options passed on to \code{\link[crul:HttpClient]{crul::HttpClient()}}}
}
\description{
Lexical services - break Pubmed documents into entities
}
\examples{
\dontrun{
out <- literature_retractions()
lexical_pmentities(out[1:3])
}
}
\seealso{
Other lexical: \code{\link{lexical_chunks}},
  \code{\link{lexical_entities}},
  \code{\link{lexical_pmchunks}},
  \code{\link{lexical_pos}},
  \code{\link{lexical_sentences}}
}
