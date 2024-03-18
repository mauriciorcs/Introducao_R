library(ggplot2)

df <- read.csv("gas_prices.csv")

colSums(is.na(df))

# Ajustar valores nulos na coluna 'Australia' usando a média
df$Australia[is.na(df$Australia)] <- mean(df$Australia, na.rm = TRUE)

df$Australia <- round(df$Australia, 2)
View(df)

plot(df$Year, df$Germany, type = "o", lwd = 1.1, col = "red",
     main = "Price is US$", xlab = "Year",
     ylab = "US$",
     ylim = c(1,10),
     xlim = c(1990, 2010))
lines(df$Year, df$France, type = "o", lwd = 1.1, col = "blue")
lines(df$Year, df$Australia, type = "o", lwd = 1.1, col = "green")
legend(1990,10,c("Germany", "France", "Australia"), col = c("red","blue","green"), pch = rep(20,2))

axis(1, at = seq(1990, 2010, by = 5))



