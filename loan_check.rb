def check_loan_elegibility(customer)
  if customer[:age] >= 18 && customer[:credit_score] >= 600 && customer[:income] >= 3000
    "Approved"
  else
    "Denied"
  end
end