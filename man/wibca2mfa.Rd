\encoding{latin1}
\name{wibca2mfa} 
\alias{wibca2mfa} 
\alias{Lg}
\title{
MFA aids to interpretation of Weighted Intra Blocks Correspondence Analysis
Lg function computes the COVV between two operators
} 
\description{ 
Aids to interpretation WIBCA like two MFACT and Lg   
}
\usage{
wibca2mfa(ACww)
Lg(Xj,Mj,D=diag(nrow(Xj))/nrow(Xj),Xk=Xj,Mk=Mj)
}
\arguments{
  \item{ACww}{object of class: \code{wwmodel}}
  \item{Xj}{the first data matrix}
  \item{Mj}{the metric matrix associatted to Xj}
  \item{D}{the diagonal matrix with the row weights}
  \item{Xk}{the second data matrix}
  \item{Mk}{the metric matrix associatted to Xk}
}
\details{
 Aids to interpretation associated to the bands of WIBCA like two MFA.
}
\value{Returns a list containing:
  \item{colb}{WIBCA like column bands MFA}
  \item{colb$eig}{eigenvalues of column bands MFA}
  \item{colb$Lg}{Lg of column bands MFA} 
  \item{colb$RV}{RV of column bands MFA}
  \item{rowb}{WIBCA like row bands MFA}
  \item{rowb$eig}{eigenvalues of row bands MFA}
  \item{rowb$Lg}{Lg of row bands MFA} 
  \item{rowb$RV}{RV of row bands MFA}
  \item{Lg}{Lg betwenn two operators}
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
coa <- dudi.coa(mores5$tab, scann = FALSE, nf = 4)
wibca <- witwit.model(coa, mores5$rbl5, mores5$cbl5, model="B",weight="mfa",scann = FALSE,nf=4)
mfa <- wibca2mfa(wibca)
mfa 
}
\keyword{multivariate}

