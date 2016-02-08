\name{variance_tsrv}
\alias{variance_tsrv}
\alias{variance_tsrvRolling}
\title{Two Scales Realized Variance}

\usage{variance_tsrv(estimator,K=2)
variance_tsrvRolling(estimator,K=2,wLength=23400)
}

\arguments{
  \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
  \item{K}{number of subsamples in the slow time series (default: 2)}
  \item{wLength}{Length of a rolling window for rolling estimators. Default window length is 23400 (number of seconds in a trading day)}
}
\description{
Two Scale Realized Variance (TSRV) estimates integrated volatility consistently. The idea is to use realized variance type estimators over two time scales to correct the effect of additive market microstructure noise.
}
\details{
- Convergence speed: \bold{\eqn{m^{1/6}}} (m - number of observation)

- Accounts for additive noise: \bold{yes}

- Accounts for finite price jumps:  \bold{no}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}
}

\value{a numeric vector of the same length as input data.
}

\references{
L. Zhang, P. A. Mykland, and Y. Ait-Sahalia, "A tale of two time scales: Determining integrated volatility with noisy high-frequency data," Journal of the American Statistical Association, vol. 100, No. 472, pp. 1394-1411, December 2005.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{variance_rv}} \code{\link{variance_jrmrv}} \code{\link{variance_msrv}} \code{\link{variance_mrv}} \code{\link{variance_uzrv}} \code{\link{variance_krv}}}
\examples{ 
\dontrun{
data(spy.data) 
estimator<-estimator_create(priceData=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s',
				   resultsSamplingInterval = '10s')
util_plot2d(variance_tsrv(estimator),title='TSRV',legend='Simple')+
util_line2d(variance_tsrvRolling(estimator,wLength=3600),legend='Rolling Window')
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{variance_tsrv}