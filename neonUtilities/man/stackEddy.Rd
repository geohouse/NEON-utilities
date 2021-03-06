% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stackEddy.R
\name{stackEddy}
\alias{stackEddy}
\title{Extract eddy covariance data from HDF5 format}
\usage{
stackEddy(filepath, level = "dp04", var = NA, avg = NA)
}
\arguments{
\item{filepath}{One of: a folder containing NEON EC H5 files, a zip file of DP4.00200.001 data downloaded from the NEON data portal, a folder of DP4.00200.001 data downloaded by the neonUtilities::zipsByProduct() function, or a single NEON EC H5 file [character]}

\item{level}{The level of data to extract; one of dp01, dp02, dp03, dp04 [character]}

\item{var}{The variable set to extract, e.g. co2Turb [character]}

\item{avg}{The averaging interval to extract, in minutes [numeric]}
}
\value{
A named list of data frames. One data frame per site, plus one data frame containing the metadata (objDesc) table and one data frame containing units for each variable (variables).
}
\description{
Convert data of choice from HDF5 to tabular format. Specific to eddy covariance data product: DP4.00200.001
}
\details{
Given a filepath containing H5 files of DP4.00200.001 data, extracts variables, stacks data tables over time, and joins variables into a single table.
For data product levels 2-4 (dp02, dp03, dp04), joins all available data, except for the flux footprint data in the expanded package.
For dp01, an averaging interval and a set of variable names must be provided as inputs.
}
\examples{
\dontrun{
# To extract and merge Level 4 data tables, where data files are in the working directory
flux <- stackEddy(filepath=getwd(), level='dp04', var=NA, avg=NA)
}
}
\references{
License: GNU AFFERO GENERAL PUBLIC LICENSE Version 3, 19 November 2007
}
\author{
Claire Lunch \email{clunch@battelleecology.org}
}
