data("mammals",package="MASS")
pccor=c(mammals$body,mammals$brain,method="person")
sccor=c(mammals$body,mammals$brain,method="spearman")

print("correlation oof perason :")
cat(pccor)
plot(mammals$body,mammals$brain,col="blue",xlab = "brain we",ylab="body weigth",main="mammals body vs brain ")

log_body=log(mammals$body)
log_brain=log(mammals$brain)

plot(log_body,log_brain,col="red",xlab="",ylab="",main="log body_brain")