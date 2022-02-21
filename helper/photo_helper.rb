module PhotoHelper
  DETAILS_POSITION = {
    photo_name: 0,
    city_name: 1,
    photo_date: 2
  }
  def convert_photo_string_to_array str
    require 'csv'
    
    rows = CSV.parse(str, skip_blanks: true)
    rows = rows.map{|row| row.map(&:strip)}
  end

  def arrange_photos_based_on_time rows
    new_photo_arrangement = []

    rows.group_by {|row| row[1]}.each do |_, photos_details|
      photos_details.sort_by {|photo_details| photo_details[DETAILS_POSITION[:photo_date]]}.each.with_index(1) do |detail, index|
        # The number of every photo in each group should have the same length (equal to the length
        # of the largest number in this group); thus, Mike needs to add some leading zeros to the numbers.
        format_photo_number = "%0#{photos_details.size.to_s.length}d" % (index)
        new_photo_arrangement.push(
          ["#{detail[DETAILS_POSITION[:city_name]]}#{format_photo_number}.#{detail[DETAILS_POSITION[:photo_name]].split('.').last}",
          rows.find_index(detail)])
      end
    end
    new_photo_arrangement
  end
end
0