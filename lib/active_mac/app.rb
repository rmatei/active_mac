module ActiveMac
  
  class App < Object
    
    def self.find(name)
      raise ArgumentError, "Need to pass in an app name, e.g. ActiveMac::App.find('iTunes')" unless name.instance_of? String
      ActiveMac::Object.new(Appscript.app(name))
    end
        
  end
  
end