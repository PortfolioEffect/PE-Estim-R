\name{quarticity_mrq}
\alias{quarticity_mrq}
\title{Modulated Realized Quarticity}
\usage{quarticity_mrq(estimator)
}
\arguments{
  \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
}
\description{
Modulated Realized Quarticity (MRQ) is an asymptotically unbiased estimator of integrated quarticity in the presence of microstructure noise.
 
}
\details{
- Convergence speed: \bold{\eqn{m^{1/4}}} (m - number of observation)

- Accounts for additive noise: \bold{yes}

- Accounts for finite price jumps: \bold{yes}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}
\references{
M. Podolskij and M. Vetter, "Estimation of volatility functionals in the simultaneous presence of microstructure noise and jumps," Bernoulli, vol. 15, No. 3, pp. 634-658, 2009
}
\value{a numeric vector of the same length as input data.
}
\author{Kostin Andrey <andrei.kostin@snowfallsystems.com>}
\seealso{\code{\link{quarticity_rq}} \code{\link{quarticity_rqq}} \code{\link{quarticity_rtq}} \code{\link{quarticity_mtq}}}
\examples{ 
\dontrun{ 
data(spy.data) 
estimator<-estimator_create(priceDataIx=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s')
				   resultsSamplingInterval = '10s')
util_plot2d(quarticity_mrq(estimator),title="MRQ")
}
}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{quarticity_mrq}
