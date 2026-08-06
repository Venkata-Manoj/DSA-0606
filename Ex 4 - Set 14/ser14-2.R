# Step 1: Create the scatter plot
# 'cex' controls bubble size. We divide Peak_Hours by 2 so bubbles aren't too huge.
plot(energy_data$Temperature, 
     energy_data$Units_Consumed,
     main = "Temperature vs Units Consumed",
     xlab = "Temperature (°C)",
     ylab = "Units Consumed (kWh)",
     col = rgb(0, 0, 1, alpha = 0.6),  # Blue color with 60% transparency
     pch = 16,                          # Solid circles
     cex = energy_data$Peak_Hours / 2)  # Bubble size based on Peak_Hours

# Step 2: Add text labels to identify points (optional but helpful)
text(energy_data$Temperature, 
     energy_data$Units_Consumed, 
     labels = energy_data$Sector, 
     pos = 3,   # Position above the point
     cex = 0.7)