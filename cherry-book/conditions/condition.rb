def b(v)
  puts v
end

name = 'howdy39'

if name === 'howdy39'
  puts 'AAA'
end

name === 'hoge' && b('BBB') # bが呼ばれない
name === 'howdy39' && b('BBC') # bが呼ばれる
name === 'howdy39' && nil && b('BBD') # bが呼ばれない
name === 'hoge' || nil || b('BBE') # bが呼ばれる


