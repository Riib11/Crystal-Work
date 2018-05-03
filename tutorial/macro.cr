macro define_method(name, content)
    def {{name}}
        {{content}}
    end
end

define_method foo, 1 + 1
puts foo

# there's more on this at https://crystal-lang.org/docs/syntax_and_semantics/macros.html
