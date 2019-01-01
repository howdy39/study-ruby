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
