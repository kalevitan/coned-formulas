require 'rubygems'
require 'nokogiri'

file_name = "test.xml"

#@categoryTags = /<\/([A-Z]{2})>([^\r])<\1>/
#@categoryTags_replacement = /\n/

  text = File.read(file_name)

  content = text.gsub(/<\/([A-Z]{2})>([^\r])<\1>/, "\n").gsub(/(RM\s.*?,)/, "\n\\1").gsub("Lower\sLevel", "\nLower\sLevel").gsub("Gym", "\nGym").gsub("&","&amp;").gsub(/AM(\s-\s)(.*\s)PM/, "a.m.\\1\\2p.m.").gsub(/\sPM(\s-\s)(.*\s)PM/,"\\1\\2p.m.").gsub(/\sAM(\s-\s)(.*\s)AM/,"\\1\\2a.m.").gsub(":00","").gsub("<fees aid:", "\n<fees aid:").gsub("<new>NEW</new>","\s\s\s<Image href="'"file:///Volumes/Communications/assets/New.eps"'"></Image>").gsub("><", ">\n<").gsub("\n</Image>", "</Image>").gsub("</fees>\n</offering>", "</fees></offering>")

  # To merely print the contents of the file, use:
  # puts new_contents

  # To write changes to the file, use:
  File.open(file_name, "w") { |file| file.puts content }

# doc = Nokogiri.XML(file_name)
# element = doc.at('ConnectionString')
# element.content = "MY NEW TEXT"

# File.open(file_name, "w") {|file| file << puts }
