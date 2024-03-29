% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ppp.PPPSSR.R
\name{PPPSSR}
\alias{PPPSSR}
\title{PPPSSR}
\description{
Apply the SSR transformation.
}
\details{
Apply the SSR transformation. The SSR transformation replace the 0 by a
random values between 0 and the minimal non zero value (the threshold). The
inverse transform replace all values lower than the threshold by 0. The
threshold used for inverse transform is given by the keyword `isaved`, which
takes the value `Y0` (reference in calibration period), or `X0` (biased in
calibration period), or `X1` (biased in projection period)
}
\examples{
## Start with data
XY = SBCK::dataset_like_tas_pr(2000)
X0 = XY$X0
X1 = XY$X1
Y0 = XY$Y0

## Define the PPP method
ppp = PPPSSR$new( bc_method = CDFt , cols = 2 )

## And now the correction
## Bias correction
ppp$fit(Y0,X0,X1)
Z = ppp$predict(X1,X0)

}
\section{Super class}{
\code{\link[SBCK:PrePostProcessing]{SBCK::PrePostProcessing}} -> \code{PPPSSR}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{Xn}}{[vector] Threshold}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-PPPSSR-new}{\code{PPPSSR$new()}}
\item \href{#method-PPPSSR-transform}{\code{PPPSSR$transform()}}
\item \href{#method-PPPSSR-itransform}{\code{PPPSSR$itransform()}}
\item \href{#method-PPPSSR-clone}{\code{PPPSSR$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="SBCK" data-topic="PrePostProcessing" data-id="fit"><a href='../../SBCK/html/PrePostProcessing.html#method-PrePostProcessing-fit'><code>SBCK::PrePostProcessing$fit()</code></a></span></li>
<li><span class="pkg-link" data-pkg="SBCK" data-topic="PrePostProcessing" data-id="predict"><a href='../../SBCK/html/PrePostProcessing.html#method-PrePostProcessing-predict'><code>SBCK::PrePostProcessing$predict()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PPPSSR-new"></a>}}
\if{latex}{\out{\hypertarget{method-PPPSSR-new}{}}}
\subsection{Method \code{new()}}{
Create a new PPPSSR object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PPPSSR$new(cols = NULL, isaved = "Y0", ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{cols}}{Columns to apply the SSR}

\item{\code{isaved}}{Choose the threshold used for the inverse transform. Can be
"Y0", "X0" and "X1".}

\item{\code{...}}{Others arguments are passed to PrePostProcessing}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new `PPPSSR` object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PPPSSR-transform"></a>}}
\if{latex}{\out{\hypertarget{method-PPPSSR-transform}{}}}
\subsection{Method \code{transform()}}{
Apply the SSR transform, i.e. all 0 are replaced by random values between
0 (excluded) and the minimal non zero value.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PPPSSR$transform(X)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{X}}{Data to transform}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Xt a transformed matrix
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PPPSSR-itransform"></a>}}
\if{latex}{\out{\hypertarget{method-PPPSSR-itransform}{}}}
\subsection{Method \code{itransform()}}{
Apply the inverse SSR transform, i.e. all values lower than the threshold
found in the transform function are replaced by 0.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PPPSSR$itransform(Xt)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{Xt}}{Data to transform}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
X a transformed matrix
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PPPSSR-clone"></a>}}
\if{latex}{\out{\hypertarget{method-PPPSSR-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PPPSSR$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
