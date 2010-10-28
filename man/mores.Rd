\encoding{latin1} 
\name{mores}
 \alias{mores}
 \title{Mortality Data in Spain}
 \description{Structured Contingency Table: in rows years (1995, 2005) by regions(17); in columns
  sex by age by causes
}
 \usage{data(mores)}

\format{
  \code{mores} is a list with 6 components.
  \describe{
    \item{tab}{is a data frame containing mortality table with 34 rows and 55 columns.}
    \item{cbl}{is a vector containing the repartition of causes for the 4 groups: 
male premature mortality, male no premature mortality, female premature mortality, female no premature mortality.}
    \item{rbl}{is a vector containing the repartition of regions for the two years: 1995, 2005.}
    \item{cblfac}{is a factor for columns (4 groups).}
    \item{rblfac}{is a factor for rows (2 years).}
    \item{de}{is a data frame containing gross value per capita, percentage of illiterate people and 
             percentage of unemployed in the active population}
    }
}
 \source{Eurostat and INE of España
 }

 \references{Becue, M. and Pages, J. (2004). A principal axes method for comparing multiple contingency tables: MFACT
Comp. Statistics & Data Analysis. 45(3): 481-503
            }
 \keyword{datasets}
