json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :number_of_paper, :price, :publisher, :book_description, :avatar_1, :avatar_2, :avatar_3, :avatar_4
  json.url book_url(book, format: :json)
end
