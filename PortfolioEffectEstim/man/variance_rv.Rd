\name{variance_rv}
\alias{variance_rv}
\alias{variance_rvRolling}
\title{Realized Variance}
\usage{variance_rv(estimator)
variance_rvRolling(estimator,wLength=23400)

}

\arguments{
  \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
  \item{wLength}{Length of a rolling window for rolling estimators. Default window length is 23400 (number of seconds in a trading day)}
}
\description{
Realized Variance (RV) is the sum of squared returns. For instance the RV can be the sum of squared daily returns for a particular month, which would yield a measure of price variation over this month. This variance estimator does not account for market microstructure effects.

}
\details{
- Convergence speed: \bold{\eqn{m^{1/2}}} (m - number of observation)

- Accounts for additive noise: \bold{no}

- Accounts for finite price jumps: \bold{no}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}

\value{A vector of integrated variance estimates
}
\references{
T. G. Andersen, T. Bollerslev, F. X. Diebold, and P. Labys. "The distribution of realized exchange rate volatility". Journal of American Statistical Association, 96(453):4255, March 2001.
Barndorff-Nielsen, O. E. and N. Shephard (2002). Econometric analysis of realized volatility and its use in estimating stochastic volatility models. Journal of the Royal Statistical Society: Series B 64 (2), 253-280.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{variance_jrmrv}} \code{\link{variance_tsrv}} \code{\link{variance_msrv}} \code{\link{variance_mrv}} \code{\link{variance_uzrv}} \code{\link{variance_krv}}}
\examples{ 
\dontrun{ 
data(spy.data) 
estimator<-estimator_create(priceDataIx=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s')
				   resultsSamplingInterval = '10s')
util_plot2d(variance_rv(estimator),title='RV',legend='Simple')+
util_line2d(variance_rvRolling(estimator,wLength=3600),legend='Rolling Window')
}
}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{variance_rv}