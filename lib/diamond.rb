module Diamond
  SPACE = "-".freeze
  LETTERS = ("A".."Z").to_a.freeze

  def self.symmetry(collection)
    collection + collection.reverse[1..-1]
  end

  def self.print_diamond(letter)
    height = LETTERS.index(letter) || raise(ArgumentError, "Unsupported letter #{letter}")

    lines = (0..height).map do |current_height|
      half_line = Array.new(height + 1, SPACE)
      half_line[-1 - current_height] = LETTERS[current_height]
      _full_line = symmetry(half_line)
    end

    symmetry(lines).each { |line| puts line.join }
  end
end
