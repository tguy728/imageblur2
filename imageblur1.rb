class Image

def initialize (array)
  @picture = array
end

def output_image
  @picture.each do |row|
    puts row.join
  end
end

def blur! (distance=1)
  distance.times do
    get_ones!
  end
end




def get_ones!
  ones = []
  @picture.each_with_index do |row, row_number|
    row.each_with_index do |item, col_number|
      ones << [row_number, col_number] if item == 1
  end
end

ones.each do |coord|
  @picture[coord[0]][coord[1] + 1] = 1 if coord[1] + 1 <= @picture[coord[0]].length - 1
  @picture[coord[0]][coord[1] - 1] = 1 if coord[1] - 1 >= 0
  @picture[coord[0] + 1][coord[1]] = 1 if coord[0] + 1 <= @picture.length - 1
  @picture[coord[0] - 1][coord[1]] = 1 if coord[0] - 1 >= 0
    end
  end  
end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])


image.blur!(1)
image.output_image
