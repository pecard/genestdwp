context('vrings')
test_that("correct object size from vrings", {
  # fail to resolve object dimension
  library(genestdwp)
  library(sf)
  library(tidyverse)
  # Vector of distances
  dist = c(10, 20, 30, 40, 50)
  # Spatial join among visibility map and rings
  rings <- viring(x=visib, d = dist)
  expect_equal(dim(rings), c(1965,7))
})