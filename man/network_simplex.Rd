% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{network_simplex}
\alias{network_simplex}
\title{network_simplex}
\usage{
network_simplex(X,Y,D)
}
\arguments{
\item{X}{[Rcpp::NumericVector] Source}

\item{Y}{[Rcpp::NumericVector] Target}

\item{D}{[Rcpp::NumericMatrix] Cost}
}
\value{
[Rcpp::List] List containing the plan and if optim is a success
}
\description{
Function to solve network simplex problem
}
