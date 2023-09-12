# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Example seed data (modify as needed)
User.destroy_all
Expense.destroy_all
ExpenseCategory.destroy_all

User.create(name: 'User1', email: 'user1@example.com', password: 'password')
User.create(name: 'User2', email: 'user2@example.com', password: 'password')
# ...

expense_for_emi = Expense.find_or_create_by(description: "for EMI", amount: 500.0, date: Date.today - 2.day, currency: "AUD") 

Expense.find_or_create_by(description: "test", amount: 100.0, date: Date.today - 1.day, currency: "AUD") 

Expense.find_or_create_by(description: "test1", amount: 2000.0, date: Date.today + 1.day, currency: "AUD") 

Expense.find_or_create_by(description: "test1", amount: 5000.0, date: Date.today + 2.day, currency: "AUD") 

ExpenseCategory.find_or_create_by(name: "Car", expense_id: expense_for_emi.id)


