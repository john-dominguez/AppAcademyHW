class Map

  def initialize
    @map = []     # => []
  end             # => :initialize

  def assign(key, value)
    exists = false                        # => false, false
    idx = nil                             # => nil,   nil
     @map.each_with_index do | pair, i |  # => [],    [["john", 69]]
        if pair.first == key              # => true
          exists = true                   # => true
          idx =i                          # => 0
        end                               # => 0
     end                                  # => [],    [["john", 69]]
    if exists                             # => false, true
      @map[idx].last = value              # ~> NoMethodError: undefined method `last=' for ["john", 69]:Array\nDid you mean?  last
    else
      @map << [key,value]                 # => [["john", 69]]
    end                                   # => [["john", 69]]
    [key,value]                           # => ["john", 69]
  end                                     # => :assign

  def lookup(key)
    @map.each {|pair| return pair.last if pair.first == key}
    nil
  end                                                         # => :lookup

  def remove(key)
    @map.reject! {|pair| pair.first == key}
    nil
  end                                        # => :remove

  def show
    deep_dup(@map)  # => [["john", 69]]
  end               # => :show

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }  # => ["john", 69], [["john", 69]]
  end                                                     # => :deep_dup
end                                                       # => :deep_dup

m = Map.new           # => #<Map:0x007fa2b684dbd0 @map=[]>
m.assign("john", 69)  # => ["john", 69]
m.lookup("john")      # => 69
m.show                # => [["john", 69]]
m.assign("john", 96)
m.show

# ~> NoMethodError
# ~> undefined method `last=' for ["john", 69]:Array
# ~> Did you mean?  last
# ~>
# ~> /Users/appacademy/Desktop/john/homeworks/W1D5/map.rb:17:in `assign'
# ~> /Users/appacademy/Desktop/john/homeworks/W1D5/map.rb:47:in `<main>'
