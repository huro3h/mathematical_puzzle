gif_names = %w[
smile
sad
more_smile
lucky
surprise
wink
tears
sweat
mumu
kiss
tongueout
blush
wonder
snooze
love
grin
talk
yawn
puke
ikemen
otaku
ninmari
nod
shake
wry_smile
whew
clap
bow
roger
muscle
dance
komanechi
devil
star
heart
flower
cracker
cake
coffee
beer
handshake
yes
]

require 'open-uri'

def generate_uri_by(image_name)
  "https://www.chatwork.com/image/emoticon/emo_#{image_name}.gif"
end

def generate_filename_by(image_name)
  "chatwork_#{image_name}.gif"
end

# p gif_names

gif_names.each do |gif_name|
  raise 'Incorrect URL' unless generate_uri_by(gif_name)

  open(generate_uri_by(gif_name)) do |file|
    open(generate_filename_by(gif_name), "w+b") do |out|
      out.write(file.read)
      sleep 1
    end
  end
end
