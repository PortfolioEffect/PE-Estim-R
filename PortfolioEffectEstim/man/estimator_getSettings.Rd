\name{estimator_getSettings}
\alias{estimator_getSettings}
\title{Get Estimator Settings}
\usage{estimator_getSettings(estimator)
}
\arguments{
  \item{estimator}{Estimator object created using \link[=estimator_create]{estimator_create( )} function}
}
\value{List with estimator settings.}
\description{Method returns active list of settings of a given estimator.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{ 
dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
estimator<-portfolio_create('AAPL',dateStart,dateEnd)
estimator_settings(estimator,resultsSamplingInterval='60s')
settings=estimator_getSettings(estimator)
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
%%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{estimator_getSettings}