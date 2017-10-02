require('minitest/autorun')
require('minitest/rg')
require_relative('../library_books.rb')

class TestLibrary < Minitest::Test
  @library

  def setup
    @library = Library.new([{title: "lord_of_the_rings", rental_details: {
     student_name: "Jeff", date: "01/12/16"}, }])
  end

  def test_list_books
    assert_equal([{title: "lord_of_the_rings", rental_details: {
     student_name: "Jeff", date: "01/12/16"}, }], @library.list_books)
   end

   def book_details_by_title

   end
end
