library(ggplot2)
library(ggalt)
theme_set(theme_classic())
options(scipen = 999)

# Used to create Figure 1, 2 and 3 on Final Paper


leagues <- read.csv('leagues.csv')


dumbbell<- ggplot() + geom_dumbbell(data = leagues, 
                              aes(y = League,
                                  x = Average.Player.Salary, 
                                  xend = Revenue.Per.Player),
                              size = 1.5, colour_x = 'darkred',
                              colour_xend = 'darkblue', color = 'lightblue',
                              size_x = 3, size_xend = 3, dot_guide = TRUE)

dumbbell


# data from statista.com

veiwers <- data.frame(
  league = c('NBA', 'WNBA'),
  season = c('2020', '2021'),
  wnba_views = c(205, 306),
  nba_views = c(1620, 1340)
  
)

avg_nba <- ggplot(veiwers, aes(x = season, y = nba_views, group = 1))+
  geom_point(col = 'blue', size = 3)+
  geom_line(col = 'blue', size = 2)

avg_nba+
  ylab('AVG NBA TV Veiwers (in thousands)')

avg_wnba <- ggplot(veiwers, aes(x = season, y = wnba_views, group = 1))+
  geom_point(col = 'red', size = 3)+
  geom_line(col = 'red', size = 2)

avg_wnba+
  ylab('AVG WNBA TV Veiwers (in thousands)')


  
  
  