#Test driver code for MenuMethods
require_relative 'inventory2'
require_relative 'MenuMethods'

testrun = Inventory2.new

car1 = Cars2.new(2014, "Toyota", "Rav4", "Red", 29000)
car2 = Cars2.new(2019, "Honda", "Civic", "Blue", 24000)
car3 = Cars2.new(2019, "alfa romeo", "stelvio", "Green", 60000)
car4 = Cars2.new(2019, "maserati", "ghibli","Green", 75000)
car5 = Cars2.new(2019, "lamborghini", "aventador", "maroon", 200000)
car6 = Cars2.new(2019, "ferrari", "812 superfast", "purple", 195000)

testrun.list(car1)
testrun.list(car2)
testrun.list(car3)
testrun.list(car4)
testrun.list(car5)
testrun.list(car6)

MenuMethods.menu(testrun)
