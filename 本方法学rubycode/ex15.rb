filename = ARGV.first

prompt = "> "
txt = File.open(filename)

puts "Here's your file: #{filename}"
puts txt.read()

puts "Type the filename again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()

=begin
ri File.open
不知道大家是否注意到，全新安装ruby之后，无论是在windows或是linux还是mac os X下使用 ri xxx，一般都会提示找不到主题,例如:

[plain] view plaincopyprint?
appletekiMacBook-Air:~ apple$ ri Array  
Nothing known about Array  
    

其实解决也很简单，如下即可:


[plain] view plaincopyprint?
gem install rdoc-data  
  
# Regenerate system docs  
rdoc-data --install  
  
# Regenerate all gem docs  
gem rdoc --all --overwrite  
  
# Regenerate specific gem doc with specific version  
gem rdoc gemname -v 1.2.3 --overwrite  

=end