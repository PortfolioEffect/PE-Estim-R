\name{quarticity_rqq}
\alias{quarticity_rqq}
\title{Realized Quadpower Quarticity}
\usage{quarticity_rqq(estimator)
}

\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
}
\description{
Realized Quadpower Quarticity (RQQ) is an asymptotically unbiased estimator of integrated quarticity in the absence of microstructure noise.

}
\details{
- Convergence speed: \bold{\eqn{m^{1/4}}} (m - number of observation)

- Accounts for additive noise: \bold{no}

- Accounts for finite price jumps: \bold{yes}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}
\references{
O. E. Barndorff-Nielsen and N. Shephard. Power and bipower variation with stochastic volatility and jumps. Journal of Financial Econometrics, Vol.2(No.1):1-37,2004
}
\author{Kostin Andrey <andrei.kostin@snowfallsystems.com>}
\seealso{\code{\link{quarticity_rq}} \code{\link{quarticity_mrq}} \code{\link{quarticity_rtq}} \code{\link{quarticity_mtq}}}
\examples{ 
\dontrun{
data(spy.data) 
estimator<-estimator_create(priceData=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s',
				   resultsSamplingInterval = '10s')
util_plot2d(quarticity_rqq(estimator),title="RQQ")
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{quarticity_rqq}