# user = User.new
# user.name = "howdy39"
# user.name # => "howdy39"

class User
  def name=(name)
    @name = name
  end
  def name
    @name
  end
end

class User2
  attr_accessor :name
  #attr_reader :name
  #attr_writer :name
end

class User3
  attr_accessor :name, :address, :email

  def profile
    "#{name}/#{@name}/#{address}/#{email}"
  end

  def name
    'hogehoge' # ゲッターだけ上書きとかも併用できる
  end
end
