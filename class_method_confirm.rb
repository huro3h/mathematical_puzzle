class A
  def self.method1
    p Module.nesting
  end
end
# A.method1
# => [A]

class B
  class << self
    def method2
      p Module.nesting
    end
  end
end
# B.method2
# => [#<Class:B>, B
