def island_perimeter(grid)
  m = grid.size
  n = grid[0].size
  land = 0
  overlap = 0
  (0...m).each do |i|
    (0...n).each do |j|
      next unless grid[i][j] == 1

      land += 1
      overlap += 1 if i + 1 < m && grid[i + 1][j] == 1
      overlap += 1 if j + 1 < n && grid[i][j + 1] == 1
    end
  end
  4 * land - 2 * overlap
end
