% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasets.multivariates.R
\name{dataset_like_tas_pr}
\alias{dataset_like_tas_pr}
\title{dataset_like_tas_pr}
\usage{
dataset_like_tas_pr(n_samples)
}
\arguments{
\item{n_samples}{[integer] numbers of samples drawn}
}
\value{
[list] a list containing X0, X1 (biased in calibration/projection)
        and Y0 (reference in calibration)
}
\description{
Generate a testing dataset similar to temperature and precipitation.
The method is the following:
- Data from a multivariate normal law (dim = 2) are drawn
- The quantile mapping is used to map the last column into the exponential law
- Values lower than a fixed quantile are replaced by 0
}
\examples{
XY = SBCK::dataset_like_tas_pr(2000)
XY$X0 ## Biased in calibration period
XY$Y0 ## Reference in calibration period
XY$X1 ## Biased in projection period

}
