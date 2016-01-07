#参数输入一个文件全路径，负责报错:in `gets': \
#No such file or directory @ rb_sysopen -  (Errno::ENOENT)
puts "ARGV.first =  #{ARGV.first}"
print "STDIN.gets.chomp从标准输入设备中获取字符:"
puts "STDIN.gets.chomp() =  #{STDIN.gets.chomp()}"
print "gets.chomp去掉换行/gets不去掉/从文件中尝试读取:"
puts "gets.chomp() =  #{gets.chomp()}"
puts "gets() =  #{gets()}"
