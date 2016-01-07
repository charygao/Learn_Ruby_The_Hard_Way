class Engine
	def initialize(starts)
		@a_map = Map.new()
		@quips = ["死法1","死法2","死法3","死法4"]
		@start = starts
		puts "@start=starts=%s，@start.inspect=%s,@start.class=%s" % [@start,@start.inspect,@start.class]
	end
	def death()	#挂了
		puts @quips[rand(@quips.length())]
		Process.exit(1)
	end
	def play()
		puts "@start => " + @start.inspect
		s_CurrentRoom = @start
		while true
			puts "\n--------"
			nextRoomName = @a_map.whereAreYouIn(s_CurrentRoom)					#@开头表示类里面实例变量,@开头：实例变量（Instance variable）。
			puts "s_CurrentRoom=%s，类型=%s" % [s_CurrentRoom,s_CurrentRoom.class]
			if nextRoomName === :"death"
				death()
			else 
				s_CurrentRoom = nextRoomName
			end
		end
	end
end
class Map
	def prompt()	#提示符
		print "请输入> "
	end
	def whereAreYouIn(roomName)
		#puts "roomName =%roomName.inspect=%s,roomName.class=%s" % [roomName,roomName.inspect,roomName.class]
		m_RoomNameCall = method(roomName)
		return m_RoomNameCall.call()
	end
	def central_corridor() #中心走廊
puts <<故事开篇
飞船撞星，车毁人亡，你是唯一幸存者，最后一个任务：
从 激光武器库 中拿到核武器，并放在桥上，最后逃到 逃生舱 里，弃船而逃。
你正从 中心走廊 里跑向武器库，结果遇到外星敌人挡门。
central_corridor-》laser_weapon_armory &0-》the_bridge-》escape_pod
你准备shoot!开枪？dodge!躲开？tell a joke#讲笑话？
故事开篇
		prompt();action = gets.chomp()
		if action == "shoot!" #开枪
			puts "没打中，你挂了！"
			return :death
		elsif action == "dodge!" #躲开
			puts "撞墙了，被吃了！"
			return :death
		elsif action == "tell a joke" #讲笑话
			puts "笑死他了，你通过了！"
		return "laser_weapon_armory"
		else
			puts "不知道你要干啥！"
			return :central_corridor
		end
	end

	def laser_weapon_armory() #激光武器库
		puts "在敌人到来前，打开3位数字的密码锁拿核武器，你只有10次机会"
		code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
		puts "隐藏信息：真实其实是" + code + "但是你应该不知道！"
		print "[输入密码]> "
		guess = gets.chomp()
		guesses = 0
		while guess != code and guesses < 10
			puts "输错了！"
			guesses += 1
			print "[再输入密码]> "
			guess = gets.chomp()
		end
		if guess == code
			puts "对了，你拿起炸弹奔向桥"
			return :the_bridge
		else
			puts "机会用完，死去吧！"
			return :death
		end
	end

	def the_bridge() #桥
		puts "桥有5敌，throw the bomb扔炸弹？slowly place the bomb#偷偷放炸弹？"
		prompt();action = gets.chomp()
		if action == "throw the bomb" #扔炸弹
			puts "没扔准，你挂了！"
			return :death
		elsif action == "slowly place the bomb"
			puts "放好了，找逃生舱撤！"
			return :escape_pod
		else
			puts "你傻逼了！不知道干啥了？"
			return :the_bridge
		end
	end

	def escape_pod() #逃生舱
		puts "找到5个逃生舱，不过只有1个好的，你选哪个？"
		good_pod = rand(5)+1 
		puts "隐藏信息：好的逃生舱是%s号，但是你应该不知道！" % good_pod
		print "[几号逃生舱 #]>"
		guess = gets.chomp()
		if guess.to_i != good_pod
			puts "你选的%s号船，刚启动就炸了。。" % guess
			return :death
		else
			puts "你选的%s号船成功逃出！！win！！" % guess
			Process.exit(0)
		end
	end
end



a_game = Engine.new(:central_corridor)
a_game.play()