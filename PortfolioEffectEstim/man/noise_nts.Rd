\name{noise_nts}
\alias{noise_nts}
\title{Noise to Signal Ratio}
\usage{noise_nts(estimator)
}
\arguments{
   \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.} 
}
\description{
	Noise to Signal Ratio is a measure that compares the level of  noise to the level of a desired signal.
}
\value{a numeric vector of the same length as data.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{ 
\dontrun{ 
data(spy.data) 
estimator<-estimator_create(priceDataIx=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s')
				   resultsSamplingInterval = '10s')
util_plot2d(noise_nts(estimator),title="NTS")
}
}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{noise_nts}