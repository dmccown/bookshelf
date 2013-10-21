module BooksHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def show_title?
    true
  end
end
