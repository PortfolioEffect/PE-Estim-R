\name{estimator_create}
\alias{estimator_create}
\title{Creates new estimator}
\usage{estimator_create(asset, fromTime, toTime, priceData)
}
\arguments{
  \item{asset}{Unique identifier of the instrument}
  \item{fromTime}{Start of market data interval in "yyyy-MM-dd hh:mm:ss" format when internal market data is used. 
   Offset from last available date/time by N days is denoted as "t-N" (e.g. "t-7" denotes offset by 7 days).}
  \item{toTime}{End of market data interval in "yyyy-MM-dd hh:mm:ss" format when internal market data is used.
   Offset from last available date/time by N days is denoted as "t-N" (e.g. "t-7" denotes offset by 7 days).}
  \item{priceData}{Vector of (time, price) observations for asset when external market data is used.  }
}
\value{estimator object
}
\description{Creates new empty estimator object.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{estimator_settings}}}
\examples{
\dontrun{
data(goog.data) 
estimator<-estimator_create(priceData=goog.data)
estimator_settings(estimator,resultsSamplingInterval='60s')
util_plot2d(variance_rv(estimator),title="RV")


estimator<-estimator_create(asset='AAPL',fromTime="2014-09-01 09:00:00", 
toTime="2014-09-14 16:00:00")
estimator_settings(estimator,resultsSamplingInterval='60s')
util_plot2d(variance_tsrv(estimator,K=2),title="TSRV")

estimator<-estimator_create(asset='GOOG',fromTime="t-2", toTime="t")
estimator_settings(estimator,resultsSamplingInterval='60s')
util_plot2d(variance_mrv(estimator),title="MRV")
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
%%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{estimator_create}