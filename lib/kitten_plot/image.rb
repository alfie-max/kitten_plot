require 'exifr/jpeg'

class Image

  def initialize(image_file)
    unless File.exist?(image_file)
      raise ArgumentError, "#{image_file} is not a valid file"
    end

    @image_file = image_file
  end

  def self.gps_coordinates(image_file)
    new(image_file).coordinates
  end

  def coordinates
    [latitude, longitude]
  end

  private

  def latitude
    exif&.gps&.latitude
  end

  def longitude
    exif&.gps&.longitude
  end

  def exif
    @exif ||= EXIFR::JPEG.new(@image_file)
  end
end
