\name{price}
\alias{price}
\title{Get Asset Price}
\usage{price(estimator)
}
\arguments{
  \item{estimator}{Estimator object created using \link[=estimator_create]{estimator_create( )} function}
}
\value{numeric vector of prices.}
\description{Method returns active list of settings of a given estimator.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{
dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
estimator<-estimator_create('AAPL',dateStart,dateEnd)
estimator_settings(estimator,resultsSamplingInterval='60s')
AAPL=price(estimator)
util_plot2d(AAPL,title='AAPL')
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
%%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{price}