# exercise 7

data <- state.x77
class(state.x77)
df <- as.data.frame(state.x77)
View(df)

subset(df,df$Income <4300)

help(subset)
help("state.x77")

nrow(subset(df,df$Income <4300))

maxIncome <- max(df$Income)

df[df$Income==maxIncome,]    # two alternatiove solution for this

#or another say
subset(df,df$Income==maxIncome)

rownames(df[df$Income==maxIncome,])


#exercise 8
help(swiss)

data <- swiss
df <- swiss[c(1:3,10:13),c("Examination","Education","Infant.Mortality")]

df[4,3] <-NA

  #df["Total",] <-c(sum(df$Examination),sum(df$Education),sum(df$Infant.Mortality))


help(sum)

df["Total",] <-c(sum(df$Examination),sum(df$Education),sum(df$Infant.Mortality,na.rm = TRUE))

df$Examproportion <- round(df$Examination/ df["Total","Examination"],3)
