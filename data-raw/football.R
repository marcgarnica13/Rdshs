fb.epl.matches1718 <- read.csv("data-raw/fb.epl.matches1718.csv", stringsAsFactors = TRUE)
usethis::use_data(fb.epl.matches1718, overwrite = TRUE)

fb.epl.xg2122 <- read.csv("data-raw/fb.epl.xg2122.csv", stringsAsFactors = TRUE, encoding = "latin1")
usethis::use_data(fb.epl.xg2122, overwrite = TRUE)

fb.YYIR.running <- read.csv("data-raw/fb.YYIR.running.csv", stringsAsFactors = TRUE)
usethis::use_data(fb.YYIR.running, overwrite = TRUE)

fb.logs.player_position <- read.csv(
  "data-raw/fb.logs.player_position.csv",
  stringsAsFactors = F,
)
fb.logs.player_position$short_name <- stringi::stri_unescape_unicode(fb.logs.player_position$short_name)
usethis::use_data(fb.logs.player_position, overwrite = TRUE)
