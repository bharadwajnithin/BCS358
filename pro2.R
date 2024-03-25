m_r <- c(50, 60, 70, 80, 90, 100, 110, 120, 130, 150)
m_e <- c(30, 35, 40, 50, 55, 60, 65, 70, 75, 80, 85)

profit <- m_r - m_e

tax_rate <- 0.30

profit_after_tax <- profit*(1 - tax_rate)

profit_margin <- (profit_after_tax / m_r) * 100
mean_profit_after_tax <- mean(profit_after_tax)

good_months <- profit_after_tax > mean_profit_after_tax
bad_months <- profit_after_tax < mean_profit_after_tax

best_month <- which.max(profit_after_tax)
worst_month <- which.min(profit_after_tax)
profit=round(profit*1000,2)
profit_after_tax=round(profit_after_tax*1000,2)
profit

print(m_r)
print(m_e)
print(profit)
print(profit_after_tax)
print(mean_profit_after_tax)
print(good_months)
print(bad_months)
print(best_month)
print(worst_month)
