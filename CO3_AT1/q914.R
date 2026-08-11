# Load required libraries
library(ggplot2)
library(dplyr)

# ------------------------------------------------------------
# PROBLEM 9 – BEAN PLOT (Salaries by Branch)
# ------------------------------------------------------------

# Create the updated dataset (16 employees, 2 branches)
salaries <- data.frame(
  Employee = 1:16,
  Branch = rep(c("Branch A", "Branch B"), each = 8),
  Salary = c(25, 28, 30, 30, 30, 45, 48, 50,   # Branch A
             22, 24, 27, 27, 29, 42, 44, 46)    # Branch B
)

# Bean plot = violin (mirrored density) + jittered points
bean_plot <- ggplot(salaries, aes(x = Branch, y = Salary, fill = Branch)) +
  geom_violin(scale = "width", alpha = 0.6, trim = TRUE) +   # bean body
  geom_jitter(width = 0.15, size = 2.5, shape = 21, 
              fill = "black", color = "white", stroke = 0.5) + # points to show clusters
  labs(
    title = "Bean Plot - 192424350",
    y = "Salary (₹1,000s)",
    x = NULL
  ) +
  theme_minimal(base_size = 12) +
  theme(legend.position = "none")

# Display the plot
print(bean_plot)

# ------------------------------------------------------------
# PROBLEM 14 – VIOLIN PLOT (Weights by Package Type)
# ------------------------------------------------------------

# Create the updated dataset (20 packages, 2 types)
weights <- data.frame(
  PackageID = 1:20,
  Type = rep(c("Type 1", "Type 2"), each = 10),
  Weight = c(2, 3, 3, 4, 4, 4, 5, 6, 7, 10,     # Type 1
             4, 5, 5, 6, 6, 6, 7, 8, 9, 12)      # Type 2
)

# Violin plot with full tails
violin_plot <- ggplot(weights, aes(x = Type, y = Weight, fill = Type)) +
  geom_violin(trim = FALSE, alpha = 0.6) +        # full density shape
  geom_jitter(width = 0.1, size = 2, shape = 21, 
              fill = "black", color = "white", stroke = 0.5) + # optional raw points
  labs(
    title = "Violin Plot - 192424350",
    y = "Weight (kg)",
    x = NULL
  ) +
  theme_minimal(base_size = 12) +
  theme(legend.position = "none")

# Display the plot
print(violin_plot)