desc "Scrape IMDb Movies Coming Soon and output CSV"
task :movies => :environment do

    filename = Rails.root.join("lib", "imdb", "movies-coming-soon.html")
    page = open(filename)

    doc = Nokogiri::HTML(page)

    all_movie_nodes = doc.css(".nm-title-overview-widget-layout")

    list_of_movies = Array.new
  
  
  
end
