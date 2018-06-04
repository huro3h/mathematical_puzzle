# q001
# 10進数で10以上の10 ,2 ,8進数のいずれで表現しても回文数になる最小数

# 終わりと始まりが2進数で同じ数字 -> 0は不適切, 1
# 2進数で一番右が1 -> 必ず奇数
# 奇数だけを探す為、2ずつインクリメント

# def palindrome(num, decimal = 10)
#   num.to_s(decimal) == num.to_s(decimal).reverse
# end

# num = 11

# loop do
#   if palindrome(num) && palindrome(num, 8) && palindrome(num, 2)
#     p num
#     p num.to_s(8)
#     p num.to_s(2)
#     break
#   end
#   num += 2
# end
