\encoding{latin1}
\name{ctdp2df} 
\alias{ctdp2df} 
\title{Convertion of Double Partition Contingency Table to Data Frame} 
\description{ 
It build up a data.frame containing the four factors an the frequencies associtted to a Double Partition Contingency Table}
\usage{ctdp2df(tab,rbl,cbl,iden=rep(3,4))
}
\arguments{
  \item{tab}{matrix or data.frame containing the contingency table}
  \item{rbl}{a numeric vector indicating the row numbers for each block of rows}
  \item{cbl}{a numeric vector indicating the column numbers for each block of columns}
   \item{iden}{number of characters of each factor to paste for the row identifications}
}
\details{
 A data.frame with four factors an frequency column is made
}
\value{Returns a data.frame containing  : 
  \item{J}{factor identifying column partition}
  \item{K}{factor identifying CT columns}
  \item{L}{factor identifying row partition}
  \item{I}{factor identifying CT rows}
}
\references{
Pardo Campo Elías (2005). Análisis de correspondencias de tablas de contingencia estructuradas. In: 
Memorias del Coloquio Distrital de Matemáticas y Estadística. Volume 7. Universidad Distrital, Bogotá
\url{http://www.docentes.unal.edu.co/cepardot/docs/ColoquioDistritalMatEst/AnalCorresTCE.pdf}
}
\author{
Campo Elías PARDO \email{cepardot@unal.edu.co}
\url{http://www.docentes.unal.edu.co/cepardot}
}
\examples{
data(mores5)
attach(mores5)
ctdp2df(tab,rbl5,cbl5)
detach(mores5)
}
\keyword{multivariate}

