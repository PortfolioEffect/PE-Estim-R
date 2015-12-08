\name{quarticity_rtq}
\alias{quarticity_rtq}
\title{Realized Tripower Quarticity}
\usage{quarticity_rtq(estimator)
}
\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
}
\description{
Realized Tri-power Quarticity (RTQ) is an asymptotically unbiased estimator of integrated quarticity in the absence of microstructure noise.

}
\details{
- Convergence speed: \bold{\eqn{m^{1/4}}} (m - number of observation)

- Accounts for additive noise: \bold{no}

- Accounts for finite price jumps: \bold{yes}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}
\references{
Andersen, T. G., Bollerslev, T., and Diebold, F. X. (2005),"Roughing it Up: Including Jump Components in the Measurement, Modeling and Forecasting of Return Volatility" Tech. rep., NBER
}
\value{a numeric vector of the same length as input data.
}
\author{Kostin Andrey <andrei.kostin@snowfallsystems.com>}
\seealso{\code{\link{quarticity_rq}} \code{\link{quarticity_rqq}} \code{\link{quarticity_mrq}} \code{\link{quarticity_mtq}}}
\examples{ 
\dontrun{ 
data(spy.data) 
estimator<-estimator_create(priceDataIx=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s')
				   resultsSamplingInterval = '10s')
util_plot2d(quarticity_rtq(estimator),title="RTQ")
}
}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{quarticity_rtq}