# nil
value = nil
puts value.nil?  # true
puts value.class  # NilClass


# ifは式
number = 100
message = if number > 50
            "50より大きい"
          else
            "50以下"
          end

puts message  # "50より大きい"


# 後置if
puts "後置if" if true # true
puts "後置if2" if false


# 配列
alphabets = ['a', 'b', 'c']
alphabets.each do |alphabet|
  puts alphabet # a, b, c
end

alphabets << 'd' # 配列に要素を追加

# for を使ってもかける（スコープ的によろしくない）
for alphabet in alphabets
  puts alphabet # a, b, c, d
end


# ハッシュ
user = {
  :key1 => 'k1',
  key2: 'k2', # :hoge => と同じ意味。最もよく利用される。
  'key3' => 'k3',
  4 => 'k4',
}
puts user # {:key1=>"k1", :key2=>"k2", "key3"=>"k3", 4=>"k4"}
puts user[:key2] # "k2"
user[:key2] = 'newkey2'
puts user[:key2] # "newkey2"

# キーと値だけを取得
# user.keys
# user.values

user.each do |key, value|
  puts "#{key}:#{value}"
end


# 配列の各要素から特定の属性だけを取り出す
class User
  attr_accessor :name
end

user1 = User.new
user1.name = 'taro'

user2 = User.new
user2.name = 'jiro'

user3 = User.new
user3.name = 'sabro'

users = [user1, user2, user3]

puts users.map(&:name) # taro, jiro, sabro
