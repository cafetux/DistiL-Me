require_relative 'readers/FileReader'
require_relative 'writers/Console'
require_relative 'Job'
require_relative 'Config'
require_relative 'writers/TweetWriter'

config = Configuration.new.get

reader = FileReader.new(config)
writer = TweetWriter.new(config)

job = Job.new(reader,writer)

job.do