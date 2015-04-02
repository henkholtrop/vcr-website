SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'
  navigation.items do |primary|
    
    primary.item :home, 'Home', root_path
    
    #navigatie items voor De Club dropdown
    primary.item :de_club, 'de Club' do |sub_nav|
      sub_nav.item :pages, 'Paginas', do |content_page|
        vcr_team.item :page, @page.try(:title), url_for(@page)
      end
    end
    
    #navigatie items voor Teams dropdown
    primary.item :teams, 'Teams' do |sub_nav|
      sub_nav.item :vcr_teams, 'Senioren', do |vcr_team|
        vcr_team.item :vcr_team, @vcr_team.try(:name), url_for(@vcr_team)
      end
    end

    primary.item :nieuwsarchief, 'Nieuwsarchief', articles_path
  end
end