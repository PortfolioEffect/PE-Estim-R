\name{noise_rnv}
\alias{noise_rnv}
\title{Rescaled Noise Variance}
\usage{noise_rnv(estimator)
}
\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
}
\description{
	Rescaled Noise Variance (RNV) is an asymptotically consistent estimator of noise volatility when daling with additive microstructure noise. It is derived based on Realized Variance property of convergence to noise variance wih the increase of sampling frequency.
	
}
\details{
- Convergence speed: \bold{\eqn{m^{1/2}}} (m - number of observation)

- Accounts for additive noise: \bold{yes}

- Accounts for finite price jumps: \bold{no}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}
\value{a numeric vector of the same length as data.
}
\references{
Bandi, F. M., and J. R. Russell, 2004, "Microstructure Noise, Realized Variance, and Optimal Sampling" manuscript GSB, The University of Chicago.
L. Zhang, P. A. Mykland, and Y. Ait-Sahalia, "A tale of two time scales: Determining integrated volatility with noisy high-frequency data," Journal of the American Statistical Association, vol. 100, No. 472, pp. 1394-1411, December 2005.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{noise_acnv}} \code{\link{noise_urnv}} \code{\link{noise_uznv}}}
\examples{ 
\dontrun{
data(spy.data) 
estimator<-estimator_create(priceData=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s',
				   resultsSamplingInterval = '10s')
util_plot2d(noise_rnv(estimator),title="RNV")
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{noise_rnv}