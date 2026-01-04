class BookInStock
# 2 another way to declare accessor methods
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

# 1 accessor methods
=begin
  def isbn
    @isbn
  end

  def price
    @price
  end
# setter methods end with = sign
  def price=(new_price)
    @price = new_price
  end
=end

  def price_in_cents
    (price * 100).round
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

b1 = BookInStock.new("isbn1", 3)
puts b1

b2 = BookInStock.new("isbn2", 3.14)
p b2

b3 = BookInStock.new("isbn3", "5.67")
p b3

book = BookInStock.new("isbn1", 33.80)
puts "ISBN  = #{book.isbn}"
puts "Price = #{book.price}"
puts "Price = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
