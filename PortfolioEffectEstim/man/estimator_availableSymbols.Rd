\name{estimator_availableSymbols}
\alias{estimator_availableSymbols}
\title{Get All Symbol List}
\usage{estimator_availableSymbols(estimator)
}
\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.} 
}
\description{
Returns a list of symbols .
}
\value{List of symbols, exchanges and descriptions
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{
estimator<-estimator_create(asset='AAPL',fromTime="2014-09-01 09:00:00", 
toTime="2014-09-14 16:00:00")
list=estimator_availableSymbols(estimator)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{estimator_availableSymbols}