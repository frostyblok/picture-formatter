require_relative './helper/photo_helper.rb'

class PhotoRename
  include PhotoHelper

  def initialize(str)
    @str = str
  end

  def perform
    rows = convert_photo_string_to_array(@str)
    @photo_arrangement = arrange_photos_based_on_time rows
    clean_photo_arrangement_response
  end

  private

  def clean_photo_arrangement_response
    @photo_arrangement.sort_by! do |x|
      # Magic number represents identifier (index) for sorting
      x[2]
      # Remove index element after sorting with it.
      x.pop
    end.join(" ")
  end
end
