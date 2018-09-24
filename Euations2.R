# Basic data types
# vectors from 1 to 20
x<-1:20
x

# Vector from 20 to 1
y<-20:1
y
z<-x+y
z
help(seq)
v1<-seq(from =20, to =1)
v2<-seq(from =1, to =19)
v<-c(v1,v2)
v
u<-c(rep(4,6),rep(6,20),rep(3,30))
u
v3<-(1:30)
v <- paste("label",v3)


v<-paste("fn",v3,sep="")
v

#random number genrator

help(sample)

set.seed(50)
x<-sample(0:999,10,replace = T)
Y<-sample(0:999,10,replace = T)
x
y
Y



#QUESTION 6 IN LAB 1R
x<-sample(0:999,10,replace = T)
y<-sample(0:999,10,replace = T)

x
y

x1<-x[-length(x)]
x1
x1<-x1[-length(x1)]
x1

x2<-x[-1]
x2
x2<-x2[-length(x2)]
x2


x3<- x[-c(1,2)]
x3



ans<-x1 +2*x2 -x3
ans


#6.1

help(subset)

y<-sample(0:999,10,replace = T)
y

high <-subset(y,y>600)
high

# 6.2
highIndices<-y<600
highIndices

# 6.3
x[highIndices]
x

y[highIndices]

# 6,4
x
xBar = mean(x)
xBar
help(sqrt)
help(abs)

ans <- sqrt(abs(x-xBar))
ans

# 6.5
set.seed(50)
x <- sample(0:999,10,replace = T)
x
y <- sample(0:999,10,replace = T)
y

yMax <-max(y)
yMax

yAns <- subset(y,yMax -y <200)
yAns
length(yAns)

# 6.6
length(subset(x,x%%2==0))


# 6.7


help(sort)

set.seed(50)
x <- sample(0:999,10,replace = T)
x
y <- sample(0:999,10,replace = T)
y

iy <- sort(y,index.return = TRUE)
iy


x[iy$ix]



# 6.8


