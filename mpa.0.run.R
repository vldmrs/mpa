source("mpa.0.kernel.R")
options(digits=10)
a<-c(1,0,0)
u.0<-function(x)
  x+sin(pi*x)
u.1<-function(t)
  0
u.2<-function(t)
  1
u<-function(x,t)
  x+sin(x*pi)*exp(-t*pi^2)
gT<-gL<-seq(0,1,length.out=101L)
sol<-heat.1d.fem(a,u.0,u.1,u.2,2L,gT,gL)
cat("sol contains obtained solution\n")
