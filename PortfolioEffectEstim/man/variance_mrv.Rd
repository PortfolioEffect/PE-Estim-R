\name{variance_mrv}
\alias{variance_mrv}
\alias{variance_mrvRolling}
\title{Modulated Realized Variance}
\usage{variance_mrv(estimator)
variance_mrvRolling(estimator,wLength=23400)
}
\arguments{
  \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
  \item{wLength}{Length of a rolling window for rolling estimators. Default window length is 23400 (number of seconds in a trading day)}
}
\description{
Modulated Realized Variance (MRV) is an integrated variance estimator introduced by Podolskij and Vetter. It is based on the concept of multipower variation and assumes additive noise structure.

}
\details{
- Convergence speed: \bold{\eqn{m^{1/4}}} (m - number of observation)

- Accounts for additive noise:  \bold{yes}

- Accounts for finite price jumps:  \bold{no}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}

\value{a numeric vector of the same length as input data.
}
\references{
M. Podolskij and M. Vetter, "Estimation of volatility functionals in the simultaneous presence of microstructure noise and jumps," Bernoulli, vol. 15, No. 3, pp. 634-658, 2009.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{variance_rv}} \code{\link{variance_tsrv}} \code{\link{variance_msrv}} \code{\link{variance_jrmrv}} \code{\link{variance_uzrv}} \code{\link{variance_krv}}}
\examples{ 
\dontrun{
data(spy.data) 
estimator<-estimator_create(priceData=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s',
				   resultsSamplingInterval = '10s')
util_plot2d(variance_mrv(estimator),title='MRV',legend='Simple')+
util_line2d(variance_mrvRolling(estimator,wLength=3600),legend='Rolling Window')
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{variance_mrv}