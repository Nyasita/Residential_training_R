cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)
cats <- read.csv(file = "data/feline-data.csv", stringsAsFactors = TRUE)
cats
file.show("data/feline-data_v2.csv")
cats <- read.csv(file="data/feline-data.csv", stringsAsFactors = TRUE)
cats
str(cats$likes_string)
names(cats)


#CHALLENGE 1
#Start by making a vector with the numbers 1 through 26. 
#Multiply the vector by 2, and give the resulting vector names A through Z (hint: there is a built in vector called LETTERS)

numbers=1:26
numbers <- numbers*2
names(numbers)<-LETTERS
numbers

#CHALLENGE 2
#Is there a factor in our cats data.frame? what is its name? 
#Try using ?read.csv to figure out how to keep text columns as character vectors instead of factors; 
#then write a command or two to show that the factor in cats is actually a character vector when loaded in this way.

sapply(cats,class) #the coat column contains factors by bringing all columns and their classes
names(Filter(is.factor,cats)) #brings only the column that has factors which is coat


#CHALLENGE 5
#Make another matrix, this time containing the numbers 1:50, with 5 columns and 10 rows. 
#Did the matrix function fill your matrix by column, or by row, as its default behaviour?
a_matrix__to_50<-matrix(seq(1:50), ncol = 5,nrow = 10)
a_matrix__to_50 #the matrix was filled columnwise by default so to change use byrow=T
?matrix

#CHALLENGE 6
#Create a list of length two containing a character vector for each of the sections in this part of the workshop:
#Data types
#Data structures
#Populate each character vector with the names of the data types and data structures we’ve seen so far.
data_types<-c("logical","double","complex","integer","character")
data_structures<-c("matrices","dataframes","vectors","arrays","lists")
data_types_and_structures<-list(data_types,data_structures)
data_types_and_structures #to view the list created
