require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

product = []

product << Movie.new(
  title: 'Леон', year: '1994', director: 'Люк Бессон', price: 990, amount: 5
)

product << Movie.new(
  title: 'Дурак', year: '2014', director: 'Юрий Быков', price: 390, amount: 5
)

product << Book.new(
  title: 'Идиот',
  genre: 'роман',
  author: 'Федор Достоевский',
  price: 1500,
  amount: 10
)

puts "Вот какие товары у нас есть:"
puts
product.each { |product| puts product }