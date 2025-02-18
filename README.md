Open irb, and add those class
# Example Usage
```sh
isbn = ISBN13.new("978014300723")
# -----------
puts isbn.full_isbn # Output: 9780143007234
```
# Rspec testing
```sh
gem install rspec
rspec isbn13_spec.rb
```
# [ answer no 2 What Creates Good, Easy-to-Maintain Code? ] 


Clear and Concise Code Structure
Code should be readable and self-explanatory. Use meaningful variable and method names, and follow a consistent coding style.

# DRY (Don’t Repeat Yourself)
Extract reusable logic into helper methods, modules, or concerns. Use inheritance or composition instead of duplicating logic.

# Comprehensive Test Coverage
Write RSpec tests for business logic and Capybara for integration tests. Use factories (FactoryBot) and mocks/stubs to isolate tests.

# Good Documentation & Comments
Leave brief but meaningful comments where needed. Maintain updated README and API documentation.

# Error Handling & Logging
Use structured error handling with rescue blocks. Implement logging with Rails.logger for better debugging.

# Scalability & Performance Considerations
Optimize database queries with eager loading and indexing. Use background jobs for heavy tasks, and cache frequently used data.

# [ answer no 2 What Contributes to Poor Code?] 
 # Long, Complex Methods & Classes
Functions doing too many things become hard to debug and maintain.

 # Lack of Tests or Poor Test Practices
No tests lead to unstable code. Writing tests after development instead of TDD increases technical debt.

 # Hard-Coded Values & Magic Numbers
Avoid using raw numbers in logic; use constants or enums instead.

 # Overengineering & Premature Optimization
Don’t introduce unnecessary complexity if it's not solving a real problem.

 #  Inconsistent Naming Conventions
Using mixed naming styles creates confusion and inconsistency.

 # Ignoring Performance Issues
Not optimizing queries and operations leads to slow performance.
