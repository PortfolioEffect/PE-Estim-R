\name{variance_krv}
\alias{variance_krv}
\alias{variance_krvRolling}
\title{Kernel Realized Variance}

\usage{variance_krv(estimator,kernelName="ParzenKernel",bandwidth=1)
variance_krvRolling(estimator,kernelName="ParzenKernel",bandwidth=1,wLength=23400)
}

\arguments{
  \item{estimator}{Vector of (time, price) observations for market asset when external market data is used.}
  \item{wLength}{Length of a rolling window for rolling estimators. Default window length is 23400 (number of seconds in a trading day)}
  \item{kernelName}{Kernel name is one of the following (default:"ParzenKernel")
  \itemize{
\item \code{"BartlettKernel"}
\item \code{"EpanichnikovKernel"}
\item \code{"SecondOrderKernel"}
\item \code{"CubicKernel"} 
\item \code{"ParzenKernel"}
\item \code{"TukeyHanningKernel"}	 
\item \code{"TukeyHanningModifiedKernel"}
\item \code{"FifthOrderKernel"}
\item \code{"SixthOrderKernel"}
\item \code{"SeventhOrderKernel"} 
\item \code{"EighthOrderKernel"} 	 
    }}
    \item{bandwidth}{"optimal" to compute optimal bandwidth from the data, or the value of bandwidth (default:1)}
  }

\description{
Kernel Realized Variance (KRV) is an asymptotically consistent estimator of integrated volatility based on the concept of realized kernels for dealing with additive microstructure noise.

}

\details{
\bold{Flat Top kernel types:}

(Bartlett, Epanichnikov and Second order kernel)

- Convergence speed: \bold{\eqn{m^{1/6}}} (m - number of observation)

- Accounts for additive noise:  \bold{yes}

- Accounts for finite price jumps:  \bold{no}

- Accounts for time dependence in noise: \bold{no}

- Accounts for endogenous effects in noise: \bold{no}

\bold{Non Flat Top kernel types:}

(Cubic,Parzen,Tukey Hanning,Tukey Hanning modified and 5,6,7,8 order kernel)

- Convergence speed: \bold{\eqn{m^{1/4}}} (m - number of observation)

- Accounts for additive noise:  \bold{yes}

- Accounts for finite price jumps:  \bold{no}

- Accounts for time dependence in noise: \bold{yes}

- Accounts for endogenous effects in noise: \bold{yes}
}
\value{a numeric vector of the same length as input data.
}
\references{
O.E.Barndorff-Nielsen, P.Reinhard Hansen, A.Lunde, and N.Shephard, "Designing realised kernels to measure the ex-post variation of equity prices in the presence of noise", Economics Series Working Papers 264, University of Oxford, Department of Economics, 2006.
}

\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{variance_rv}} \code{\link{variance_tsrv}} \code{\link{variance_msrv}} \code{\link{variance_mrv}} \code{\link{variance_uzrv}} \code{\link{variance_jrmrv}}}
\examples{ 
\dontrun{ 
data(spy.data) 
estimator<-estimator_create(priceDataIx=spy.data)
estimator_settings(estimator,
				   inputSamplingInterval = '10s')
				   resultsSamplingInterval = '10s')
util_plot2d(variance_krv(estimator,kernelName="EpanichnikovKernel"),
title='KRV',legend='Simple')+
util_line2d(variance_krvRolling(estimator,kernelName="ParzenKernel",
wLength=3600),legend='Rolling Window')
}
}
\keyword{PortfolioEffectEstim,nonparametric, models}
\keyword{variance_krv}
