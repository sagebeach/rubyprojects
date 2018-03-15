require 'distance_grid'
require 'binary_tree' #replace with algorithm filename: 'binary_tree', 'sidewinder',

grid = DistanceGrid.new(5, 5)
BinaryTree.on(grid) #call the class associated with the algorithm specified above: "BinaryTree", "Sidewinder",

start = grid[0, 0]
distances = start.distances

grid.distances = distances
puts grid

puts "path from northwest corner to southwest corner:"
grid.distances = distances.path_to(grid[grid.rows - 1, 0])
puts grid.to_s