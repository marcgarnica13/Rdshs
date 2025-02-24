% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{fb.leicester.xg1516}
\alias{fb.leicester.xg1516}
\title{Expected Goals for Leicester team in the 15-16 season.}
\format{
A data frame:
\describe{
\item{league}{Name of the competition out of the top five European leagues.}
\item{id}{Unique ID of the respective shot.}
\item{minute}{Minute of play in which shot was taken.}
\item{result}{Outcome of the shot as either Goal, MissedShots, BlockedShot, SavedShot or ShotOnPost.}
\item{shot_x}{X-coordinate of the shot location in m on a pitch where x axis is parallel to the sidelines, both teams are considered playing from left ro right and the pitch has dimensions 105x68m.}
\item{shot_y}{Y-coordinate of the shot location in m on a pitch where y axis is parallel to the goalline, both teams are considered playing from left ro right and the pitch has dimensions 105x68m.}
\item{xG}{Expected Goals-Value of the Shot as given on the understat.com website.}
\item{player}{Name of the player taking the shot.}
\item{h_a}{Indicator of whether the team of the player taking the shot is playing home (h) or away (a).}
\item{shotType}{Indicator of whether the shot was taken with RightFoot, LeftFoot or Head.}
\item{match_id}{Unique ID of the respective match.}
\item{date}{Kickoff date and time of the match.}
\item{lastAction}{Type of the action preceding the shot}
\item{outcome}{Outcome of the Shot as a binary variable, Goal or NoGoal.}
\item{team}{Team performing the shot.}
}
}
\source{
understat.com
}
\usage{
fb.leicester.xg1516
}
\description{
Including information on every shot, such as player,
X-/Y-coordinates, XG value.
}
\keyword{datasets}
