require 'etc'
content = "I am the cow"
user = Etc.getlogin
filen = 'C:\Users\%s\Desktop\tape.txt' % [user]
f = File.new(filen, 'w+')
f.write(content)