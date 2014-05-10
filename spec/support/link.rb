def pub_date_to_datetime(str)
  date_to_array = str.split('/')
                     .map {|d| d.to_i }
  month = date_to_array[0]
  day = date_to_array[1]
  year = date_to_array[2]
  publication_date = DateTime.new(year, month, day)
end
