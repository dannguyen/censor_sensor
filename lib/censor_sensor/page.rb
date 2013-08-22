module CensorSensor
  class Page

    attr_reader @file_name
    def initialize(page_filename, file_type)
      @file_name = page_filename
      @file_type = file_type
    end

    def image
      @_image ||= extract_image(@filename)
    end




    private

    # returns a CensorSensor::Image instance
    def extract_image(filename)
      CensorSensor::Image.extract_from_file(fname, ftype)
    end
    

    
  end
end