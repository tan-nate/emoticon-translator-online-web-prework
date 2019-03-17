require "yaml"
require "pry"

def load_library(file_path)
  file = YAML.load_file(file_path)
  new_hash = {}
  
  file.each do |meaning, emoticons_hash|
    
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

binding.pry