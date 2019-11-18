class Image

def initialize (array)
  @picture = array
end

def get_ones
  ones = []
    @picture.each_with_index do |row, row_number|
      row.each_with_index do |item, col_number|
        if item == 1
        ones << [row_number, col_number]
      end
    end
  end
  ones
end

  
def blur!
  ones = get_ones
    @picture.each_with_index do |row, row_number|
      row.each_with_index do |item, col_number|
        ones.each do |new_coord_row, new_coord_col|
          
      end
    end
  end
end


def output_image
  @picture.each do | row |
    puts row.join
  end
end






image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image


end
