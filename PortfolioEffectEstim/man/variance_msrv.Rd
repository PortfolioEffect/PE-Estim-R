\name{variance_msrv}
\alias{variance_msrv}
\alias{variance_msrvRolling}
\title{Multiple Scales Realized Variance}
\usage{variance_msrv(estimator,K=2,J=1)
variance_msrvRolling(estimator,K=2,J=1,wLength=23400)
}
\arguments{
  \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
  \item{K}{number of subsamples in the slow time series (default: 2)}
  \item{J}{number of subsamples in the fast time series (default: 1)}
  \item{wLength}{Length of a rolling window for rolling estimators. Default window length is 23400 (number of seconds in a trading day)}
}
\description{
Multiple Series Realized Variance (MSRV) is a generalization of the TSRV estimator of integrated volatility. It uses multiple time scales to account for the effects of additive market microstructure noise.

}
\details{
- Convergence speed: \bold{\eqn{m^{1/4}}} (m - number of observation)

- Accounts for additive noise:  \bold{yes}

- Accounts for finite price jumps:  \bold{no}

- Accounts for time dependence in noise: \bold{yes}

- Accounts for endogenous effects in noise: \bold{no}
}

\value{a numeric vector of the same length as input data.
}
\references{
Zhang, L. (2006). Efficient estimation of stochastic volatility using noisy observations: A multiscale approach.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{variance_rv}} \code{\link{variance_tsrv}} \code{\link{variance_jrmrv}} \code{\link{variance_mrv}} \code{\link{variance_uzrv}} \code{\link{variance_krv}}}
\examples{ 
\dontrun{
data(spy.data) 
estimator<-estimator_create(priceData=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s',
				   resultsSamplingInterval = '10s')
util_plot2d(variance_msrv(estimator),title='MSRV',legend='Simple')+
util_line2d(variance_msrvRolling(estimator,wLength=3600),legend='Rolling Window')
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{variance_msrv}