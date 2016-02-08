\name{variance_uzrv}
\alias{variance_uzrv}
\title{Uncertainty Zones Realized Variance}

\usage{variance_uzrv(estimator)
}

\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
}
\description{
Uncertainty Zones Realized Variance (UZRV) is an integrated variance estimator that accounts for stochastic rounding noise like bid-ask bounce effects.
}
\details{
- Convergence speed: \bold{\eqn{m^{1/2}}} (m - number of observation)

- Accounts for additive noise: \bold{yes}

- Accounts for finite price jumps: \bold{no}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{yes}
}
\value{a numeric vector of the same length as input data.
}
\references{
Robert, C. Y. and Rosenbaum, M. (2012), Volatility and covariation estimation when microstructure noise and trading times are endogenous. Mathematical Finance, 22
}

\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{variance_rv}} \code{\link{variance_tsrv}} \code{\link{variance_msrv}} \code{\link{variance_mrv}} \code{\link{variance_jrmrv}} \code{\link{variance_krv}}}
\examples{ 
\dontrun{
data(spy.data) 
estimator<-estimator_create(priceData=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s',
				   resultsSamplingInterval = '10s')
util_plot2d(variance_uzrv(estimator),title="UZRV")
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{variance_uzrv}