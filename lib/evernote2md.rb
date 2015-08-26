require "evernote2md/version"
require 'nokogiri'

module Evernote2md
  def self.compile(file, output_dir)
    xml_file = File.new(file)
    xml_notes = Nokogiri::XML(xml_file).xpath('//note')
    xml_notes.each do |note|
      note_to_save = Note.new(note.xpath('title').first.text, note.xpath('content').first.text)
      puts "Saving note: #{note_to_save.title}"
      IO.write(File.join(output_dir, note_to_save.title + '.txt'), note_to_save.text)
    end

  end

 class Note
    
   attr_accessor :title, :text

   def initialize(title, text)
     @title = title
     @text = Nokogiri::XML(text).xpath('//en-note').first.text
   end

   def to_text
     "#{@title}\n#{@text}"
   end
 end 
end
