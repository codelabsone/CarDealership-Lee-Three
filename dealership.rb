puts "Welcome to European Imports!!! How much can you spend today?"

budget = gets.chomp.to_i

puts "Your budget is $#{budget}. Here are your choices:\n"

prices = [100, 1000, 10000, 100000, 1000000]
cars = ["Nothing", "A ride home", "Our tow truck", "Jaguar", "Lamborghini"]

loop_var = 0
while budget >= prices[loop_var]
    puts "-#{cars[loop_var]}, $#{prices[loop_var]}\n"
    loop_var += 1
end
