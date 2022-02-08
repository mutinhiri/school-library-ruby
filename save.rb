require 'json'

class Save
  def save(people:, books:, rentals:)
    File.write('books.json', JSON.generate(people.map(&:t0_json))) unless people.empty?
  end
end