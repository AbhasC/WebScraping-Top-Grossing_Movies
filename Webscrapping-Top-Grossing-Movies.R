> library(robotstxt)
> library(rvest)
> 
> url <- "https://www.boxofficemojo.com/chart/top_lifetime_gross/?area=XWW"
> 
> path = paths_allowed(url)
 www.boxofficemojo.com                      

> web <- read_html(url)
> 
> Rank <- web %>% html_nodes(".mojo-field-type-rank") %>%html_text()
> View(Rank)
> 
> Title <- web %>% html_nodes(".mojo-field-type-title") %>%html_text()
> View(Title)
> 
> Lifetime_Gross <- web %>% html_nodes(".mojo-field-type-money") %>%html_text()
> View(Lifetime_Gross)
> 
> Year <- web %>% html_nodes(".mojo-field-type-year") %>%html_text()
> View(Year)
> 
> Highest_grossing_movies <- data.frame(Rank, Title, Lifetime_Gross, Year)
> View(Highest_grossing_movies)
> 
> write.csv(Highest_grossing_movies,"HGM.csv")
