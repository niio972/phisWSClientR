% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getToken.R
\name{getTokenResponseWS}
\alias{getTokenResponseWS}
\title{getTokenResponseWS}
\usage{
getTokenResponseWS(resource, paramPath = NULL, attributes,
  type = "application/json")
}
\arguments{
\item{resource}{character, an resource from the web service api}

\item{attributes}{a list containing a login and a password}
}
\value{
responseObject an object HTTP httr
}
\description{
Create a token to call the webservice for authentication and
returns a formatted response of WSResponse class.
}
\details{
This function is OK for the first version of the web service
 (a GET call with a visible request)
}
\seealso{
http://docs.brapi.apiary.io/#introduction/url-structure
}
\keyword{internal}
