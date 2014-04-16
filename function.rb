class Bookmark

attr_accessor :url, :title
attr_reader :last_visited

def initialize( url, title )
   @url = url
   @title = title
   @last_visited = "not visited"
end

def visit!
   @last_visited = Time.now.asctime
end

end

mark = Bookmark.new( 'url-1', 'title #1' )

puts " bookmark #1 url = #{mark.url}"
puts " title = #{mark.title}"
puts " lastvisited = #{mark.last_visited}"

mark.visit!
puts " lastvisited = #{mark.last_visited}"

$stdout.flush
sleep(10)

mark.visit!
puts " lastvisited = #{mark.last_visited}"