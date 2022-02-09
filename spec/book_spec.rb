require './book'

describe Book do
  context 'test class creation' do
    title = 'Mabasa'
    author = 'Makuru'
    book = Book.new(title, author)

    it 'check title ' do
      expect(book.title).to eq(title)
    end

    it 'check author' do
      expect(book.author).to eq(author)
    end

    it 'Check if no rentals yet' do
      expect(book.rentals).to eq([])
    end
  end
end