## code to prepare `basketball` dataset goes here
library(sn)
library(ggplot2)
set.seed(2022)

ncaa_48pts <- rsn(n = 200, xi = 19, omega = 5, alpha = 0.6, tau = 0, dp = NULL)
ncaa_48pts_factor_to_nba_points <- abs(rsn(n = 200, xi = 0.8, omega = 0.1, alpha = -0.3, tau = 0, dp = NULL))
ncaa_48pts_factor_to_ws <- abs(rsn(n = 200, xi = 2.3, omega = 0.1, alpha = -0.3, tau = 0, dp = NULL))

ncaa_assist_pct <- rsn(n = 200, xi = 9, omega = 10, alpha = 5)
ncaa_assist_factor_to_ws <- abs(rsn(n = 200, xi = 2.1, omega = 0.1, alpha = -0.3, tau = 0, dp = NULL))

ncaa_turnover_pct <- rsn(n = 200, xi = 1, omega = 1, alpha = 3)
ncaa_turnover_factor_to_ws <- rsn(n = 200, xi = -1.2, omega = 0.1, alpha = -0.3, tau = 0, dp = NULL)

ncaa_usage_rate <- rsn(n = 200, xi = 10, omega = 10, alpha = 2)
ncaa_usage_rate_interactor <- abs(rsn(n = 200, xi = 1.3, omega = 0.5, alpha = 3))

ncaa_height <- rsn(n = 200, xi = 194, omega = 8, alpha = 1)
ncaa_height_interactor_factor <- rsn(n = 200, xi = -0.05, omega = 0.05, alpha = -2, tau = 0, dp = NULL)

ncaa_position <- rep(c("Guard","Forward","Center"), 200*c(0.3,0.4,0.3))

null_factor <- rnorm(200, sd = 0.15)
error_term <- rnorm(200, mean=3, sd=1.5)

nba_40pts <- (ncaa_48pts * ncaa_48pts_factor_to_nba_points) +
  (ncaa_assist_pct * (sample(null_factor))) +
  (ncaa_turnover_pct * (sample(null_factor))) +
  (ncaa_usage_rate * (sample(null_factor))) +
  error_term

nba_ws <- (ncaa_48pts * ncaa_48pts_factor_to_ws) +
  (ncaa_assist_pct * ncaa_assist_factor_to_ws) +
  (ncaa_turnover_pct * ncaa_turnover_factor_to_ws) +
  (ncaa_usage_rate_interactor * (ncaa_usage_rate * ncaa_48pts * 0.1)) +
  (ncaa_height_interactor_factor * (ncaa_height * ncaa_48pts * 0.1)) +
  error_term

#Checking integrations

# Basic Linear Regression
basic_lm <- lm(nba_40pts ~ ncaa_48pts)
summary(basic_lm)
qplot(x = ncaa_48pts, y = nba_40pts) +
  stat_smooth(method = "lm", se = FALSE, fullrange = TRUE)

# Multiple Linear Regression
mult_lm <- lm(nba_ws ~ (ncaa_48pts * ncaa_height) + ncaa_assist_pct + ncaa_turnover_pct)
summary(mult_lm)

# Multiple with categorical variables
categorical_lm <- lm(nba_40pts ~ ncaa_48pts + ncaa_position)
summary(categorical_lm)
intercepts <- c(coef(categorical_lm)["(Intercept)"],
                coef(categorical_lm)["(Intercept)"] + coef(categorical_lm)["ncaa_positionForward"],
                coef(categorical_lm)["(Intercept)"] + coef(categorical_lm)["ncaa_positionGuard"])
lines.df <- data.frame(intercepts = intercepts,
                       slopes = rep(coef(categorical_lm)["ncaa_48pts"], 3),
                       position = c("Guard","Forward","Center"))

qplot(x = ncaa_48pts, y = nba_40pts, color=ncaa_position) +
  geom_abline(aes(
    intercept = intercepts,
    slope = slopes,
    color=c("Guard","Forward","Center")), data = lines.df)

qplot(x = ncaa_48pts, y = nba_40pts, color = ncaa_position) +
  stat_smooth(method = "lm", se = FALSE, fullrange = TRUE)

# Dataframe for Linear Regression
basketball.draft.development <- data.frame(
  player_id = c(1:200),
  player_height = ncaa_height,
  player_position = ncaa_position,
  ncaa_48pts = ncaa_48pts,
  ncaa_assist_pct = ncaa_assist_pct,
  ncaa_turnover_pct = ncaa_turnover_pct,
  ncaa_usage_rate = ncaa_usage_rate,
  nba_40pts = nba_40pts,
  nba_winshare = nba_ws
)

usethis::use_data(basketball.draft.development, overwrite = TRUE)
