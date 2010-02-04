\encoding{latin1}
\name{partial.wwm}
\alias{partial.wwm}
\alias{print.parwwm}
\alias{wwm.util.addfactor<-}
\title{Coordinates and Aids to Interpretation of Superimposed Representation of Double 
    Intra Correspondence Analysis}
\description{
Coordinates and Aids to Interpretation of Superimposed Representation of 
    Double Intra Correspondence Analysis
}
\usage{
partial.wwm(ACww,dil = TRUE)
\method{print}{parwwm}(x, \dots)
"wwm.util.addfactor<-"(x,value)
}
\arguments{
  \item{ACww}{an object of class \code{wwmodel}}
  \item{dil}{when dil=TRUE the partial column coordinates are multiplied by J 
    and the partial column coordinates are multiplied by L}
  \cr
  \item{x}{object of type \code{parwwm}}
  \item{\dots}{further arguments passed to or from other methods}
  \cr
  \item{value}{list:  rbl,cbl,nr,nc}
  }

\value{
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  \item{dil}{dilation T/F}
  \item{nf}{integer, number of kept axes}
  \item{lw}{row weights, a vector with I components}
    \item{cw}{column weights, a vector with K components}
    \item{row.coor}{partial row coordinates}
    \item{col.coor}{partial column coordinates}
    \item{row.rel}{quality of the representation of the partial rows}
    \item{col.rel}{quality of the representation of the partial columns}
    \item{row.cwit}{contribution to the intra inertia  of the partial rows}
   \item{row.cwitS}{contribution to the intra inertia  of the partial rows on the S subspace}
    \item{col.cwit}{contribution to the intra inertia  of the partial columns}
    \item{col.cwitS}{contribution to the intra inertia  of the partial columns on the S subspace}
    \item{row.wit}{intra inertia of the rows}
    \item{row.witS}{intra inertia of the rows on the S subspace}
    \item{col.wit}{intra inertia of the columns}
    \item{col.witS}{intra inertia of the columns on the S subspace}
    \item{quaj}{quality of the representation of the partial row clouds (J)}
    \item{qual}{quality of the representation of the partial colum clouds (L)}
    \item{betj}{intra inertia/total inertia of the whole partial row clouds on the axis}
    \item{betjS}{intra inertia/total inertia of the whole partial row clouds on the S subspace}
    \item{betl}{intra inertia/total inertia of the whole partial column clouds on the axis}
    \item{betlS}{intra inertia/total inertia of the whole partial column clouds on the S subspace}
    \item{inLJ}{cotribution to the inertia of blocks (l,j)}
    \item{cancorj}{cannonical correlation of the partial row clouds}
    \item{cancorl}{cannonical correlation of the partial column clouds}
    \cr
    \item{parwwm}{an object of class \code{parwwm}}
    \item{x}{an object of class \code{parwwm}}
    \cr
    \item{value}{list:  rbl,cbl,nr,nc}
  }
  \details{function 'wwm.util.addfactor<-' is used by 'partial.wwm' function
}
\references{
Becue M.,  Pagès J. and Pardo C.E. (2005). Contingency table with a double partition on
rows and columns. Visualization and comparison of the partial and global structures. 
In: Proceedings ASMDA, Brest, France. May,17-20, 2005. 
Eds: Jacques Janssen and Philippe Lenca. ENST Bretagne.
pages 355--364.   
\url{http://conferences.telecom-bretagne.eu/asmda2005/IMG/pdf/proceedings/355.pdf}

Pages, J. (2004) Multiple Factor Analysis: Main Features and Application to Sensory Data.
Revista Colombiana de Estadística. \bold{27}(1) 1--26
\url{http://www.estadistica.unal.edu.co/publicaciones/estadistica/rce/V27/V27_1_1Pages.pdf}
}
\author{
Campo Elías PARDO \email{cepardot@unal.edu.co}
}
\examples{
data(ardeche)
names(ardeche$tab) <- paste(ardeche$sta.fac,ardeche$dat.fac,sep="") # change column names
rownames(ardeche$tab) <- # change row names
paste(strtrim(rownames(ardeche$tab),1),substr(rownames(ardeche$tab),4,length(rownames(ardeche$tab))),sep="")
coa <- dudi.coa(ardeche$tab, scann = FALSE, nf = 4)
ww <- witwit.model(coa, ardeche$row.blocks, ardeche$col.blocks, scannf = FALSE)
parica <- partial.wwm(ww)
parica
}
\keyword{multivariate}

