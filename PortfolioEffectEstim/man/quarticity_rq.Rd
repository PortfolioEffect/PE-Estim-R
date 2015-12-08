\name{quarticity_rq}
\alias{quarticity_rq}
\title{Realized Quarticity}
\usage{quarticity_rq(estimator)
}
\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
}
\description{
Realized Quarticity (RQ) is an asymptotically unbiased estimator of integrated quarticity in the absence of microstructure noise.

}
\details{
- Convergence speed: \bold{\eqn{m^{1/4}}} (m - number of observation)

- Accounts for additive noise: \bold{no}

- Accounts for finite price jumps: \bold{no}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}
\value{a numeric vector of the same length as input data.
}
\references{
Barndorff-Nielsen, O. E. and N. Shephard (2002). Econometric analysis of realized volatility and its use in estimating stochastic volatility models. Journal of the Royal Statistical Society: Series B 64 (2), 253-280.
}
\author{Kostin Andrey <andrei.kostin@snowfallsystems.com>}
\seealso{\code{\link{quarticity_mrq}} \code{\link{quarticity_rqq}} \code{\link{quarticity_rtq}} \code{\link{quarticity_mtq}}}
\examples{ 
\dontrun{ 
data(spy.data) 
estimator<-estimator_create(priceDataIx=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s')
				   resultsSamplingInterval = '10s')
util_plot2d(quarticity_rq(estimator),title="RQ")
}
}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{quarticity_rq}
