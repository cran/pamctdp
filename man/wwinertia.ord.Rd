

\encoding{latin1}
\name{wwinertia.ord}
\alias{wwinertia.ord}
\title{Sorting of Rows and Columns by Intra Inertia in Double Intra Correspondence Analysis}
\description{Rows or colums are sorted by their intra inertia. 
The rows or columns with the biggest and the least intra inertia are printed.
The same output is printed for the intra inertia contribution of the partial rows or columns}
\usage{
wwinertia.ord(parti,ax=0,coro="row",pato="tot",can=5,dec=1)
} 

\arguments{
  \item{parti}{an object of class \code{parwwm} }
  \item{ax}{number of the axis, if ax=0 the subespecie intra inertias are used}
  \item{coro}{within inertias for ``row''s or ``col''umns}
  \item{pato}{``tot''al or ``par''tial within inertias}
  \item{can}{the \code{can} rows with the biggest intra inertias and 
    the \code{can} rows with the least within inertias are printed}
  \item{dec}{number of decimals in the outputs}
}

\details{when \code{ax=0} the within inertias are calculed in the subspace of
    \code{nf} dimension}

\author{
Campo Elias PARDO \email{cepardot@unal.edu.co} 
}
\examples{
# ICA of Ardeche using witwit.model
data(ardeche)
names(ardeche$tab) <- paste(ardeche$sta.fac,ardeche$dat.fac,sep="") # change column names
rownames(ardeche$tab) <- # change row names
paste(strtrim(rownames(ardeche$tab),1),substr(rownames(ardeche$tab),4,length(rownames(ardeche$tab))),sep="")
coa <- dudi.coa(ardeche$tab, scann = FALSE, nf = 4)
ica <- witwit.model(coa,ardeche$row.blocks,ardeche$col.blocks,scannf=FALSE,nf=4)
parica <- partial.wwm(ica)
wwinertia.ord(parica,ax=1)
}
\keyword{multivariate}
