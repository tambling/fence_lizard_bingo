class BingoBuilder
  def initialize(import_file)
    @squares = []
    parse_text(import_file)
    @squares.shuffle!
  end

  def parse_text(import_file)
    File.open(import_file).each_line do |line|
      @squares << line
    end
  end

  def write_to_html(export_file)
    File.new(export_file, 'w') unless File.exist?(export_file)
    File.open(export_file, 'wb') do |file|
      file.puts "<!DOCTYPE html>"
      file.puts "<head>"
      file.puts "<style> table {border: 1px solid black; text-align: center} td {border: 1px solid black; height: 100px; width: 100px;} </style>"
      file.puts "</head>"
      file.puts "<body>"
      file.puts "<table>"
      5.times do |row|
        file.puts "<tr>"
        5.times do |column|
          row == 2 && column==2 ? (file.puts("<td><img src=\"star.png\" /></td>")) : (file.puts "<td>#{@squares.pop}</td>")
        end
        file.puts "</tr>"
      end
      file.puts "</table>"
      file.puts "</body>"
    end
  end
end

bingo = BingoBuilder.new('squares.txt')
bingo.write_to_html("board.html")
