# Set a seed for reproducibility
set.seed(123)
# Number of employees
num_employees <- 20
# Generating random employee information
emp <- data.frame(
  id = 1:num_employees,
  name = paste("Employee", 1:num_employees),
  salary = sample(25000:80000, num_employees, replace = TRUE),
  start_date = as.Date(sample(seq(as.Date('2010-01-01'), as.Date('2023-01-01'), by="day"),
                              num_employees)),
  dept = sample(c("IT", "HR", "Finance", "Sales", "Operations"), num_employees, replace = TRUE)
)

print(emp)

write.csv(emp, "empdata.csv", row.names = FALSE)

Program9.R



emp_data <- read.csv("empdata.csv")

num_rows <- nrow(emp_data)
num_cols <- ncol(emp_data)
cat("Total number of rows:", num_rows, "\n")
cat("Total number of columns:", num_cols, "\n")

max_salary <- max(emp_data$salary)
cat("Maximum salary:", max_salary, "\n")

employee_max_salary <- emp_data[emp_data$salary == max_salary, ]
cat("Employee with maximum salary:\n")
print(employee_max_salary)

emp_IT <- subset(emp_data, dept == "IT")
cat("Employees working in the IT Department:\n")
print(emp_IT)

employees_IT_high_salary <- subset(emp_IT, salary > 20000)
cat("Employees in the IT Department with salary > 20000:\n")
print(employees_IT_high_salary)

# Write these employees to a new CSV file
write.csv(employees_IT_high_salary, "output.csv", row.names = FALSE)