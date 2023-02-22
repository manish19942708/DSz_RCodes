airquality <- datasets::airquality 
datasets::airquality 
### top 10 rows and last 10 rows
head(airquality,10) 
tail(airquality,10) 

### columns
airquality[,c(1,2)] 
df<- airquality[,-6] 
df
airquality$Ozone 

#### summary
summary(airquality$Ozone) 
summary(airquality) 

###### plot data
plot(airquality$Wind) 
plot(airquality$Wind,airquality$Temp,type = "p") 
plot(airquality) 

### points & line
plot(airquality$Wind,type = "l")  
plot(airquality$Wind,xlab = 'Ozone concentration',ylab = "Nos of instances",main ="Ozone level in my city",col= 'red') 

### Horizontal bar plot
barplot(airquality$Ozone,xlab = 'Ozone concentration',ylab = "ozone level",main ="Ozone level in my city",col= 'red',horiz =F ,axes =  T) 

##### vERTICAL BARPLOT
barplot(airquality$Ozone,xlab = 'Ozone concentration',ylab = "ozone level",main ="Ozone level in my city",col= 'red',horiz =T ,axes =  F) 

### histogram 
hist(airquality$Temp) 
hist(airquality$Temp,main = 'Solar radiation values in air',xlab="solar rad" ,col='red')  

#### single box plot
boxplot(airquality$Wind,main="Boxplot") 
boxplot.stats(airquality$Wind)$out 
