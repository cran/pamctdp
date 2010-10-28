pkgname <- "pamctdp"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('pamctdp')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("ctdp2df")
### * ctdp2df

flush(stderr()); flush(stdout())

### Name: ctdp2df
### Title: Convertion of Double Partition Contingency Table to Data Frame
### Aliases: ctdp2df
### Keywords: multivariate

### ** Examples

data(mores5)
attach(mores5)
ctdp2df(tab,rbl5,cbl5)
detach(mores5)



cleanEx()
nameEx("inerepa")
### * inerepa

flush(stderr()); flush(stdout())

### Name: inerepa
### Title: Associtted SCA Inertia Repartition
### Aliases: inerepa
### Keywords: multivariate

### ** Examples

data(ardeche)
attach(ardeche)
inerepa(tab,row.blocks,col.blocks)
detach(ardeche)



cleanEx()
nameEx("inertia.wwm")
### * inertia.wwm

flush(stderr()); flush(stdout())

### Name: inertia.wwm
### Title: Additional aids to interpretation of Double Intra Correspondence
### Aliases: inertia.wwm print.wwinertia
### Keywords: multivariate

### ** Examples

data(ardeche)
# change column names
names(ardeche$tab) <- paste(ardeche$sta.fac,ardeche$dat.fac,sep="") 
rownames(ardeche$tab) <- # change row names
paste(strtrim(rownames(ardeche$tab),1),substr(rownames(ardeche$tab),4,
	length(rownames(ardeche$tab))),sep="")
coa1 <- dudi.coa(ardeche$tab, scann = FALSE, nf = 4)
ww <- witwit.model(coa1, ardeche$row.blocks, ardeche$col.blocks, scann = FALSE)
aids <- inertia.wwm(ww) 
aids$col
aids$row



cleanEx()
nameEx("multilingual")
### * multilingual

flush(stderr()); flush(stdout())

### Name: multilingual
### Title: Multilingual Free Responses Data
### Aliases: multilingual
### Keywords: datasets

### ** Examples

# MFACT with pamctdp functions
data(multilingual)
# simple correspondence analysis
sca <- dudi.coa(multilingual$tab,scannf=FALSE,nf=2)
# MFACT analysis 
mfact <- witwit.model(sca,multilingual$rbl,18,weight="mfa",scannf=FALSE,nf=2)
inertia.wwm(mfact)$row
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



cleanEx()
nameEx("partial.wwm")
### * partial.wwm

flush(stderr()); flush(stdout())

### Name: partial.wwm
### Title: Coordinates and Aids to Interpretation of Superimposed
###   Representation
### Aliases: partial.wwm print.parwwm wwm.util.addfactor<-
### Keywords: multivariate

### ** Examples

data(ardeche)
# change column names
names(ardeche$tab) <- paste(ardeche$sta.fac,ardeche$dat.fac,sep="") 
rownames(ardeche$tab) <- # change row names
paste(strtrim(rownames(ardeche$tab),1),substr(rownames(ardeche$tab),4,
	length(rownames(ardeche$tab))),sep="")
coa <- dudi.coa(ardeche$tab, scann = FALSE, nf = 4)
ww <- witwit.model(coa, ardeche$row.blocks, ardeche$col.blocks, scannf = FALSE)
parica <- partial.wwm(ww)
parica



cleanEx()
nameEx("plot.dudi")
### * plot.dudi

flush(stderr()); flush(stdout())

### Name: plot.dudi
### Title: Factorial Planes from Objects of Class dudi
### Aliases: plot.dudi sutil.grid
### Keywords: multivariate hplot

### ** Examples

data(ardeche)
ca <- dudi.coa(ardeche$tab,scannf=FALSE,nf=4)
# FactoMineR style
plot.dudi(ca,ucal=40,all.point=FALSE,main="SCA of Ardeche, First Factorial Plane")
dev.new()
# ade4 style
plot.dudi(ca,xy=c(3,4),ucal=20,all.point=FALSE,infaxes="in",main="SCA of
Ardeche, Plane 3-4")



cleanEx()
nameEx("plot.parwwm")
### * plot.parwwm

flush(stderr()); flush(stdout())

### Name: plot.parwwm
### Title: Superimposed Representacion on Factorial Planes from Objects of
###   Class
### Aliases: plot.parwwm
### Keywords: multivariate hplot

### ** Examples

data(ardeche)
ca <- dudi.coa(ardeche$tab,scannf=FALSE,nf=4)
# FactoMineR style
plot.dudi(ca,ucal=40,all.point=FALSE,main="SCA of Ardeche, First Factorial Plane")
dev.new()
# ade4 style
plot.dudi(ca,xy=c(3,4),ucal=20,all.point=FALSE,infaxes="in",main="SCA of
Ardeche, Plane 3-4")



cleanEx()
nameEx("plotct")
### * plotct

flush(stderr()); flush(stdout())

### Name: plotct
### Title: Row and Column Profiles of a Contingency Table
### Aliases: plotct
### Keywords: hplot

### ** Examples

mycolors<-colors()[c(1,26,32,37,52,57,68,73,74,81,82,84,88,100)]
data(mores5)
plotct(mores5$tab,col=mycolors)



cleanEx()
nameEx("plotfp")
### * plotfp

flush(stderr()); flush(stdout())

### Name: plotfp
### Title: Factorial Planes from Coordinates
### Aliases: plotfp
### Keywords: multivariate hplot

### ** Examples

data(mores5)
attach(mores5)
ca <- dudi.coa(tab,scannf=FALSE,nf=4)
wibca <- witwit.model(ca,rbl5,cbl5,model="B",weight="mfa",scannf=FALSE,nf=4)
detach(mores5)
mfa <- wibca2mfa(wibca)
attach(mfa)
plotfp(colb$coor,colb$eig,main="WIBCA Column bands like MFA of Spain Mortality, First Factorial Plane")
dev.new()
plotfp(rowb$coor,rowb$eig,main="WIBCA Row bands like MFA of Spain Mortality, First Factorial Plane")



cleanEx()
nameEx("wibca2mfa")
### * wibca2mfa

flush(stderr()); flush(stdout())

### Name: wibca2mfa
### Title: MFA aids to interpretation of Weighted Intra Blocks
###   Correspondence
### Aliases: wibca2mfa Lg
### Keywords: multivariate

### ** Examples

data(mores5)
coa <- dudi.coa(mores5$tab, scann = FALSE, nf = 4)
wibca <- witwit.model(coa, mores5$rbl5, mores5$cbl5, model="B",weight="mfa",scann = FALSE,nf=4)
mfa <- wibca2mfa(wibca)
mfa 



cleanEx()
nameEx("witwit.model")
### * witwit.model

flush(stderr()); flush(stdout())

### Name: witwit.model
### Title: Within Correspondence Analysis using divers Models and Weights
### Aliases: witwit.model summary.wwmodel print.wwmodel
### Keywords: multivariate

### ** Examples

data(ardeche)
# change column names
names(ardeche$tab) <- paste(ardeche$sta.fac,ardeche$dat.fac,sep="") 
rownames(ardeche$tab) <- # change row names
paste(strtrim(rownames(ardeche$tab),1),substr(rownames(ardeche$tab),4,
	length(rownames(ardeche$tab))),sep="")
coa1 <- dudi.coa(ardeche$tab, scannf = FALSE, nf = 4)
ww <- witwit.model(coa1, ardeche$row.blocks, ardeche$col.blocks, scann = FALSE)
ww
plot(ww)
summary(ww)



cleanEx()
nameEx("wwinertia.ord")
### * wwinertia.ord

flush(stderr()); flush(stdout())

### Name: wwinertia.ord
### Title: Sorting of Rows and Columns by Intra Inertia in Double Intra
### Aliases: wwinertia.ord
### Keywords: multivariate

### ** Examples

# ICA of Ardeche using witwit.model
data(ardeche)
# change column names
names(ardeche$tab) <- paste(ardeche$sta.fac,ardeche$dat.fac,sep="") 
rownames(ardeche$tab) <- # change row names
paste(strtrim(rownames(ardeche$tab),1),substr(rownames(ardeche$tab),4,
	length(rownames(ardeche$tab))),sep="")
coa <- dudi.coa(ardeche$tab, scann = FALSE, nf = 4)
ica <- witwit.model(coa,ardeche$row.blocks,ardeche$col.blocks,scannf=FALSE,nf=4)
parica <- partial.wwm(ica)
wwinertia.ord(parica,ax=1)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
