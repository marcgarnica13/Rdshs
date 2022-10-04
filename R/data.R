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

#' NBA statistics dataset.
#'
#' A dataset containing game statistics in the NBA.
#'
#'
#' @format A data frame with 9840 games:
#' \describe{
#'   \item{Team}{The short name of the NBA team from whose prospective the data is recorded.}
#'   \item{Game}{Chronological number of the game.}
#'   \item{Date}{Date on which the game was played.}
#'   \item{Venue}{Home or Away from the perspective of the team in question.}
#'   \item{Opponent}{Short name of the opposition team.}
#'   \item{WINorLOSS}{Did the team in question win(W) or loose(L) the game in question.}
#'   \item{TeamPoints}{Total number of points scored by the team in question.}
#'   \item{OpponentPoints}{Total number of points scored by the opposition team.}
#'   \item{FieldGoals}{A successful basket scored on any shot or tap other than a free throw, worth two or three points}
#'   \item{FieldGoalsAttempted}{Total number of attempted 'FieldGoals' regardless of the outcome}
#'   \item{FieldGoalsSuccessRate}{Ratio of FieldGoals to FieldGoalsAttempted}
#'   \item{X3PointShots}{A sucessful 'FieldGoal' scored from outside the three point line}
#'   \item{X3PointShotsAttempted}{An attempted 'FieldGoal' from outside the three point line regrdless of its success outcome.}
#'   \item{X3PointShotsSuccessRate}{The ratio of X3PointShots to X3PointShotsAttempted}
#'   \item{FreeThrows}{A successful unhindered shot in basketball made from behind a set line and awarded because of a foul by an opponent.}
#'   \item{FreeThrowsAttempted}{An attempted 'FreeThrows' regradless of its success outcome.}
#'   \item{FreeThrowsSuccessRate}{The ratio of FreeThrows to FreeThrowsAttempted.}
#'   \item{OffRebounds}{The team in question shoots the ball and then regains control of the ball on a rebound.}
#'   \item{TotalRebounds}{Regaining control of the ball post an unsuccessful shot both during offense and defense.}
#'   \item{Assists}{Total number of last passes befre a successful shot}
#'   \item{Steals}{Total number of possession gains of the ball from the opposing team by intercepting a pass, knocking the ball off a dribble, or slapping it legally out of an opponents hands}
#'   \item{Blocks}{Total number of tips or deflects of a shooter's shot, altering its flight so that the shot misses.}
#'   \item{Turnovers}{total number of possession losses, either during ordinary play or as the result of a penalty for an infraction of the rules.}
#'   \item{TotalFouls}{Total number of violations of the rules other than a floor violation, generally one which attempts to gain advantage by physical contact and are penalized by a change in possession or the awarding of free-throw opportunities(There are many different types of fouls; see personal foul, technical foul, flagrant foul, unsportsmanlike foul, and disqualifying foul).}
#'   \item{OppFieldGoals}{'FieldGoals' scored by the Opposition team.}
#'   \item{OppFieldGoalsAttempted}{'FieldGoalsAttempted' by the Opposition team}
#'   \item{OppFieldGoalsSuccessRate}{'FieldGoalsSuccessRate' of the opposition team.}
#'   \item{Opp3PointShots}{Total number of 'X3PointShots' by the opposition team}
#'   \item{Opp3PointShotsAttempted}{Total number of 'X3PointShotsAttempted' by the opposition team}
#'   \item{Opp3PointShotsSuccessRate}{Total number of 'X3PointShotsSuccessRate' by the opposition team}
#'   \item{OppFreeThrows}{Total number of 'FreeThrows'(Successful) by the opposition team}
#'   \item{OppFreeThrowsAttempted}{Total number of 'FreeThrowsAttempted' by the opposition team.}
#'   \item{OppFreeThrowsSuccessRate}{'FreeThrowsSuccessRate' of the opposition team.}
#'   \item{OppOffRebounds}{Total number of 'OffRebounds' gathered by the opposition team.}
#'   \item{OppTotalRebounds}{Total number of 'TotalRebounds' gathered by the opposition team.}
#'   \item{OppAssists}{Total number of 'Assists' gathered by the opposition team.}
#'   \item{OppSteals}{Total number of 'Steals' by the opposition team.}
#'   \item{OppBlocks}{Total number of 'Blocks' by the opposition team.}
#'   \item{OppTurnovers}{Total number of 'Turnovers' by the opposition team.}
#'   \item{OppTotalFouls}{Total number of 'Fouls' by the opposition team.}
#' }
"bb.nba.1418"

#' English premier league statistics.
#'
#' All 380 matches from the English Premier League including home and away team,
#' home goals, away goals, total number of goals and total pass distance per match
#'
#'
#' @format A data frame with 380 rows:
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
#' @format A data frame with 16546 rows:
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
#' @format A data frame with 61 rows:
#' \describe{
#'   \item{YYIR1}{Test performance of the respective individual in the YoYo Intermittent Recovery Test Level 1 in m.}
#'   \item{HIRD}{High-Intensity Running Distance of the respective individual in a football match in m.}
#'   \item{pred_HIRD}{High-Intensity Running Distance for the respective individual in a football match as predicted by a Linear Regression model, modelling HIRD as a function of YYIR1 in m.}
#'}
#' @source Bangsbo, J., Iaia, F. M., & Krustrup, P. (2008). The Yo-Yo intermittent recovery test. Sports medicine, 38(1), 37-51.
"fb.YYIR.running"
