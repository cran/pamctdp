\encoding{latin1}
\name{inerepa} 
\alias{inerepa} 
\title{Associtted SCA Inertia Repartition} 
\description{ 
Associtted SCA Inertia Repartition: SCA of T total of the blocks + intra-tables CA of TJ of the column band marginals + intra-tables CA of TL of the row band marginals + ACI associatted inertia
}
\usage{inerepa(tab,rbl,cbl)
}
\arguments{
  \item{tab}{matrix or data.frame containing the contingency table}
  \item{rbl}{a numeric vector indicating the row numbers for each block of rows}
  \item{cbl}{a numeric vector indicating the column numbers for each block of columns}
}
\details{
 Compute total internia of four correspondence analysis
}
\value{Returns a numeric vector containing  : 
  \item{inT}{column band weights}
  \item{winTL}{row band weights}
  \item{winTJ}{column band qualities of the representation}
  \item{inACI}{row band qualities of the representation}
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
data(ardeche)
attach(ardeche)
inerepa(tab,row.blocks,col.blocks)
detach(ardeche)
}
\keyword{multivariate}

