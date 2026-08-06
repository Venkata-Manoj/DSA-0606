# Step 1: Create the scatter plot with different colors for Gender
plot(student_data$Study_Hours, 
     student_data$Math_Score,
     main = "Study Hours vs Math Score",
     xlab = "Study Hours per Day",
     ylab = "Math Score",
     col = ifelse(student_data$Gender == "Female", "red", "blue"),
     pch = 16,
     cex = 1.5)

# Step 2: Add a legend
legend("bottomright", 
       legend = c("Female", "Male"), 
       col = c("red", "blue"), 
       pch = 16)

# Step 3: Add a regression line (shows the overall trend)
model <- lm(Math_Score ~ Study_Hours, data = student_data)
abline(model, col = "green", lwd = 2)

# Step 4: (Optional) Print the regression summary to see the numbers
summary(model)