% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/createProjectSkeleton.R
\name{createProjectSkeleton}
\alias{createProjectSkeleton}
\title{Create dryWorkflow data analysis project skeleton}
\usage{
createProjectSkeleton(dir.project = NULL, name.project = NULL,
  title.project = NULL, type.project = NULL, style = NULL,
  data.src = NULL, data.ext = NULL, data.mv = NULL, doc.src = NULL,
  doc.ext = NULL, doc.mv = NULL, codebook.src = NULL,
  codebook.ext = NULL, codebook.mv = NULL, lib.src = NULL,
  lib.ext = NULL, lib.mv = NULL, force = NULL, dontmove = NULL,
  log.ext = NULL, report.types = NULL, author = NULL, address = NULL,
  table1 = NULL, custom.dirs = NULL, mnemonic = NULL, extra = NULL,
  common.mk = NULL, template.dir = NULL, templates = NULL,
  print.mismatches = NULL, report.which = NULL, report.markdown = NULL,
  licence = NULL, ...)
}
\arguments{
\item{dir.project}{directory name for project. Default:
\dQuote{myRproject}}

\item{name.project}{name of project (for output documents, comments
etc). Default: \dQuote{My Data Analysis Project}}

\item{title.project}{title string for project reports
(for output documents, comments etc). Default: \dQuote{My Data Analysis Project}}

\item{type.project}{type of project: \dQuote{normal},
\dQuote{simple} or \dQuote{custom} (custom NYI). The style of
directory structure for the project.  Default \dQuote{normal}}

\item{style}{style for directory and filenames \dQuote{unix} or
dQuote{windows}, Default: \dQuote{unix}}

\item{data.src}{source directory for data files, multiple
OK. Default: current directory \dQuote{.}}

\item{data.ext}{possible data file extensions. Default:
c(\dQuote{.xls}, \dQuote{.xlsx}, \dQuote{.csv}, \dQuote{.dta}, \dQuote{.sav}, \dQuote{.xpt}, \dQuote{.RData}, \dQuote{.rda})}

\item{data.mv}{whether to move (TRUE) or copy (FALSE) data files
to destination directory. Default: TRUE which will move files}

\item{doc.src}{source directory for documents, multiple
OK. Default: current directory \dQuote{.}}

\item{doc.ext}{possible data file extensions. Default:
c(\dQuote{doc}, \dQuote{docx}, \dQuote{odt}, \dQuote{tex})}

\item{doc.mv}{whether to move (TRUE) or copy (FALSE) document files
to destination directory. Default: TRUE which will move files}

\item{codebook.src}{source directory for codebook files - multiple
OK. Default: current directory \dQuote{.}}

\item{codebook.ext}{possible code book file extensions. Default:
c(\dQuote{_codebook.csv}, \dQuote{_codebook.xls}, \dQuote{_codebook.xlsx})}

\item{codebook.mv}{whether to move (TRUE) or copy (FALSE) codebook
files to destination directory. Default: TRUE which will move
files}

\item{lib.src}{source directory for library files - multiple
OK. Default: current directory  \dQuote{.}}

\item{lib.ext}{possible data file extensions. Default: \dQuote{R}}

\item{lib.mv}{whether to move (TRUE) or copy (FALSE)
library/function files to destination directory. Default: TRUE
which will move files}

\item{force}{\code{logical} Whether to force creation of project
directory. Default: \code{FALSE} do not overwite existing directory}

\item{dontmove}{character vector of files that will not be moved
or copied from source directories. Default:
\dQuote{setupProject.R}}

\item{log.ext}{extension of log and README file(s) which are either
plain text (\dQuote{.txt}) or orgmode (\dQuote{.org})
text file(s) Default: \dQuote{.txt}}

\item{report.types}{vector of output templates to be produced
including \dQuote{.html}, \dQuote{.docx} and
\dQuote{.pdf}. Default: \dQuote{all}}

\item{author}{author name for reports. Default:
\dQuote{Insert author name here}}

\item{address}{address for reports. Default: \dQuote{Insert address here}}

\item{table1}{logical: produce table 1 style summary statistics for
reports.  Default: \code{FALSE}}

\item{custom.dirs}{list of extra directories to be
created. Default: \dQuote{extra}}

\item{mnemonic}{three or four letter mnemonic to aid remembering
and for succinct naming \code{R}, \code{Rmd} and \code{Rnw} files
and project directory. Default: \code{NULL} for none}

\item{extra}{extra directories additional to standard
setup. Default: \code{NULL} for none}

\item{common.mk}{list with components \code{dir} the location of
common.mk and other library files. Default: \dQuote{~/lib} for
\code{unix} and \dQuote{$HOME/Library} for
\code{Windows}. However, if a global directory is not found then
the project specific directory will be used. The second component
is \code{file} the filename containing makefile rules for \code{R},
\code{Rmd} etc files for inclusion into Makefiles. Default:
\dQuote{common.mk}}

\item{template.dir}{directory name containing template
files. Default: templates provided with the \code{dryworkflow}
package}

\item{templates}{names list of template files. See the templates
provided with the \code{dryworkflow} package for details}

\item{print.mismatches}{print mismatches when creating syntax or
markdown files from templates. Default: \code{FALSE}}

\item{report.which}{which data files to produce reports
for. Choices: \dQuote{first}, \dQuote{merge}, \dQuote{all})
Default: \dQuote{first}}

\item{report.markdown}{vector of markdown file types to be
employed to produce reports. Default: \dQuote{.org},
\dQuote{.Rmd}, \dQuote{.Rnw}. Default: \dQuote{.Rmd} and
\dQuote{.Rnw}}

\item{licence}{Licence for syntax files. Could be a string such as
\sQuote{Copyright J Smith 2015} Default: \dQuote{GPL3 see <http://www.gnu.org/licenses/>}}

\item{...}{extra parameters passed to safe directory creation}
}
\value{
invisible or does it??? what about monitoring??
}
\description{
Create skeleton directory structure, R syntax templates, report
templates, log file stubs and also move (or copy) data and doc
files to appropriate directories.  Also, create project
configuration file, Makefiles and then initialise logs, notes and
version control using \code{git}.
}
\details{
Note that option parameters are either set as an argument to the
function or automatically via global options using
\code{getOptions("dryw")}. For further information about
setting these options globally via \code{setOptions}, please see
\code{\link{dryworkflow-package}}.
}
\examples{
## A project with all default settings

## copy .csv file and codebook from dryWorkflow package
file.copy(system.file('demoFiles', 'small2.csv', package='dryworkflow'),
          'small2.csv')
file.copy(system.file('demoFiles', 'small2_codebook.csv',
                      package='dryworkflow'), 'small2_codebook.csv')

## NB: In practice, always check directories, R syntax  etc
##     before using 'make'
createProjectSkeleton(dir.proj = "testProject",
                      name.project = "Experiment_1",
                      dontmove = "dryworkflow-Ex.R")
}
\author{
Peter Baker  \email{pete@petebaker.id.au}
}

