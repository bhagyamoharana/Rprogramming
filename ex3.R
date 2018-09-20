
install.packages("plyr")

install.packages("dplyr")
library(plyr)
data(mtcars)

summarise(mtcars, mean(disp), mean(hp))

filter(mtcars, mtcars$disp == max(mtcars$disp))
groupedByCyl <- group_by(mtcars, cyl)
summarise(groupedByCyl, n(), mean(disp),
          mean(hp))
filter(groupedByCyl, disp == max(disp))