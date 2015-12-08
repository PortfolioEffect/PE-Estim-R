\name{noise_acnv}
\alias{noise_acnv}
\title{Autocovariance Noise Variance}
\usage{noise_acnv(estimator)
}
\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
}
\description{
Autocovariance Noise Variance (ACNV) estimates the noise variance based on the autocovariance of returns, rather than the Rescaled Noise Variance (RNV). It is generally preferred to RNV as it leads to a reduction in MSE and is robust to the presence of rare jumps. Also, this approach can be extended straightforwardly to estimate the parameters of higher order noise dependence.

}
\details{
- Convergence speed: \bold{\eqn{m^{1/2}}} (m - number of observation)

- Accounts for additive noise: \bold{yes}

- Accounts for finite price jumps: \bold{yes}

- Accounts for time dependence in noise: \bold{yes}

- Accounts for endogenous effects in noise: \bold{no}

}
\value{a numeric vector of the same length as data.
}
\references{
R. C. Oomen, "Comment on realized variance and market microstructure noise by peter r. hansen and asger lunde," pp. 1-15, 23 September, 2005.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{noise_rnv}} \code{\link{noise_urnv}} \code{\link{noise_uznv}}}
\examples{ 
\dontrun{ 
data(spy.data) 
estimator<-estimator_create(priceDataIx=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s')
				   resultsSamplingInterval = '10s')
util_plot2d(noise_acnv(estimator),title="ACNV")
}
}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{noise_acnv}