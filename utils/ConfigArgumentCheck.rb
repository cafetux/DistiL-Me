module ConfigArgumentCheck
  def checkIsPresent(configMap,property)
    if configMap[property].nil?
      puts "ERROR: '" + property.to_s + "' is required on property map"
      raise "'" + property.to_s + "' is required on property map"
    end

  end
end