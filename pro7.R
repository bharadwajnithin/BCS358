itemcode=c(1001:1005)
itemcategory=c("elctronics","desktop supplies","offic supplies","usb","cd drive")
itemprice=c(700,300,350,400,800)



item_df=data.frame(itemcode,itemcategory,itemprice)



cat("data frame with information:\n")
print(item_df)

#summary statictics of item price
print(summary(item_df$itemprice))

#high price items
high_prices_items=subset(item_df,itemprice>350)
print("items greater than 350")
print(high_prices_items)

filtered_iitems=subset(item_df,itemcategory%in%c("offic supplies","desktop supplies"))

print(filtered_iitems)

itemcode=c(1001,1002,1003,1004,1005)
itemQtonhand=c(20,23,34,10,12)
itemrecorderlvl=c(5,10,8,3,7)

item_details=data.frame(itemcode,itemQtonhand,itemrecorderlvl)

print(item_details)


merged_data=merge(item_df,item_details,by="itemcode")

print("merged daata is :\n")
print(merged_data)