#variaveis que representam instancias de classes, padrão page_object
Before do 
    @login_page = LoginPage.new
    @movie_page = MoviePage.new
    @sidebar = SideBarView.new
end


#ACESSA A PAGINA LOGIN, E FAZ LOGIN CM ESSES DADOS
Before("@login") do
    @login_page.go
    @login_page.with("tony@stark.com", "pwd123")
end