\encoding{latin1}
\name{witwit.model}
\alias{witwit.model}
\alias{summary.wwmodel}
\alias{print.wwmodel}
\title{ Within Correspondence Analysis using divers Models and Weights}
\description{\code{witwit.model} performs an Double Within Tables
    Correspondence Analysis. 
    Modification of witwit.coa of ade4 to allow Intra Block Model and divers
        weights
}
\usage{
witwit.model(dudi, row.blocks, col.blocks, pfil = dudi$lw, pcol = dudi$cw, 
    model = "C", weight = "coa", scannf = TRUE, nf = 2,eps=1e-15,iter=100)
\method{summary}{wwmodel}(object, \dots) 
\method{print}{wwmodel}(x, \dots)   
}
\arguments{
  \item{dudi}{an object of class \code{coa}} 
  \item{row.blocks}{a numeric vector indicating the row numbers for each block of rows}
  \item{col.blocks}{a numeric vector indicating the column numbers for each block of columns}
  \item{scannf}{a logical value indicating whether the eigenvalues bar plot should be displayed}
  \item{nf}{if scannf FALSE, an integer indicating the number of kept axes}
  \item{pfil}{ a numeric vector indicating the row weights }
  \item{pcol}{  a numeric vector indicating the column weights  }
  \item{model}{"C": the same model of ICA,"B": intra blocks independence model}
  \item{weight}{c("coa": the same row and columns weights than CA,
    "mfa": MFA-like weights in rows and columns,
    "mafc": MFA-like weights in columns,
    "mfar": MFA-like weights in rows}
   \item{eps}{congergence error if weight="mfa"}
  \item{iter}{maximum itection number if if weight="mfa"}
  \cr
  \item{object}{an object of class \code{wwmodel}}
  \cr
  \item{x}{an object of class \code{wwmodel}}
    \item{\dots}{further arguments passed to or from other methods}
}
\details{
 This function is builp up with \code{witwit.coa} of ade4, in order to allow diferents weights and models
    in a contingency table with double structure of partition. 
    If model="C" and weight="coa" the results are the same of witwit.coa. 
    If model="B" and weight="coa" a Intra-Blocks Correspondence Analysis (IBCA) is buld up
    If model="B" and weight="mfa" a Multiple Factor Analysis for Contingency Tables with Double
        Partition (MFACT-DP) is buld up
        }
\value{
Returns a list of class \code{wwmodel} containing:
\item{tab}{a data frame with I rows and K columns}
\item{cw}{column weights, a vector with K components} 
\item{lw}{row weights, a vector with I components}
\item{eig}{eigenvalues, a vector with min(I,K) components}
\item{nf}{integer, number of kept axes}
\item{c1}{principal axes, data frame with I rows and nf columns}
\item{l1}{principal components, data frame with I rows and nf columns}
\item{co}{column coordinates, data frame with K rows and nf columns}
\item{li}{row coordinates, data frame with I rows and nf columns}
\item{call}{original call}
  \item{rbvar}{a data frame with the within variances of the rows of the factorial coordinates}
  \item{lbw}{a data frame with the marginal weighting of the row bands}
  \item{cvar}{a data frame with the within variances of the columns of the factorial coordinates}
  \item{cbw}{a data frame with the marginal weighting of the column bands}
  \item{hom}{homotecia to read some aids as in MFA}
  \item{rbl}{number of rows in each row-band}
  \item{cbl}{number of columns in each column-band}
  \item{sepeig.col}{band-column separate firt eigenvalues if weight="mfa"}
   \item{sepeig.row}{band-row separate firt eigenvalues if weight="mfa"}
}
\references{
Becue M.,  Pages J. and Pardo C.E. (2005). Contingency table with a double partition on
rows and columns. Visualization and comparison of the partial and global structures. 
In: Proceedings ASMDA, Brest, France. May,17-20, 2005. 
Eds: Jacques Janssen and Philippe Lenca. ENST Bretagne.
pages 355--364.   
\url{http://conferences.telecom-bretagne.eu/asmda2005/IMG/pdf/proceedings/355.pdf}

Cazes, P., Chessel, D. and Doledec, S. (1988) L'analyse des correspondances internes d'un tableau partitionne :
son usage en hydrobiologie. Revue de Statistique Appliquee, 36, 39--54. 
\url{http://pbil.univ-lyon1.fr/R/articles/arti054.pdf}

Pardo Campo Elías (2005). Análisis de correspondencias de tablas de contingencia estructuradas. In: 
Memorias del Coloquio Distrital de Matemáticas y Estadística. Volume 7. Universidad Distrital, Bogotá
\url{http://www.docentes.unal.edu.co/cepardot/docs/ColoquioDistritalMatEst/AnalCorresTCE.pdf}
}
\author{
Campo Elías PARDO \email{cepardot@unal.edu.co}
}
\examples{
data(ardeche)
names(ardeche$tab) <- paste(ardeche$sta.fac,ardeche$dat.fac,sep="") # change column names
rownames(ardeche$tab) <- # change row names
paste(strtrim(rownames(ardeche$tab),1),substr(rownames(ardeche$tab),4,length(rownames(ardeche$tab))),sep="")
coa1 <- dudi.coa(ardeche$tab, scannf = FALSE, nf = 4)
ww <- witwit.model(coa1, ardeche$row.blocks, ardeche$col.blocks, scann = FALSE)
ww
plot(ww)
summary(ww)
}
\keyword{multivariate}


