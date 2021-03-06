% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fishpal.R
\name{fishpal}
\alias{fishpal}
\title{Generate color palettes from different fish species.}
\usage{
fishpal(name = c("juvsteel", "adultsteel", "adultchinook"), n,
  type = c("discrete", "continuous"))
}
\arguments{
\item{name}{The name of the color palette you want to use from the fishpals_colors list.
Options are "\code{juvsteel}" for juvenile steelhead, "\code{adultsteel}" for adult
steelhead, and "\code{adultchinook}" for adult Chinook salmon.}

\item{n}{The number of colors needed}

\item{type}{Either discrete or continuous.}
}
\description{
Generate color palettes from different fish species.
}
\examples{
library(ggplot2)
ggplot(iris) +
geom_point(aes(x = Sepal.Width, y = Petal.Width, color = factor(Petal.Width)), size = 3) +
scale_color_manual(values = fishpal("adultchinook", 22, type = "continuous")) + theme_void()
}
