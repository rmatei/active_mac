module ActiveMac
  
  class Object
    
    # Holds a reference to the original AppleScript object
    attr_accessor :reference
    
    # Create a new object from an AppleScript reference, complete with accessors based on dictionary
    def initialize(applescript_reference)
      # raise ArgumentError, "Objects must be initialized from an Appscript::Reference" unless applescript_reference.instance_of? Appscript::Reference
      self.reference = applescript_reference
      build_properties
      build_commands
    end
    
    # These methods should carry over from the reference
    [:properties, :elements, :commands, :keywords].each do |method|
      define_method method do
        self.reference.send method
      end
    end
    
    private
    
    def build_properties
      properties.each do |property|
        
        # Readers
        self.class.send(:define_method, property) do
          returning reference.send(property).get do |result|
            result.map! { |element| Object.new(element) } if result.class == Array
          end
        end
        
        # Writers
        self.class.send(:define_method, "#{property}=") do |value|
          reference.send(property).set value
        end
        
      end
    end
    
    def build_commands
      commands.each do |command|
        self.class.send(:define_method, command) do |*arguments|
          reference.send(command, arguments.first)
        end
      end
    end
    
  end
  
end