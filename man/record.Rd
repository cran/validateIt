% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recordTasks.R
\name{record}
\alias{record}
\title{Reform tasks to facilitate sending to Mturk}
\usage{
record(type, tasks, path)
}
\arguments{
\item{type}{(character) one of WI, T8WSI, R4WSI}

\item{tasks}{(data.frame) outputs from validateTopic(), validateLabel(), or mixGold() if users mix in gold-standard HITs}

\item{path}{(character) path to record the tasks (with meta-information)}
}
\value{
A list of two data frames, containing the original tasks and the randomized options respectively.
}
\description{
Reform tasks to facilitate sending to Mturk
}
\details{
Randomize the order of options and record the tasks in a specified local directory
}
