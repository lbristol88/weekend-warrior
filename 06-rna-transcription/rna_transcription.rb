class Complement

  # mapping the DNA values to RNA
  DNA_TO_RNA = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  # reversing the keys and values of DNA_TO_RNA
  RNA_TO_DNA = DNA_TO_RNA.invert

  
  def self.of_dna(given)
    transformed = ""

    given.each_char do |i|
      raise ArgumentError unless DNA_TO_RNA.include?(i)
      transformed += DNA_TO_RNA[i]
    end
    return transformed
  end


  def self.of_rna(given)
    transformed = ""

    given.each_char do |i|
      raise ArgumentError unless RNA_TO_DNA.include?(i)
      transformed += RNA_TO_DNA[i]
    end
      return transformed
  end

end
