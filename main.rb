def puts_git(cmd)
	puts `git #{cmd} -h`
end

def menu
	puts "1: Enter git command"
	puts "2: Exit"

	case gets.to_i
		when 1
			puts "Enter git command:"
			puts_git(gets.strip)
			menu
		when 2
			exit
		else
			puts "Inavlid choice"
			menu
	end
end

puts_git("status")
