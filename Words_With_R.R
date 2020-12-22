#Murathan_Solmaz

library(tidyverse)

#question1
newdatawords <- sample(words,100)
newdatawords


question2 <- newdatawords[str_detect(newdatawords,"(^a+[abcdefghijklmnopqrstuvwxyz]+e$)")]
question2
  

question3 <- sum( str_count(newdatawords,"[aeiou]")>3 )
question3



newdata2 <- tibble(newdata2=newdatawords)
question4 <- newdata2 %>%
  mutate(lengths = str_length(newdata2)) %>%
  arrange(desc(lengths)) %>%
  head(5)
question4



question5 <- c("age","any","day","exp","her","pro","the")
words_match<-str_c(question5,collapse = "|")
has_word <- str_subset(newdatawords,words_match)
has_word
