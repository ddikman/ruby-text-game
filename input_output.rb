def write_empty_line
    puts "\n"
end

def write(text)
    puts text
    write_empty_line()
end

def write_board(text)
    len = text.length + 4
    border = "#" * len
    puts border
    puts "  #{text}  "
    puts border
    write_empty_line()
end

def write_lines(lines)
    lines.each do |line|
        puts line
    end
    write_empty_line()
end

def ask_user(question)
    puts question
    gets.chomp
end