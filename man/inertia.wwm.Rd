% --- Source file: inertia.wwm.Rd ---
\encoding{latin1}
\name{inertia.wwm} 
\alias{inertia.wwm} 
\alias{print.wwinertia} 
\title{Additional aids to interpretation of Double Intra Correspondence Analysis} 
\description{ 
Aids to interpretation associated to subclouds in Double Intra Correspondence Analysis
    (ICA, IBCA, ...). 
    Square distances to the origin of rows and columns
}
\usage{
inertia.wwm(ACww, xax=1,yax = 2,dec=1)
\method{print}{wwinertia}(x, \dots)   
}
\arguments{
  \item{ACww}{object of class: \code{wwmodel}}
  \item{xax}{the axis number of x}
  \item{yax}{the axis number of y}
  \item{dec}{number of decimal digits in $fil and $col}
  \cr
  \item{x}{object of class: \code{wwinertia}}
   \item{\dots}{further arguments passed to or from other methods}
}
\details{
 Aids to interpretation associated to the bands. There are J  column bands and L row bands.
}
\value{Returns a list of class \code{wwinertia} containing  : 
  \item{cloud.col}{column band weights}
  \item{cloud.row}{row band weights}
  \item{rel.col}{column band qualities of the representation}
  \item{rel.row}{row band qualities of the representation}
  \item{abs.col}{column band absolute contributions }
  \item{abs.row}{row band absolute contributions }
  \item{col}{a table of inertia for the column clouds. The inertia values are multiplied by 1000}
  \item{row}{a table of inertia for the row clouds. The inertia values are multiplied by 1000}
  \item{coraxisJ}{a data frame giving the correlations between 
    the axis separate and global analysis for column bands}
  \item{coraxisL}{a data frame giving the correlations between 
    the axis separate and global analysis for row bands}
  \item{dis.row}{square distances of rows to the origin}
  \item{dis.col}{square distances of columns to the origin}
}
\references{
 Bécue M.,  Pagès J. and Pardo C.E. (2005). Contingency table with a double partition on
rows and columns. Visualization and comparison of the partial and global structures. 
In: Proceedings ASMDA, Brest, France. May,17-20, 2005. 
Eds: Jacques Janssen and Philippe Lenca. ENST Bretagne.
pages 355--364.   
\url{http://conferences.telecom-bretagne.eu/asmda2005/IMG/pdf/proceedings/355.pdf}

Cazes, P., Chessel, D. and Dolédec, S. (1988) L'analyse des correspondances internes d'un tableau partitionné :
son usage en hydrobiologie. Revue de Statistique Appliquee, 36, 39--54. 
\url{http://pbil.univ-lyon1.fr/R/articles/arti054.pdf}

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
names(ardeche$tab) <- paste(ardeche$sta.fac,ardeche$dat.fac,sep="") # change column names
rownames(ardeche$tab) <- # change row names
paste(strtrim(rownames(ardeche$tab),1),substr(rownames(ardeche$tab),4,length(rownames(ardeche$tab))),sep="")
coa1 <- dudi.coa(ardeche$tab, scann = FALSE, nf = 4)
ww <- witwit.model(coa1, ardeche$row.blocks, ardeche$col.blocks, scann = FALSE)
aids <- inertia.wwm(ww) 
aids$col
aids$row
}
\keyword{multivariate}

