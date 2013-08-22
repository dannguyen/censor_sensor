module CensorSensor
  class Producer

    def initialize(document, export_path)
      @document = document
    end


    def produce
      export collate render
      # simply returns path to where file exists
      return @export_path
    end

    # returns true
    # effect: files created
    def export

    end

    # returns array
    def collate

    end

    # returns array
    def render
      @pages.each do |page|

      end
    end

    # width: pixel of canvas
    # columns: pages per row


    def self.make_image
      Producer::Image.new(document_instance, export_path ).produce
    end

    def self.make_html
      Producer::HTML.new(document_instance, export_path ).produce
    end

  end
end