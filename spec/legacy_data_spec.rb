require('rspec')
require('legacy_data')

describe('transform') do
  it("takes hash data and transforms it into a has where the values and keys switch") do
    transform(2 => ["D","G"]).should(eq({"d"=> 2, "g"=>2}))
  end  
  it("transforms for many pair with many values") do
    transform(3  => ["B", "C", "M", "P"]).should(eq({"b"=>3, "c"=>3, "m"=>3, "p"=>3}))
  end
  it("transforms many pairs in a hash") do
    transform({ 1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2  => ["D", "G"],
    3  => ["B", "C", "M", "P"],
    4  => ["F", "H", "V", "W", "Y"],
    5  => ["K"],
    8  => ["J", "X"],
    10 => ["Q", "Z"]
  }
  ).should(eq({ "a" => 1, "b" => 3,  "c" => 3, "d" => 2, "e" => 1,
    "f" => 4, "g" => 2,  "h" => 4, "i" => 1, "j" => 8,
    "k" => 5, "l" => 1,  "m" => 3, "n" => 1, "o" => 1,
    "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1,
    "u" => 1, "v" => 4,  "w" => 4, "x" => 8, "y" => 4,
    "z" => 10
  }))
  end
end
