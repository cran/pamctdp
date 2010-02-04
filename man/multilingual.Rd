\encoding{latin1} 
\name{multilingual}
 \docType{multilingual}
 \alias{multilingual}
 \title{Multilingual Free Responses Data}
 \description{The data are extracted from a large international survey (Hayashi et al.,
1992). People from four countries (Great Britain, France, Italy, Japan) are
asked several closed questions and, moreover, the open-ended question: ``What
is the most important thing to you in life?'' is considered. The Japanese an-
swers are romanized.
    In each country, the free answers are grouped into 18 category-documents
by crossing gender (male, female), age (into three categories: 18-34, 35-54,
55 and over) and education level (into three categories: low, medium and
high). Then, for each country, from the count of words in the whole answers,
the lexical table arises by crossing the 18 documents and the most frequent
words. Only the words used at least 20 times are kept.
}
 \usage{data(multilingual)}

\format{
  \code{multilingual} is a list with  components.
  \describe{
    \item{tab}{is a data frame containing frequency table}
    \item{rbl}{is a vector containing the repartition of words for the 4  countries}
    \item{tab3}{concatenation of three frequency tables}
    \item{cbl3}{is a vector containing the category numbers in each table}
   }
}
 \source{Hayashi et al.,1992. We thank Profesor Lebart to put at our disposal this data set.}

 \references{M. Becue and J. Pages and C.E. Pardo (2004). Analysis of cross-language open-ended
questions through MFACT, in: Classification, Clustering, and Data Mining Applications.
EditorsDavid Banks,Leanna House, Frederick R. McMorris, Phipps Arabie and Wlfgang Gaul.
Heidelberg. pringer".  pages 553-561. The 2004 Meeting of the International Federation of Classification Societies.
  Illinois Institute of Technology in Chicago, 15-18 July 2204.
}
            
 \keyword{datasets}
