def make_zun_doko
  zun_or_doko = %w[zun doko].freeze
  zun_doko = []
  5.times do
    zun_doko << zun_or_doko.sample
  end
  zun_doko
end

def zundoko_challenge
  try_number = 1
  loop do
    break if make_zun_doko == %w[zun zun zun zun doko]
    try_number += 1
    sleep 0.05
  end
  "#{try_number} tried zundoko!"
end

p zundoko_challenge
