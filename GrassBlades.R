# Daryion King
# 10/25/2026
# GrassBlades.R
# A R script using pnorm() and qnorm() 

# Defining normal parameters
mean_value <- 10
variance <- 2
sd_value <- sqrt(variance)   


# Probability between 9.5 and 11 mm
lower_length <- 9.5
upper_length <- 11

blade_probability <- pnorm(upper_length, mean_value, sd_value) - 
  pnorm(lower_length, mean_value, sd_value)

cat("Probability blade is between 9.5 and 11 mm:", blade_probability, "\n")


# Probability confirmation
lower_z <- (lower_length - mean_value) / sd_value
upper_z <- (upper_length - mean_value) / sd_value

z_probability <- pnorm(upper_z) - pnorm(lower_z)

cat("Probability from Z-scores for 9.5 and 11 mm:", z_probability, "\n")


# 2.5th percentile blade length
shortest_length <- qnorm(0.025, mean_value, sd_value)

cat("Blade length below shortest 2.5%:", shortest_length, "mm\n")


# Standardizing 2.5th percentile blade length
shortest_z <- (shortest_length - mean_value) / sd_value

cat("Z-score of shortest 2.5% blade:", shortest_z, "\n")




