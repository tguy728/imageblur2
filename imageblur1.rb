class Image

def initialize (array)
  @picture = array
end

def output_image
  @picture.each do | row |
    puts row.join
  end
end

def blur! (distance=1)
  distance.times do
    get_ones!
  end
end



private

def get_ones!
  ones = []
  @picture.each_with_index do |row, row_number|
    row.each_with_index do |item, col_number|
      get_ones << [row_number, col_number] if item == 1
  end
end

get_ones.each do |coord|
  @image[coord[0]][coord[1] + 1] = 1 if coord[1] + 1 <= @image[coord[0]].length - 1
  @image[coord[0]][coord[1] - 1] = 1 if coord[1] - 1 >= 0
  @image[coord[0] + 1][coord[1]] = 1 if coord[0] + 1 <= @image.length - 1
  @image[coord[0] - 1][coord[1]] = 1 if coord[0] - 1 >= 0
    end
  end  
end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image


image.blur!(2)
image.output_image
