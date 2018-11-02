# First Steps
library(tidyverse)
mpg
?mpg
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

# First Steps Exercises
ggplot(data = mpg)
nrow(mtcars)
ncol(mtcars)
ggplot(data = mpg) + geom_point(mapping = aes(x = hwy, y = cyl))
ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = drv))

# Aesthetic Mappings
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = class))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# Aesthetic Mappings Exercises
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
# here `color = "blue"` is an argument of aes() and not a manually-set aesthetic property;
# R is looking for a variable called "blue"; since it doesn't find it, it treats it as truthy
# manufacturer, model, trans, drv, and fl are categorical, although year could be used in a continuous way
# displ, cty, and hwy are continuous
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = cty))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = cty, size = cty))
?geom_point
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5), shape = 21, fill = "white", stroke = 5)
