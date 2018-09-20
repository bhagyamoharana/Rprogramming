
mtcars [1,2]
nrow(mtcars)
ncol(mtcars)
tail(mtcars)
head(mtcars)
mtcars[1]
mtcars[[1]]
mtcars["mpg"]
mtcars[c("mpg","hp")]
mtcars[c(1,4)]
mtcars$mpg
mtcars[,1]
mtcars[1,]
mtcars[c(1, 4),]
mtcars[1:4,]

L = mtcars$am == 0

mtcars[L,]
mtcars[L,]$mpg
