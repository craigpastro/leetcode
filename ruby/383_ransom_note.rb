# 383. Ransom Note
# Easy
#
# Given two stings ransomNote and magazine, return true if ransomNote can be
# constructed from magazine and false otherwise.
#
# Each letter in magazine can only be used once in ransomNote.

def can_construct(ransom_note, magazine)
  h = Hash.new(0)

  magazine.each_char do |c|
    h[c] += 1
  end

  ransom_note.each_char do |c|
    return false if (h[c]).zero?

    h[c] -= 1
  end

  true
end
