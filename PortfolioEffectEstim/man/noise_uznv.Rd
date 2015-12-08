\name{noise_uznv}
\alias{noise_uznv}
\title{Uncertainty Zones Noise Variance}

\usage{noise_uznv(estimator)
}

\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.} 
}
\description{
Uncertainty Zones Noise Variance (UZNV) based on the concept of uncertainty zones.
}
\value{a numeric vector of the same length as input data.
}
\details{
- Convergence speed: \bold{\eqn{m^{1/2}}} (m - number of observation)

- Accounts for additive noise: \bold{yes}

- Accounts for finite price jumps: \bold{no}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{yes}
}
\references{
Robert, C. Y. and Rosenbaum, M. (2012), Volatility and covariation estimation when microstructure noise and trading times are endogenous. Mathematical Finance, 22
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{noise_rnv}} \code{\link{noise_urnv}} \code{\link{noise_acnv}}}
\examples{ 
\dontrun{ 
data(spy.data) 
estimator<-estimator_create(priceDataIx=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s')
				   resultsSamplingInterval = '10s')
util_plot2d(noise_uznv(estimator),title="UZNV")
}
}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{noise_uznv}