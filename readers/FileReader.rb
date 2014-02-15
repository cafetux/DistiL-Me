require 'fileutils'
require_relative '../utils/ConfigArgumentCheck'

class FileReader
  include ConfigArgumentCheck
  attr_accessor :sentences,:fileName

  def initialize(config)
    checkIsPresent(config,:filename)
    @fileName =config[:filename]
    puts config[:filename]
    puts "read datas from file '"+@fileName+"'"
    @sentences=File.open(@fileName, "r")
  end
  def read
     return sentences.each_line.first
  end
  def removeFirstLine
    File.open(fileName+".tmp", "w") do |out_file|
      lineNumber=0
      File.foreach(fileName) do |line|
        out_file.puts line unless lineNumber==0
        lineNumber+=1
      end
    end
    FileUtils.mv(fileName+".tmp", fileName)
  end
end