s = "Hello: I`m a l33t programmer!!"
puts s.split(/[^a-zA-Z]/).reject{|e| e == "I" || e.empty?}
puts s.split(/[^a-zA-Z]/).reject{|e| e == "I"}
puts s.scan(/[a-zA-Z]/).reject{|e| e == "I" || e.empty?}
puts s.split(/[^a-z^A-Z]/).reject{|e| e == "I"}