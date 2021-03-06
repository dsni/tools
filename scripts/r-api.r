#this script modified from "working with acs.R" by ezra haber glenn

install.packages("acs")

library(acs)

#download census key from http://api.census.gov/data/key_signup.html
api.key.install(key="YOURKEY")

#create geography -- customize tract codes based on your area of interest
dsni=geo.make(state=25,county=25,tract=c(080100,080300,080401,081800,082000,090200,090300,090400,090600,090700,091300,091400))

#fetch data -- table codes available here: https://github.com/dsni/data/blob/master/census/meta
data=acs.fetch(geography=dsni, table.number="B01003", endyear=2012)

#save as csv
write.csv(estimate(data),file="C:/data_estimate.csv")










