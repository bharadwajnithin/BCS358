itemcode=c(1001:1005)
itemcatagory=c("Elecctronis","desktop supplies","office subblies","usb","cd drive")
itemprice=c(700,400,3000,300,100)

items_df=data.frame(itemcode,itemcatagory,itemprice)



print(items_df)


hp_items=subset(items_df,itemprice>300)

print("more than 300 are:")

print(hp_items)

of_catg=subset(items_df,itemcatagory%in%c("desktop supplies","officesubblies"))


#new 


itemcode=c(1001,1002,1003,1004,1005)
itemQtyonhand=c(20,30,40,50,45)
itemRecorder=c(5,10,20,40,50)

new_df=data.frame(itemcode,itemQtyonhand,itemRecorder)


print("new data frame")
print(new_df)



mearge_ff=merge(items_df,new_df,by="itemcode")



print("mearge data is ")
print(mearge_ff)