\encoding{latin1} 
\name{mores5}
 \alias{mores5}
 \title{Reduced No Premature Mortality Data in Spain}
 \description{Structured Contingency Table builb up with the most frequency causes (5) and the 
greatest regions (5) frome data \code{mores}
}
 \usage{data(mores5)}

\format{
  \code{mores5} is a list with  components.
  \describe{
    \item{tab}{is a data frame containing mortality table with 10 rows and 10 columns.}
    \item{cbl}{is a vector containing the repartition of causes for the 2 sex: 
male no premature mortality, female no premature mortality.}
    \item{rbl}{is a vector containing the repartition of regions for the two years: 1995, 2005.}
    \item{cblfac}{is a factor for columns (2 sex).}
    \item{rblfac}{is a factor for rows (2 years).}
   }
}

 \source{Eurostat
 }

 \references{Buitrago, D. C. (2008). Complementariedad entre el modelo log-lineal y el analisis de
  correspondencias en el analisis de tablas de contingencia. Trabajo de grado para optar al titulo de 
Estadistica. Universidad Nacional de Colombia. Bogota.
 \url{http://www.docentes.unal.edu.co/cepardot/docs/TrabajosGrado/TrabajoGradoDianaBuitrago.pdf}
}
 \keyword{datasets}
