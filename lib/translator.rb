require "yaml"
require "pry"

def load_library(file_path)
  file = YAML.load_file(file_path)
  new_hash = {}
  new_hash["get_meaning"] = {}
  new_hash["get_emoticon"] = {}
  file.each do |meaning, emoticons_array|
    #binding.pry
    new_hash["get_meaning"][emoticons_array[1]] = meaning
    new_hash["get_emoticon"][emoticons_array[0]] = emoticons_array[1]
  end
  new_hash
end

def get_japanese_emoticon(file_path, english_emoticon)
  load_library(file_path)["get_emoticon"][english_emoticon]
end

def get_english_meaning
  # code goes here
end

#binding.pry