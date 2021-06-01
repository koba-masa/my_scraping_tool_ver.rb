class Selector
  def initialize(name, selector, attribute_key=nil)
    @name = name
    @selector = selector
    @attribute_key = attribute_key
  end

  def self.load(file_path)
    selectors = []
  end
end
