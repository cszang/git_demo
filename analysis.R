split(airquality, airquality$Month) |>
  lapply(na.omit) |>
  sapply(function(x) cor(x$Ozone, x$Temp))