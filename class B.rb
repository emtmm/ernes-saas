class C
end

class B<C
end

class A<B
end

a = A.new
b = B.new
c = c.new

print a.class.ancestors.include?(C)
print b.respond_to?('class')
print a.superclass == b.class
print A.superclass == B
