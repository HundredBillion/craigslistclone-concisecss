class Ad < ApplicationRecord
  has_many_attached :images
  #has_one_attached :image

  def thumbnail(input)
    # show thumbnails
    self.images[input].variant(resize:'100').processed
  end

  def main_image
    # display the first image in the database
    self.images[0].variant(resize:'200').processed
  end
end
