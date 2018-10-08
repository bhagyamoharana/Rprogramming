# exercise 1
namesv <- c("Alex","Lilly"," Mark"," Oliver"," Martha "," Lucas "," Caroline ")
agesv  <- c(25,31,23,52,76,49,26)
heightv <- c(177,163,190,179,163,183,164)
weightv <- c(57,69,83,75,70,83,53)
#sexv <- c("F","F","M","M","F","M","F")
sexv <-as.factor(c("F","F","M","M","F","M","F"))
df <- data.frame(namesv,agesv,heightv,weightv,sexv)


df2 <- data.frame(agesv,heightv,weightv,sexv)
row.names(df2) <- namesv

#exercise 2

working <-c("Yes","No","No","Yes","Yes","No","Yes")
df3 <-data.frame(namesv,working)
View(df3)
df4 <- cbind(df,df3)
df4[-6]
View(df4)

#exercise 3
help(data.frame)
df <- data.frame(namesv,agesv,heightv,weightv,sexv,working,stringsAsFactors=FALSE)
default.stringsAsFactors()

df$working <- as.factor(df$working)
df$sexv  <- as.factor(df$sexv)


#exercise 4
class (state.center)
list1 <- state.center
dflist <- data.frame(state.center)

help(as.data.frame)
help(data.frame)


#exercise 5

v <- c(45:41,30:33)
b <- rep(c("A","B","C"),3)
b <- LETTERS[rep(1:3,3)]
str(LETTERS)

n <- round(rnorm(9,65,5))

dfrandom <- data.frame(Age = v, class= b,Grade =n)
dfrandom

dfrandom$Age
order(dfrandom$Age)

dfrandom$Age[order(dfrandom$Age)]
# sorted order according to age

dfrandom[order(dfrandom$Age),]

# reordering the columns
dfrandom[,c(3,1,2)]


# exercise 6

help(rowSums)
data(VADeaths)
data <- VADeaths
class(VADeaths)

df <- as.data.frame(VADeaths)
df <- data.frame(VADeaths)
df$Total <- df[,1] + df[,2] +df[,3] +df[,4]   #alternative solution is rowSum

help(rowSums)

df$Total <- rowSums(df[1:4])   # alternative solution

df$Total <- rowSums(df)

#indexing the columns again

df <- df[,c(5,1:4)]


