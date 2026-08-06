# Step 1: Import the dataset
energy_data <- read.csv("C:/Users/bsuha/Downloads/DSA - 0606 - DHV/Ex 4 - Set 14/data.csv")

# Step 2: View the first few rows (to check it loaded correctly)
head(energy_data)

# Step 3: Plot a Histogram
hist(energy_data$Units_Consumed, 
     main = "Histogram of Units Consumed", 
     xlab = "Units Consumed (kWh)", 
     ylab = "Frequency",
     col = "skyblue",
     border = "black")

# Step 4: Plot a Density Plot (smooth version of histogram)
plot(density(energy_data$Units_Consumed), 
     main = "Density Plot of Units Consumed", 
     xlab = "Units Consumed (kWh)", 
     ylab = "Density",
     col = "red",
     lwd = 2)

# Step 5: Overlay them together (optional but looks professional)
hist(energy_data$Units_Consumed, 
     main = "Histogram with Density Overlay", 
     xlab = "Units Consumed (kWh)", 
     ylab = "Frequency",
     col = "skyblue",
     border = "black",
     prob = TRUE)  # 'prob=TRUE' converts counts to probabilities
lines(density(energy_data$Units_Consumed), col = "red", lwd = 2)