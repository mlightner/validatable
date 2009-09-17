module Validatable 
  class ValidatesInclusionOf < ValidationBase #:nodoc:
    required_option :within
    option :exclusion

    
    def valid?(instance)
      value = instance.send(self.attribute)
      self.within.include?(value) ? true : false
    end
    
    def message(instance)
      super || "must be within the allowed range"
    end
  end
end

