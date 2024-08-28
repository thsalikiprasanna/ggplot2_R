#creating basic plots in R using ggplot2 package with iris data

install.packages("ggplot2")    #install ggplot2 packlage if you haven't already
library(ggplot2)               #load ggplot2 
data("iris")                   #loading iris dataset

#creating scatter plot using iris dataset
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(title = "Sepal Length vs Sepal Width",
       x = "Sepal Length",
       y = "Sepal Width") +
  theme_minimal()

#creating histogram of petal.length for iris data
ggplot(iris, aes(x = Petal.Length, fill = Species)) +
  geom_histogram(binwidth = 0.5, position = "dodge", color = "black") +
  labs(title = "Distribution of Petal Length",
       x = "Petal Length",
       y = "Count") +
  theme_minimal()

#creating box plot of petal.length for iris data
ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Petal Length by Species",
       x = "Species",
       y = "Petal Length") +
  theme_minimal()

