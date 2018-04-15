require 'csv'
require_relative 'image'

class ImageCsv
  CSV_COLUMN_TITLES = %w[
    Latitude
    Longitude
  ].freeze

  def initialize(image_dir)
    unless File.directory?(image_dir)
      raise ArgumentError, 'Arg must be a directory'
    end
    @image_files = Dir.glob("#{image_dir}/**/*.jpg")
  end

  def generate_csv
    timestamp = Time.now.strftime('%Y%j%d-%H:%M:%S')
    csv_filename = "cat_coordinates_csv_#{timestamp}.csv"

    CSV.open(csv_filename, 'wb') do |csv|
      csv << CSV_COLUMN_TITLES

      @image_files.each do |image_file|
        csv << Image.gps_coordinates(image_file)
      end
    end

    csv_filename
  end
end
