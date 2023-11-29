fb.epl.matches1718 <-
  read.csv("data-raw/fb.epl.matches1718.csv", stringsAsFactors = TRUE)
usethis::use_data(fb.epl.matches1718, overwrite = TRUE)

fb.epl.xg2122 <-
  read.csv("data-raw/fb.epl.xg2122.csv",
           stringsAsFactors = TRUE,
           encoding = "latin1")
usethis::use_data(fb.epl.xg2122, overwrite = TRUE)

fb.YYIR.running <-
  read.csv("data-raw/fb.YYIR.running.csv", stringsAsFactors = TRUE)
usethis::use_data(fb.YYIR.running, overwrite = TRUE)

fb.logs.player_position <-
  read.csv("data-raw/fb.logs.player_position.csv",
           stringsAsFactors = F,)
fb.logs.player_position$short_name <-
  stringi::stri_unescape_unicode(fb.logs.player_position$short_name)
usethis::use_data(fb.logs.player_position, overwrite = TRUE)

fb.europe.xg1622 <-
  read.csv(
    "data-raw/fb.europe.xg1622.csv",
    stringsAsFactors = TRUE,
    encoding = "latin1"
  )
usethis::use_data(fb.europe.xg1622, overwrite = TRUE)

fb.europe.players1718 <-
  read.csv(
    "data-raw/fb.europe.players1718.csv",
    stringsAsFactors = TRUE,
    encoding = "latin1"
  )
usethis::use_data(fb.europe.players1718, overwrite = TRUE)

fb.europe.playerxg1718 <-
  read.csv(
    "data-raw/fb.europe.playerxg1718.csv",
    fileEncoding = "UTF-8",
    encoding = "UTF-8"
  )
Encoding(fb.europe.playerxg1718$player) <- "UTF-8"
usethis::use_data(fb.europe.playerxg1718, overwrite = TRUE)

fb.europe.marketvalue1718 <-
  read.csv(
    "data-raw/fb.europe.marketvalue1718.csv",
    fileEncoding = "UTF-8",
    encoding = "UTF-8"
  )
Encoding(fb.europe.marketvalue1718$player_name) <- "UTF-8"
usethis::use_data(fb.europe.marketvalue1718, overwrite = TRUE)

fb.metrica.trackingH1 <-
  read.csv("data-raw/fb.metrica.trackingH1.csv")
usethis::use_data(fb.metrica.trackingH1, overwrite = TRUE)
