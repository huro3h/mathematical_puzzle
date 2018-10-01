# 配列から重複要素取り出し

array = %w[a b c d e f e g]
p array.select { |e| array.count(e) > 1 }.uniq
