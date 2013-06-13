# Exercise1A (optional). Here's an additional challenge for all of you who already
# finished Exercise1: Write a method teach_trick which allows you to teach tricks to
# specific instances of the dog class like this:

class Dog
  def initialize(name)
    @name = name
  end

  def method_missing(m, *args, &block)
    puts "#{@name} doesn't know how to #{m} yet!"
  end

  def eigenclass
    class << self; self; end
  end

  def teach_trick(symbol, &block)
      self.eigenclass.send(:define_method, symbol, &block)
  end
end

d = Dog.new('Dogface')
d.teach_trick(:dance) { "#{@name} is dancing!" }
puts
puts d.dance
d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
puts d.poo
puts
d2=Dog.new('Muttbutt')
puts d2.dance
d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
puts d2.laugh
puts d.laugh
puts
d3=Dog.new('Tre the Third')
puts d3.dance
puts d3.laugh