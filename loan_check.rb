def check_loan_elegibility(customer_id)
  cache_key = "loan_elegibility:#{customer_id}"

  elegibility = Redis.current.get(cache_key)

  return elegibility if elegibility  customer = Customer.find(customer_id)

  eligibility = customer.eligible_for_loan? ? "Approved" : "Denied"

  Redis.current.setex(cache_key, 86400, eligibility) # Cache for 24 hours

  eligibility
end