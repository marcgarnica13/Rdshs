rally_coding = c(
  '4' = 'out wide',
  '5' = 'body',
  '6' = 'down the T',
  '0' = 'Uknown',
  '7' = 'within the boxes',
  '8' = 'behind the service line but closer',
  '9' = 'close to the baseline',
  'n' = 'net fault',
  'w' = 'wide',
  'd' = 'deep',
  'x' = 'wide and deep',
  'g' = 'foot fault',
  'e' = 'Uknown',
  '!' = 'shank',
  'V' = 'time violation',
  'c' = 'let set',
  '+' = 'serve-and-wolley',
  '*' = 'ace or winner',
  '#' = 'unreturnable',
  '@' = 'unforced error',
  'f' = 'forehand groundstroke',
  'b' = 'backhand groundstroke',
  'r' = 'forehand slice',
  's' = 'backhand slide',
  'v' = 'forehand volley',
  'z' = 'backhand volley',
  'o' = 'standard overhead smash',
  'p' = 'backhand overhead smash',
  'u' = 'forehand drop shot',
  'y' = 'backhand drop shot',
  'l' = 'forehand lob',
  'm' = 'backhand lob',
  'h' = 'forehand half-volley',
  'i' = 'backhand half-volley',
  'j' = 'forehand swinging volley',
  'k':'backhand swinging volley',
  't' = 'trick shot',
  'q' = 'unknown shot',
  '1' = 'crosscourt / down the line',
  '2' = 'down the middle',
  '3' = 'crosscourt / down the line',
)

t.pbp.all <- read.csv(
  "data-raw/t.pbp.all.csv",
  stringsAsFactors = FALSE,
  sep = ",",
  fileEncoding = 'UTF-8',
  encoding = 'UTF-8'
)

t.atp.eventsfinal19 <- read.csv("data-raw/t.atp.eventsfinal19.csv")

usethis::use_data(t.pbp.all, overwrite = TRUE)
usethis::use_data(t.atp.eventsfinal19, overwrite = TRUE)
