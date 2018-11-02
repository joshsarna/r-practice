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

# Facets
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl) # this syntax accomplishes the same thing as line 34

# Facets Exercises
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ cty) # that's a mess
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)
# there are no cars with (five cyl and 4-wheel drive) or other combinations
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .) # class name then . gives rows; . then class name give cols
# faceting allows us to see trends without confounding variables
# color aesthetic allows us to see trends within trends (?)
# `facet_grid()` doesn't have nrow and ncol because these are set by the number of distinct values in the dataset
