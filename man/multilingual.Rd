\encoding{latin1} 
\name{multilingual}
 \alias{multilingual}
 \title{Multilingual Free Responses Data}
 \description{The data are extracted from a large international survey (Hayashi et al.,
1992). People from four countries (Great Britain, France, Italy, Japan) are
asked several closed questions and, moreover, the open-ended question: ``What
is the most important thing to you in life?'' is considered. The Japanese an-
swers are romanized.
    In each country, the free answers are grouped into 18 category-documents
by crossing gender (male, female), age (into three categories: 18-34, 35-54,
55 and over) and educational level (into three categories: low, medium and
high). Then, for each country, from the count of words in the whole answers,
the lexical table arises by crossing the 18 documents and the most frequent
words. Only the words used at least 20 times are kept.
}
 \usage{data(multilingual)}

\format{
  \code{multilingual} is a list with  components.
  \describe{
    \item{tab}{is a data frame containing frequency table: 18 rows (categorical variable = gender x age x  educational level)}
    \item{rbl}{is a vector containing the repartition of words for the 4  countries}
    \item{tab3}{concatenation of three frequency tables (gender, age, educational level)}
    \item{cbl3}{is a vector containing the category numbers in each table}
   }
}
 \source{Hayashi et al.,1992. We thank Profesor Lebart to put at our disposal this data set.}

 \references{M. Becue and J. Pages and C.E. Pardo (2004). Analysis of cross-language open-ended
questions through MFACT, in: Classification, Clustering, and Data Mining Applications.
EditorsDavid Banks,Leanna House, Frederick R. McMorris, Phipps Arabie and Wlfgang Gaul.
Heidelberg. pringer".  pages 553-561. The 2004 Meeting of the International Federation of Classification Societies.
  Illinois Institute of Technology in Chicago, 15-18 July 2004 See in \code{directory}: \code{BecuePagesPardo04.pdf}.
}
\examples{
# MFACT with pamctdp functions
data(multilingual)
# simple correspondence analysis
sca <- dudi.coa(multilingual$tab,scannf=FALSE,nf=2)
# MFACT analysis 
mfact <- witwit.model(sca,multilingual$rbl,18,weight="mfa",scannf=FALSE,nf=2)
inertia(mfact)$row
# MFACT = ACIBP*homotecia
wibca2mfa(mfact)
# plot of texts
plot(mfact,Trow=FALSE,cframe=0.5)
# plot of words with representation quality on the first plan >= 40%
dev.new()
plot(mfact,ucal=40,all.point=FALSE)
# partial coordinates
parmfact <- partial.wwm(mfact)
#superimposed representation of categorias with age between 35 and 54
#1. points selection
age2 <- names(multilingual$tab)[substr( names(multilingual$tab),3,4)=="35"]
#2. new graphics window
dev.new(width=6,height=8)
#3. superimposed representation
# clic in global points and clic in the top to finish
# plot(parmfact,graph="cols",coleti=age2)
}           
 \keyword{datasets}
