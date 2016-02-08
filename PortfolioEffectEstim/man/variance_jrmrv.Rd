\name{variance_jrmrv}
\alias{variance_jrmrv}
\alias{variance_jrmrvRolling}
\title{Jump Robust Modulated Realized Variance}
\usage{variance_jrmrv(estimator)
variance_jrmrvRolling(estimator,wLength=23400)
}
\arguments{
  \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
  \item{wLength}{Length of a rolling window for rolling estimators. Default window length is 23400 (number of seconds in a trading day)}
}
\description{
Jump Robust Modulated Realized Variance (JRMRV) is an integrated variance estimator introduced by Podolskij and Vetter. It is based on the concept of multipower variation, is robust to finite activity jumps and assumes additive noise structure.

}
\details{
Converges to integrated variance

- Convergence speed: \bold{\eqn{m^{1/6}}} (m - number of observation)

- Accounts for additive noise:  \bold{yes}

- Accounts for finite price jumps:  \bold{yes}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}

\value{a numeric vector of the same length as input data.
}

\references{
M. Podolskij and M. Vetter, "Estimation of volatility functionals in the simultaneous presence of microstructure noise and jumps," Bernoulli, vol. 15, No. 3, pp. 634-658, 2009.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{variance_rv}} \code{\link{variance_tsrv}} \code{\link{variance_msrv}} \code{\link{variance_mrv}} \code{\link{variance_uzrv}} \code{\link{variance_krv}}}
\examples{ 
\dontrun{
data(spy.data) 
estimator<-estimator_create(priceData=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s',
				   resultsSamplingInterval = '10s')
util_plot2d(variance_jrmrv(estimator),title='JRMRV',legend='Simple')+
util_line2d(variance_jrmrvRolling(estimator,wLength=3600),legend='Rolling Window')
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{variance_jrmrv}