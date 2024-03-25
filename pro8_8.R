data("airquality",package = "datasets")


names(airquality)=c("Ozone","Solar.R	","Wind","Temp","	Month","Day")



hist(airquality$Ozone,col="green",main="histii",xlab="air qualty fre",ylab = "air y alan")


hist(airquality$Ozone,col="skyblue",main="histii",xlab=" ",ylab = " ")


hist(airquality$Ozone,col="cyan",main="histii",xlab="air qualty fre",ylab = "air y alan",xlim=c(0,150),ylim = c(0,40))

cleandata=na.omit(airquality$Ozone)



hist(cleandata,col="pink",main="histogram of clean atfa",xlab="freaquency",ylab="ozone leavels")

lines(density(cleandata),col="red")

