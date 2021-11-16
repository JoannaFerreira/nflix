require "pg"
class Database 
    def delete_movie(title)
      connection = PG.connect(host: "127.0.0.1", dbname: "nflix", user: "root", password: "qaninja")
      connection.exec("DELETE from public.movies where title = '#{title}';")
    end
end
