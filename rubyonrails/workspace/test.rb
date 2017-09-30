puts "hello"

some_var = "false"
another_var = "nil"

case some_var
 when "pink elephant" then puts "Don't think about pink element"
 when false then puts "Looks like this one should execute"
 else puts "I guess nothing matched... but why?"
end

case another_var
	when nil then puts "Question mark in the method name"
	else puts "I guess nothing matched... but why?"
end


