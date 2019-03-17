require "yaml"
require "pry"

def load_library(file_path)
  file = YAML.load_file(file_path)
  new_hash = {}
  new_hash["get_meaning"] = {}
  new_hash["get_emoticon"] = {}
  file.each do |meaning, emoticons_array|
    new_hash["get_meaning"][emoticons_array[2]] = meaning
    new_hash["get_emoticon"][emoticons_array[1]] = [emoticons_array[2]]
  end
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

binding.pry