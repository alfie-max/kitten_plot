require_relative 'image_csv'

module KittenPlot
  module CLI
    desc 'Gets latitude and longitude for each image and outputs to csv'
    arg_name 'Call with path to an image directory or nothing to use defaults'

    command :get_coordinates do |c|
      c.desc 'Describe a switch to get_coordinates'
      c.switch :s

      c.desc 'Describe a flag to get_coordinates'
      c.default_value 'default'
      c.flag :f

      DEFAULT_IMAGE_DIR = './gps_images'.freeze

      c.action do |_global_options, _options, args|
        @csv_filename =
          ImageCsv.new(args.first || DEFAULT_IMAGE_DIR).generate_csv
      end

      post do |_global, _command, _options, _args|
        puts "Finished generating #{@csv_filename}"
      end

      on_error do |exception|
        puts "ERROR: #{exception}"
      end
    end
  end
end
