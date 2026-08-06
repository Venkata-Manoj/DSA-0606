# Step 1: Calculate the average Renewable_Usage for each Sector
avg_renewable <- aggregate(Renewable_Usage ~ Sector, data = energy_data, FUN = mean)
print(avg_renewable)

# Step 2: Create a bar chart
barplot(avg_renewable$Renewable_Usage, 
        names.arg = avg_renewable$Sector,
        main = "Average Renewable Energy Usage by Sector",
        xlab = "Sector",
        ylab = "Average Renewable Usage (%)",
        col = c("green", "blue", "orange"),
        ylim = c(0, 30))

# Step 3: Add the exact numbers on top of the bars
text(x = c(0.7, 1.9, 3.1), 
     y = avg_renewable$Renewable_Usage + 1, 
     labels = round(avg_renewable$Renewable_Usage, 1))