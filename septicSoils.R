# Data manipulation ----
# Read in the raw data files
  # Sample points within 100 ft buffer
  pt100 <- read.csv("pts100_alldata.csv")
  pt100 <- pt100[,-54]
  # Sample points within 100 ft buffer
  pt500 <- read.csv("pts500_alldata.csv")
  # Sample points within 100 ft buffer
  state <- read.csv("ptsstatewide_alldata.csv")
  state <- state[,-54]

# Combine data files into one dataframe
  alldat <- rbind(pt100, pt500, state)

# Have a look at the response
  unique(alldat$engstafdcd)
  