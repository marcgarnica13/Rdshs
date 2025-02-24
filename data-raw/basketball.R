## code to prepare `basketball` dataset goes here
library(sn)
library(ggplot2)
set.seed(2022)

ncaa_40pts <- rsn(n = 200, xi = 19, omega = 5, alpha = 0.6, tau = 0, dp = NULL)
ncaa_40pts_factor_to_nba_points <- abs(rsn(n = 200, xi = 0.8, omega = 0.1, alpha = -0.3, tau = 0, dp = NULL))
ncaa_40pts_factor_to_ws <- abs(rsn(n = 200, xi = 2.3, omega = 0.1, alpha = -0.3, tau = 0, dp = NULL))

ncaa_assist_pct <- rsn(n = 200, xi = 9, omega = 10, alpha = 5)
ncaa_assist_factor_to_ws <- abs(rsn(n = 200, xi = 2.1, omega = 0.1, alpha = -0.3, tau = 0, dp = NULL))

ncaa_turnover_pct <- rsn(n = 200, xi = 1, omega = 1, alpha = 3)
ncaa_turnover_factor_to_ws <- rsn(n = 200, xi = -1.2, omega = 0.1, alpha = -0.3, tau = 0, dp = NULL)

ncaa_usage_rate <- rsn(n = 200, xi = 10, omega = 10, alpha = 2)
ncaa_usage_rate_interactor <- abs(rsn(n = 200, xi = 1.3, omega = 0.5, alpha = 3))

ncaa_height <- rsn(n = 200, xi = 194, omega = 8, alpha = 1)
ncaa_height_interactor_factor <- rsn(n = 200, xi = -0.05, omega = 0.05, alpha = -2, tau = 0, dp = NULL)

null_factor <- rnorm(200, sd = 0.15)
error_term <- rnorm(200, mean=3, sd=1.5)

nba_48pts <- (ncaa_40pts * ncaa_40pts_factor_to_nba_points) +
  (ncaa_assist_pct * (sample(null_factor))) +
  (ncaa_turnover_pct * (sample(null_factor))) +
  (ncaa_usage_rate * (sample(null_factor))) +
  error_term

nba_ws <- (ncaa_40pts * ncaa_40pts_factor_to_ws) +
  (ncaa_assist_pct * ncaa_assist_factor_to_ws) +
  (ncaa_turnover_pct * ncaa_turnover_factor_to_ws) +
  (ncaa_usage_rate_interactor * (ncaa_usage_rate * ncaa_40pts * 0.1)) +
  (ncaa_height_interactor_factor * (ncaa_height * ncaa_40pts * 0.1)) +
  error_term

numerical_position <- nba_ws - (ncaa_height)*0.01 - ncaa_assist_pct
ncaa_position <- cut(numerical_position, breaks = c(-Inf, 60, 110, Inf), labels = c("Guard", "Forward", "Center"))
#Checking integrations

# Basic Linear Regression
basic_lm <- lm(nba_48pts ~ ncaa_40pts)
summary(basic_lm)
qplot(x = ncaa_40pts, y = nba_48pts) +
  stat_smooth(method = "lm", se = FALSE, fullrange = TRUE)

# Multiple Linear Regression
mult_lm <- lm(nba_ws ~ (ncaa_40pts * ncaa_height) + ncaa_assist_pct + ncaa_turnover_pct)
summary(mult_lm)

# Multiple with categorical variables
categorical_lm <- lm(nba_ws ~ ncaa_40pts + ncaa_position)
summary(categorical_lm)
intercepts <- c(coef(categorical_lm)["(Intercept)"],
                coef(categorical_lm)["(Intercept)"] + coef(categorical_lm)["ncaa_positionForward"],
                coef(categorical_lm)["(Intercept)"] + coef(categorical_lm)["ncaa_positionCenter"])
lines.df <- data.frame(intercepts = intercepts,
                       slopes = rep(coef(categorical_lm)["ncaa_40pts"], 3),
                       position = c("Guard","Forward","Center"))

qplot(x = ncaa_40pts, y = nba_ws, color=ncaa_position) +
  geom_abline(aes(
    intercept = intercepts,
    slope = slopes,
    color=c("Guard","Forward","Center")), data = lines.df)

qplot(x = ncaa_40pts, y = nba_ws, color = ncaa_position) +
  stat_smooth(method = "lm", se = FALSE, fullrange = TRUE)

# Dataframe for Linear Regression
bb.draft.development <- data.frame(
  player_id = c(1:200),
  player_height = ncaa_height,
  player_position = ncaa_position,
  NCAA_40pts = ncaa_40pts,
  NCAA_assist_pct = ncaa_assist_pct,
  NCAA_turnover_pct = ncaa_turnover_pct,
  NCAA_usage_rate = ncaa_usage_rate,
  NBA_48pts = nba_48pts,
  NBA_winshare = nba_ws
)

usethis::use_data(bb.draft.development, overwrite = TRUE)

bb.nba.1418 <- read.csv("data-raw/bb.nba.1418.csv", stringsAsFactors = TRUE)
usethis::use_data(bb.nba.1418, overwrite = TRUE)
