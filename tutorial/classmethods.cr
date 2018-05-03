# can do it like this

module CaesarCipher
  def self.encrypt(s : String)
    s.chars.map { |char| ((char.upcase.ord - 52) % 26 + 65).chr }.join
  end
end

# can also define like this, outside module

def CaesarCipher.decrypt(s : String)
  encrypt(s)
end
