
def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair

  src_array = []
  row_counter = 0


  while row_counter < src.length do
    column_counter = 0
    while column_counter < src[row_counter].length - 1 do
      src_array << "I love #{src[row_counter][column_counter].to_s} and #{src[row_counter][column_counter + 1].to_s} on my pizza"
      column_counter += 1
         
    end
      row_counter += 1

  end
  src_array
  
end



def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  src_array = []
  row_counter = 0 

  while row_counter < src.length do 
    column_counter = 0
    while column_counter < src[row_counter].length - 1 do
      src_array << src[row_counter].max(1)
      column_counter += 1
    end
    row_counter += 1
  end
  src_array.flatten

end

def total_even_pairs(src)
    total = 0
    row_counter = 0

  while row_counter < src.length do
    column_counter = 0 
    while column_counter < src[row_counter].length - 1 do
      
      
      if src[row_counter][column_counter].even? && src[row_counter][column_counter + 1].t.even?
        total += src[row_counter][column_counter].to_i + src[row_counter][column_counter + 1].to_i
        column_counter += 1
      else
        column_counter += 1
      end
      row_counter += 1
    end
  end
 total
end
