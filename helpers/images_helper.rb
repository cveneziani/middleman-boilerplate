module ImagesHelper
  def blog_image_path(article, type)
    image_path("#{article.eponymous_directory_path}#{article.data[type]}")
  end

  def page_image_path(filename)
    path = current_page.eponymous_directory_path

    # remove index from path
    path.gsub!(/index\/\z/, '') if current_page.directory_index?

    # set to home if only slash
    path = 'home/' if path.blank?

    image_path("#{path}#{filename}")
  end
end
