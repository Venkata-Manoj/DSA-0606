# Step 1: Import the data
student_data <- read.csv("C:/Users/bsuha/Downloads/DSA - 0606 - DHV/Ex 4 - Set 14/student.csv")
head(student_data)  # Check the data

# Step 2: Histogram of Math_Score
hist(student_data$Math_Score, 
     main = "Histogram of Math Scores", 
     xlab = "Math Score", 
     ylab = "Frequency",
     col = "lightblue",
     border = "black",
     breaks = 5)  # Adjust number of bars

# Step 3: Boxplot of Science_Score by Gender
boxplot(Science_Score ~ Gender, 
        data = student_data,
        main = "Science Scores by Gender",
        xlab = "Gender",
        ylab = "Science Score",
        col = c("pink", "lightblue"))