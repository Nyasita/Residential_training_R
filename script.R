library(readr)
gapminder_data <- read_csv("data/gapminder_data.csv")
#View(gapminder_data)
class(gapminder_data)
typeof(gapminder_data)


a<-c(1, 2, 3)
b<-c('d', 'e', 'f')
c<-c(1, 2, 'f')
class(a)
class(b)
class(c)


cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)

cats[1] #brings first column
cats[[1]] # brings first column but as a list within a list
cats$coat # brings values of the coats column as a list
cats["coat"] #brings contents of the first colum
cats[1, 1]
cats[, 1]
cats[1, ]

matrix_example <- matrix(0, ncol=6, nrow=3)
matrix_example
length(matrix_example)

age <- c(2, 3, 5)
cbind(cats, age)
nrow(cats)
newRow <- list("tortoiseshell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)
rm(cats$tortoiseshell)

levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))
human_age<-as.factor(cats$age)*7
cats
   






cbind(cats, human_age)
