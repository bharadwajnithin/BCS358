a=matrix(1:9,nrow=3,ncol = 3)
b=matrix(9:1,nrow=3,ncol = 3)

a_t=t(a)
b_t=t(b)

sum=a+b

diff=a-b

prod=a%*%b


cat("matrix of a:","\n")
print(a)
print(b)
print(a_t)
print(sum)
print(diff)
print(prod)