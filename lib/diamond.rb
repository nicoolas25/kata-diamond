module Diamond
  SPACE = "-".freeze
  LETTERS = ("A".."Z").to_a.freeze

  def self.print_diamond(letter)
    height = LETTERS.index(letter)

    quarters = (0..height).map do |current_height|
      line = Array.new(height + 1, SPACE)
      line[current_height] = LETTERS[current_height]
      line
    end

    quarters.each { |row| puts row.reverse.join + row[1..-1].join }
    quarters.reverse[1..-1].each { |row| puts row.reverse.join + row[1..-1].join }
  end
end
