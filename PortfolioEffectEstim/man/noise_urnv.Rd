\name{noise_urnv}
\alias{noise_urnv}
\title{Unbiased Rescaled Noise Variance}

\usage{noise_urnv(estimator)
}

\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.} 
}
\description{
Unbiased Rescaled Noise Variance (URNV) corrects for a bias of Rescaled Noise Variance.
}
\details{
- Convergence speed: \bold{\eqn{m^{1/2}}} (m - number of observation)

- Accounts for additive noise: \bold{yes}

- Accounts for finite price jumps: \bold{no}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}
\value{a numeric vector of the same length as input data.
}
\references{
L. Zhang, P. A. Mykland, and Y. Ait-Sahalia, "A tale of two time scales: Determining integrated volatility with noisy high-frequency data," Journal of the American Statistical Association, vol. 100, No. 472, pp. 1394-1411, December 2005.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{noise_rnv}} \code{\link{noise_acnv}} \code{\link{noise_uznv}}}
\examples{ 
\dontrun{ 
data(spy.data) 
estimator<-estimator_create(priceDataIx=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s')
				   resultsSamplingInterval = '10s')
util_plot2d(noise_urnv(estimator),title="URNV")
}
}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{noise_urnv}