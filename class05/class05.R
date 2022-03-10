# Class 05 Data Visualization

#This is the "base" R plot
plot(cars)

#We are going to get a new plotting package called ggplot2

#install.packages("ggplot2")
#now we need to call/load the package
library(ggplot2)

#This sets up the plot
ggplot(cars)
gg<- ggplot(data=cars) + aes(x=speed , y=dist) + geom_point()
gg

#One last thing. Lets add a line to the data
gg + geom_smooth()

#I want a linear model
gg + geom_smooth(method="lm", se=FALSE)

#my own attempt
gg + geom_smooth(method="lm", se=FALSE) + labs(title= "Speed and Stopping Distances of Cars", x="Speed (MPH)", y= "Stopping distance (ft)" , 
                          subtitle= "Your informative subtitle text here", caption="Dataset:'Cars'") + theme_bw()

# RNASeq experiment data set
# Read the data into R
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)
#How many genes in data set rows?
nrow(genes)
#How many columns and its names?
ncol(genes)
colnames(genes)
# Using the table() function to find how many up regulated genes
table(genes$State)
# Rounding
round(table(genes$State)/nrow(genes) *100 , 2)

#Complete code for plot
p <- ggplot(genes) + aes(x=Condition1, y=Condition2, col=State) + geom_point()

#Change color and add labels
p + scale_colour_manual( values=c("blue","gray","red") ) + labs(title= "Gene Expression Changes Upon Drug Treatment",
                                                                x= "Control(no drug)" , y= "Drug Treatment")
#Install package for PDF
#install.packages("tinytex")






