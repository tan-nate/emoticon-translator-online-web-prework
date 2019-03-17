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
  emoticon_hash = load_library(file_path)
  if emoticon_hash["get_emoticon"].keys.include?(english_emoticon)
    emoticon_hash["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, japanese_emoticon)
  emoticon_hash = load_library(file_path)
  if emoticon_hash["get_meaning"].keys.include?(japanese_emoticon)
    emoticon_hash["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

#binding.pry