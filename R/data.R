#' NBA MOCK draft.
#'
#' A dataset containing players that played in college and in the NBA.
#'
#'
#' @format A data frame with 200 rows and 9 variables:
#' \describe{
#'   \item{player_id}{Player identifier.}
#'   \item{player_height}{Player height, in cm.}
#'   \item{player_position}{Player position: Guard, Forward or Center.}
#'   \item{NCAA_40pts}{Player points per game in the NCAA.}
#'   \item{NCAA_assist_pct}{Player assist percentage in the NCAA per 100 units.}
#'   \item{NCAA_turnover_pct}{Player turnover percentage in the NCAA per 100 units.}
#'   \item{NCAA_usage_rate}{Player usage rate in the NCAA.}
#'   \item{NBA_48pts}{Player points per game in the NBA.}
#'   \item{NBA_winshare}{Player WinShare in the NBA.}
#' }
"bb.draft.development"

#' English premier league statistics.
#'
#' All 380 matches from the English Premier League including home and away team,
#' home goals, away goals, total number of goals and total pass distance per match
#'
#'
#' @format A data frame with xxx rows and XXX variables:
#' \describe{
#'   \item{match_id}{Unique identifier of each match, containing league abbreviation (country), abbreviated team names and season.}
#'   \item{home}{Name of the home team.}
#'   \item{away}{Name of the away team.}
#'   \item{home_goals}{Number of goals scored in the match by the home team.}
#'   \item{away_goals}{Number of goals scored in the match by the away team.}
#'   \item{sum_pass_length}{Total distance covered by the ball, summed across all passes completed in the match by both teams in m.}
#'   \item{mn_pass_length}{Mean distance covered by the ball per pass across all passes completed in the match by both teams in m.}
#'   \item{goals}{Total number of goals scored in the match by both teams.}
#' }
#' @source Pappalardo, L., Cintia, P., Rossi, A., Massucco, E., Ferragina, P., Pedreschi, D., & Giannotti, F. (2019). A public data set of spatio-temporal match events in soccer competitions. Scientific data, 6(1), 1-15.
"fb.epl.matches1718"

#' Expected Goals in the English Premier League.
#'
#' Expected Goals statistics for English Premier League in the season 21/22
#' (subsample of 100 shots) including information on every shot, such as player,
#' X-/Y-coordinates, XG value.
#'
#'
#' @format A data frame with xxx rows and XXX variables:
#' \describe{
#'   \item{minute}{Minute of play in which shot was taken.}
#'   \item{result}{Outcome of the shot as either Goal, MissedShots, BlockedShot, SavedShot or ShotOnPost.}
#'   \item{X}{X-coordinate of the shot location in m on a pitch where x axis is parallel to the sidelines, both teams are considered playing from left ro right and the pitch has dimensions 105x68m.}
#'   \item{Y}{Y-coordinate of the shot location in m on a pitch where y axis is parallel to the goalline, both teams are considered playing from left ro right and the pitch has dimensions 105x68m.}
#'   \item{xG}{Expected Goals-Value of the Shot as given on the understat.com website.}
#'   \item{player}{Name of the player taking the shot.}
#'   \item{h_a}{Indicator of whether the team of the player taking the shot is playing home (h) or away (a).}
#'   \item{situation}{Situation from which the shot was taken as either OpenPlay, FromCorner, Penalty, SetPiece or DirectFreekick.}
#'   \item{shotType}{Indicator of whether the shot was taken with RightFoot, LeftFoot or Head.}
#'   \item{home_team}{Name of the home team.}
#'   \item{away_team}{Name of the away team.}
#'   \item{home_goals}{Number of goals scored by the home team in the whole match.}
#'   \item{away_goals}{Number of goals scored by the away team in the whole match.}
#'   \item{date}{Kickoff date and time of the match.}
#'   \item{player_assisted}{Name of the player giving the assist for the shot.}
#'   \item{lastAction}{Type of the action preceding the shot}
#'   \item{Outcome}{Outcome of the Shot as a binary variable, Goal or NoGoal.}
#'   \item{zone}{Zone from where the shot was taken as one out of three radial zones with increasing radius around the goal.}
#' }

#' @source <https://understat.com/>
"fb.epl.xg2122"

#' YoYo Intermittent Recovery Test Level 1 dataset.
#'
#' Results from a study (Bangsbo, J., Iaia, F. M., & Krustrup, P. (2008).
#' The Yo-Yo intermittent recovery test. Sports medicine, 38(1), 37-51.)
#' containing the results from the YoYo Intermittent Recovery Test Level 1 for
#' 61 football players as well as their respective high-intensity match running
#' performance and the predicted values from a regression model on these
#' two variables.
#'
#'
#' @format A data frame with xxx rows and XXX variables:
#' \describe{
#'   \item{YYIR1}{Test performance of the respective individual in the YoYo Intermittent Recovery Test Level 1 in m.}
#'   \item{HIRD}{High-Intensity Running Distance of the respective individual in a football match in m.}
#'   \item{pred_HIRD}{High-Intensity Running Distance for the respective individual in a football match as predicted by a Linear Regression model, modelling HIRD as a function of YYIR1 in m.}
#'}
#' @source Bangsbo, J., Iaia, F. M., & Krustrup, P. (2008). The Yo-Yo intermittent recovery test. Sports medicine, 38(1), 37-51.
"fb.YYIR.running"
