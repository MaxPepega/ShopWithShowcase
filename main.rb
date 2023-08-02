require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'
require_relative 'lib/product_collection'

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

leon = Movie.new(title: 'Леон', year: '1994', director: 'Люк Бессон', price: 990, amount: 5)

puts "Вот какие товары у нас есть:"
puts
product.each { |product| puts product }


puts "Вот так они изменилися Леон"
leon.update(amount: 1000)
puts leon

films_from_file = Book.from_file('./data/books/01.txt')
puts films_from_file
puts
puts "_____________________________________________________________"
collection = ProductCollection.from_dir(File.dirname(__FILE__ ) + '/data')
collection.sort!(by: :price , order: :asc)
collection.to_a.each do |product|
  puts product
end