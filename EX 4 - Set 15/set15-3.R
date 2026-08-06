# Step 1: Convert Exam_Date to Date format
student_data$Exam_Date <- as.Date(student_data$Exam_Date)

# Step 2: Extract the Month (e.g., "2025-01", "2025-02", "2025-03")
student_data$Month <- format(student_data$Exam_Date, "%Y-%m")

# Step 3: Calculate average Math score for each month
monthly_avg <- aggregate(Math_Score ~ Month, data = student_data, FUN = mean)
print(monthly_avg)

# --- THE FIX STARTS HERE ---

# Step 4: Convert the 'Month' text to an actual Date (so R knows how to space it)
# We add "-01" to make it the 1st day of that month (e.g., "2025-01-01")
monthly_avg$Month_Date <- as.Date(paste0(monthly_avg$Month, "-01"))

# Step 5: Plot the line chart using the new Date column
plot(monthly_avg$Month_Date, 
     monthly_avg$Math_Score,
     type = "o",          # 'o' means line with points
     main = "Monthly Average Math Scores",
     xlab = "Month",
     ylab = "Average Math Score",
     col = "blue",
     lwd = 2)

# Step 6: Apply 2-point Moving Average Smoothing
library(zoo)  # If you haven't installed it, run: install.packages("zoo")
monthly_avg$Smooth <- rollmean(monthly_avg$Math_Score, k = 2, fill = NA)

# Step 7: Add the smoothed line (using the Date column for x-axis)
lines(monthly_avg$Month_Date, 
      monthly_avg$Smooth, 
      col = "red", 
      lwd = 2, 
      lty = 2)  # lty=2 makes it a dashed line

# Step 8: Add a legend
legend("topleft", 
       legend = c("Actual", "Moving Average (2-month)"), 
       col = c("blue", "red"), 
       lwd = 2, 
       lty = c(1, 2))