aq_months <- unique(airquality$Month)
no_months <- length(aq_months)
corels <- numeric(no_months)

for (i in 1:no_months) {
  this_month <- na.omit(airquality[airquality$Month == aq_months[i], ])
  corels[i] <- cor(this_month$Ozone, this_month$Temp)
}

corels