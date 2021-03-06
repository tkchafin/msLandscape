% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/msLandscape.R
\docType{package}
\name{msLandscape}
\alias{msLandscape}
\alias{msLandscape-package}
\alias{msLandscape-package}
\title{The \emph{msLandscape} package streamlines the process of creating customized landscape-scale coalescent simulations using \emph{ms}}
\description{
\emph{msLandscape} has one major function:  
 \strong{msLandscape_networkPlotter}   
 And one utility function:  
 \strong{convert_msOutputToEEMSDiffs}
}
\details{
\itemize{
  \item \strong{msLandscape_networkPlotter} 
  Visualizes the landscape configuration
  (populations and migration connections) specified by an ms flag file before
  ms is run. ms flag files for lanscape simulations can be extremely long and
  difficult to interpret manually. This allows verification that the
  landscape is configured properly, and can be used to identify specific
  populations to remove from the landscape using the accompanying Python
  script 'msLandscape_cleanup_ms_flagFile.py' to 'sculpt' the landscape into the desired shape.

\item \strong{msLandscape_convertToEEMSDiffs} 
   A utility function to run after
  \emph{ms} simulations are completed to finish the conversion of the \emph{ms} simulation
  results for use with \emph{EEMS}. The accompanying Python script 
  ghostLands_msOutputConvertFor_SpaceMix_EEMS_for_msLandscape.py takes the raw \emph{ms} simulation results
  and converts them to the intermediate '.4eemsdiffs' files. The msLandscape_convertToEEMSDiffs
  function then converts those '4eemsdiffs' files to '.diffs' files for use with EEMS.
  }
}
