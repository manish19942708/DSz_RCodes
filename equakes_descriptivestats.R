e_quakes <- datasets::quakes
datasets::quakes
### top 10 rows and last 10 rows
head(quakes,10) 
tail(quakes,10) 

### columns
quakes[,c(1,2)] 
e-quakes<- quakes[,-6] 
e-quakes
quakes$depth 

#### summary
summary(quakes$depth) 
summary(quakes) 

###### plot data
plot(quakes$mag) 
plot(quakes$mag,quakes$depth,type = "p")  
plot(quakes) 

### points & line
plot(quakes$mag,type = "l")  
plot(quakes$mag,xlab = 'quakes magnitude',ylab = "Nos of instances",main ="quakes level",col= 'red') 

### Horizontal bar plot
barplot(quakes$mag,xlab = 'quakes magnitude',ylab = "Nos of instances",main ="quakes level",col= 'red',horiz =F ,axes =  T) 

##### vertical BARPLOT
barplot(quakes$mag,xlab = 'quakes magnitude',ylab = "Nos of instances",main ="quakes level",col= 'red',horiz =T ,axes =  T) 
### histogram 
hist(quakes$mag) 
hist(quakes$depth,main = 'quakes magnitude',xlab="magnitude" ,col='red')   

#### single box plot
boxplot(quakes$mag,main="Boxplot") 
boxplot.stats(quakes$mag)$out 

### Multiple box plot
boxplot(quakes[,1:4],main= 'multiple') 

#margin of the grid (mar)
#nos of rows and columns(mfrow)
#weather a border is to be included(bty)
#position of labels(las=1 for horizontal ,las=0 for vertical)
#bty -box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0 ,bty="o") 
plot(quakes$mag)
plot(quakes$depth,quakes$mag)
plot(quakes$mag,type = "l")
barplot(quakes$mag,xlab = 'quakes magnitude',ylab = "Nos of instances",main ="quakes level",col= 'red',horiz =F ,axes =  T) 
hist(quakes$depth)
boxplot(quakes$stations)
boxplot(quakes[0:4] ,main="multiple Box Plot")

# std diviation , variance ,skewness ,kurtosis
sd(e_quakes$depth) 
skewness(e_quakes$depth) 
#Error in skewness(e_quakes$depth) : could not find function "skewness" so install function after browsing in rdocumentation
skewness(e_quakes$depth) 
kurtosis(e_quakes$depth) 
