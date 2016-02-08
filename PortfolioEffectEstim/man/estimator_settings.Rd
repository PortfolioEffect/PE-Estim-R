\name{estimator_settings}
\alias{estimator_settings}
\title{Estimator Settings}
\usage{estimator_settings(estimator,...)
}
\arguments{
  \item{estimator}{Estimator object created using \link[=estimator_create]{estimator_create( )} function}
  \item{...}{One of the following estimator settings: \cr
  "jumpsModel" - Used to select jump filtering mode when computing return statistics. Available modes are: "none" - price jumps are not filtered anywhere, "moments" - price jumps are filtered only when computing moments (variance, skewness, kurtosis) and derived metrics, "all" - price jumps are filtered everywhere. Defaults to "moments", which implies that only return moments and related metrics would be using jump-filtered returns in their calculations. \cr
  "resultsSamplingInterval" - Interval to be used for sampling computed results before returning them to the caller. Available interval values are: "Xs" - seconds, "Xm" - minutes, "Xh" - hours, "Xd" - trading days (6.5 hours in a trading day), "Xw" - weeks (5 trading days in 1 week), "Xmo" - month (21 trading day in 1 month), "Xy" - years (256 trading days in 1 year), "last" - last result in a series is returned, "none" - no sampling. Large sampling interval would produce smaller vector of results and would require less time spent on data transfer. Default value of "1s" indicates that data is returned for every second during trading hours. \cr
  "inputSamplingInterval" - Interval to be used as a minimum step for sampling input prices. Available interval values are: "Xs" - seconds, "Xm" - minutes, "Xh" - hours, "Xd" - trading days (6.5 hours in a trading day), "Xw" - weeks (5 trading days in 1 week), "Xmo" - month (21 trading day in 1 month), "Xy" - years (256 trading days in 1 year), "none" - no sampling. Default value is "none", which indicates that no sampling is applied.
 }
}
\value{Void}
\description{Advanced settings that regulate how porfolio metrics are computed, returned and stored.
Default:
		jumpsModel = "moments",
		resultsSamplingInterval = "1s",
		inputSamplingInterval="none"
		}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{ \code{\link{estimator_create}} \code{\link{estimator_getSettings}} }
\examples{
\dontrun{
data(spy.data) 
estimator<-estimator_create(priceData=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s',
				   resultsSamplingInterval = '10s')
util_plot2d(variance_mrv(estimator),title="MRV")
				   
dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
estimator<-estimator_create('AAPL',dateStart,dateEnd)
estimator_settings(estimator,
				   resultsSamplingInterval = '10s')
util_plot2d(variance_mrv(estimator),title="MRV")
}}
\keyword{PortfolioEffectEstim,nonparametric, models}
%%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{estimator_settings}