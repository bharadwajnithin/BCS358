data("mammals",package = "MASS")
pcorr=c(mammals$body,mammals$brain,method="pearson")
scorr=c(mammals$body,mammals$brain,method="spearman")


cat("preson correlation :",pcorr,"\n")
cat("spearman correlation:",scorr,"\n")



plot(mammals$body,mammals$brain,xlab="bodyweight",ylab="brain weight",main="mammals bodyweight vs brain weitht")
 log_body=log(mammals$body)
 log_brain=log(mammals$brain)
 
 
 plot(log_body,log_brain,col="red",xlab="logbdyyy weithit",ylab="logbrain weight",main="log ofmammals body vs brain weight ")