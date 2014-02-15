class Job
 attr_accessor :reader,:writer

  def initialize(reader,writer)
    @reader=reader
    @writer=writer
  end

  def do
    text=reader.read
    unless text.nil? || text.length==0
      writer.send(text)
      reader.removeFirstLine
    end
  end
end