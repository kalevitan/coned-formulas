require 'rubygems'
require 'nokogiri'

#change file name to match current
file_name = "coned-xml-spring-summer-2015.xml"

  #work your magic, ruby
  text = File.read(file_name)
  content = text.gsub(/<\/([A-Z]{2})>([^\r])<\1>/, "\n").gsub(/(RM\s.*?,)/, "\n\\1").gsub("Lower\sLevel", "\nLower\sLevel").gsub("Gym", "\nGym").gsub("&","&amp;").gsub(/AM(\s-\s)(.*\s)PM/, "a.m.\\1\\2p.m.").gsub(/\sPM(\s-\s)(.*\s)PM/,"\\1\\2p.m.").gsub(/\sAM(\s-\s)(.*\s)AM/,"\\1\\2a.m.").gsub(":00","").gsub("<fees aid:", "\n<fees aid:").gsub("<new>NEW</new>","\s\s\s<Image href="'"file:///Volumes/Communications/assets/New.eps"'"></Image>").gsub("><", ">\n<").gsub("\n</Image>", "</Image>").gsub("</fees>\n</offering>", "</fees></offering>")

  #write changes to the file
  File.open(file_name, "w") { |file| file.puts content }
