library(ggplot2)
cars93 <- MASS::Cars93
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "loess", formula = y ~ x, color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

#A, B, C, D, E
ggplot(data = cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point()+
  geom_smooth(se=T, method="lm", formula = y ~ x, color="#8fe388")+ ggtitle("Using lm") + 
  theme(plot.title= element_text(size = 14, color ="#8fe388"))
 

ggplot(data = cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point()+
  geom_smooth(se=T, method="glm", formula = y ~ x, color="#fe8d6d")+ ggtitle("Using glm") +
  theme(plot.title= element_text(size=14, color="#fe8d6d"))

ggplot(data = cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point()+
  geom_smooth(se=T, method="gam", formula = y ~ x, color="#7c6bea")+ ggtitle("Using gam") +
  theme(plot.title= element_text(size=14, color="#7c6bea"))

