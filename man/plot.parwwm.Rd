\encoding{latin1}
\name{plot.parwwm}
\alias{plot.parwwm}
\title{Superimposed Representacion on Factorial Planes from Objects of Class parwwm}
\description{
 It plots partial points in factorial planes from objects of class \code{parwwm}. We select each global point with a clic. With a clic on the top of the graphic the selection is stopped
}
\usage{
\method{plot}{parwwm}(x,xy=c(1,2),graph="rows",namesg=NULL,
                        xlim=NULL,ylim=NULL,main=NULL,
                        rotx=FALSE,roty=FALSE,roweti=row.names(dudi$li),
                        coleti=row.names(dudi$co),axislabel=TRUE,asp=1,
			grid=TRUE,col.row="black",col.col="black",
			cex=0.8,cex.row=0.8,cex.col=0.8,cframe=1.2,
			cex.global=1,col.own= c("darkred","darkgreen" ,
				"darkblue", "darkmagenta","red",
				"darkorange","green3",palette()),...)
}
\arguments{
  \item{x}{ object of type \code{parwwm}}
  \item{xy}{a length 2 vector specifying the components to plot}
\item{graph}{select "rows" or "colums"}
  \item{namesg}{group names}
  \item{xlim}{the x limits (x1, x2) of the plot}
  \item{ylim}{the y limits of the plot}  
  \item{main}{graphic title}
  \item{rotx}{TRUE if you want change the sign of the horizontal coordinates. Default FALSE }
  \item{roty}{TRUE if you want change the sign of the vertical coordinates. Default FALSE }
  \item{roweti}{selected row points for the graphic. Default all points}
  \item{coleti}{selected column points for the graphic. Default all points}
   \item{axislabel}{if it is TRUE the axis information is written}
\item{asp}{the y/x aspect ratio, see 'plot.window'}
\item{grid}{if it is TRUE a grid is plotted}
  \item{col.row}{color for row points and row labels. Default "black"}
  \item{col.col}{color for column points and column labels. Default "black"}
  \item{cex}{global scale for the labels. Default cex=0.8}
  \item{cex.row}{scale for row points and row labels. Default cex.row=0.8 }
  \item{cex.col}{scale for column points and column labels. Default cex.col=0.8 }
  \item{cframe}{scale for graphic limits}
  \item{cex.global}{scale for the label sizes }
 \item{col.own}{the colors used to draw the partial points by groups}
  \item{\dots}{further arguments passed to or from other methods}
}
\details{Draw a factorial plane with the partial points and the centers of gravity. The graph is interactive and clicking on a point will draw the partial points,
if you click on a point for which the partial points are yet drawn, the partial points are deleted.
To stop the interactive plot, click in the top of the graph)
}
\value{Returns a list  containing: 
  \item{global}{global coordinates}  
\item{partial}{partial coordinates of selected global points}
\item{xlim}{the ended value of xlim}
\item{ylim}{the ended value of ylim}
}
\author{Campo Elias Pardo \email{cepardot@unal.edu.co} 

  \url{http://www.docentes.unal.edu.co/cepardot}
}
\examples{
data(ardeche)
ca <- dudi.coa(ardeche$tab,scannf=FALSE,nf=4)
# FactoMineR style
plot.dudi(ca,ucal=40,all.point=FALSE,main="SCA of Ardeche, First Factorial Plane")
dev.new()
# ade4 style
plot.dudi(ca,xy=c(3,4),ucal=20,all.point=FALSE,infaxes="in",main="SCA of
Ardeche, Plane 3-4")
}
\keyword{multivariate}
\keyword{hplot}

