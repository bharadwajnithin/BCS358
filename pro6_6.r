data("mammals",package ="MASS")
pccor=cor(mammals$body,mammals$brain,method="pearson")
sccor=cor(mammals$body,mammals$brain,method="spearman")



cat(pccor,"\n")
cat(sccor,"n")

plot(mammals$body,mammals$brain,xlab="body weigth",ylab="braain weight",main="mammals body and weight")


log_body=log(mammals$body)
log_brain=log(mammals$brain)

plot(log_body,log_brain,xlab="log brain weigth",ylab="log body weigth",main="log brain vs body",col="red")