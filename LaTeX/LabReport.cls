% Copyright (c) Geoffrey Lentner 2015. All Rights Reserved.
% LabReport.cls

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Detailes

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LabReport}[2015/06/10 Latex class for Physics lab reports.]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions \relax

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Based on `article` class

\LoadClass[a4paper,twoside, final]{article}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Required Packages

\RequirePackage[top=1in, bottom=1in, left=0.5in, right=0.5in, 
	headheight=15pt]{geometry}
\RequirePackage{lmodern}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{amsmath}
\RequirePackage{latexsym}
\RequirePackage{amssymb}
\RequirePackage[pdftex]{graphicx}
\RequirePackage[flushleft,online,para]{threeparttable}
\RequirePackage{lscape}
\RequirePackage{float}
\RequirePackage[font=small,labelfont=bf]{caption}
\RequirePackage{subcaption}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{blindtext}
\RequirePackage[bottom]{footmisc}
\RequirePackage{multicol}
\RequirePackage{fancyvrb}
\RequirePackage{fancyhdr}
\RequirePackage{natbib}

\bibliographystyle{abbrvnat}
\setcitestyle{authoryear,open={(},close={)}}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Misc. Commands

\newcommand{\note}[1]{$^{#1}$}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% journal abbreviations

\newcommand{\actaa}{Acta Astronomica}
\newcommand{\aj}{AJ}
\newcommand{\apj}{ApJ}
\newcommand{\apjs}{ApJS}
\newcommand{\apjl}{ApJL}
\newcommand{\aap}{A{\&}A}
\newcommand{\aapr}{A\&A~Rev.}
\newcommand{\aaps}{A{\&}AS}
\newcommand{\araa}{ARAA}
\newcommand{\icarus}{Icarus}
\newcommand{\mnras}{MNRAS}
\newcommand{\nat}{Nature}
\newcommand{\pasp}{PASP}
\newcommand{\pasj}{PASJ}
\newcommand{\procspie}{Proc. SPIE}
\newcommand{\ssr}{Space Science Reviews}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Environments

\newenvironment{Figure}
	{\par\medskip\noindent\minipage{\linewidth}}
	{\endminipage\par\medskip}

\newenvironment{Table}
	{\par\bigskip\noindent\minipage{\columnwidth}\centering}
	{\endminipage\par\bigskip}
 
% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% University affiliation, department address, etc.

\newcommand{\theInstitution}{Department of Physics \& Astronomy, 
	University of Notre Dame, South Bend, IN 46556}

\newcommand{\Institution}[1]{\renewcommand{\theInstitution}{#1}}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Course, Lab information

\newcommand{\theSectionNumber}{xx}
\newcommand{\theCourseNumber}{xxx}
\newcommand{\theCourseName}{Physics Lab}
\newcommand{\theSubject}{Physics}
\newcommand{\theAssignment}{Lab 1: My First Lab}

\newcommand{\SectionNumber}[1]{\renewcommand{\theSectionNumber}{#1}}
\newcommand{\CourseNumber}[1]{\renewcommand{\theCourseNumber}{#1}}
\newcommand{\CourseName}[1]{\renewcommand{\theCourseName}{#1}}
\newcommand{\Subject}[1]{\renewcommand{\theSubject}{#1}}
\newcommand{\Assignment}[1]{\renewcommand{\theAssignment}{#1}}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Title

\newcommand{\theTitle}{\theAssignment}
\newcommand{\Title}[1]{\renewcommand{\theTitle}{#1}}
\newcommand{\MakeTitle}{%
	\begin{flushleft}
		\LARGE{\textbf{\theTitle}}
	\end{flushleft}
	
	\noindent\makebox[\linewidth]{\rule{\textwidth}{0.75pt}}
	}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Paper Authors, contact information

\newcommand{\firstAuthor}{Jane Doe}
\newcommand{\otherAuthor}{}
\newcommand{\theAuthors}{\firstAuthor}
\newcommand{\theAuthorsInformation}{}

\newcommand{\Authors}[3]{%
	\renewcommand{\firstAuthor}{#1}
	\renewcommand{\otherAuthor}{#2}
	\renewcommand{\theAuthors}{#1#2}
	\renewcommand{\theAuthorsInformation}{#3}
	}

\newcommand{\MakeAuthors}{%
	\bigskip
	\begin{flushright}
	\begin{minipage}[t]{0.90\textwidth}
	    \par{\Large{\textsc{\theAuthors}}\par}
	    \bigskip
	    \par{\small{\textit{\theInstitution}}\par}
	    \par{\small{\textit{\theAuthorsInformation}}\par}
	\end{minipage}
	\end{flushright}
	}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Abstract

\newcommand{\theAbstract}{\textbf{Abstract:}}

\newcommand{\Abstract}[1]{
	\renewcommand{\theAbstract}{\textbf{Abstract:} #1}}
	
\newcommand{\MakeAbstract}{%

	\begin{flushright}
	\begin{minipage}[t]{0.9\textwidth}
		\theAbstract
	\end{minipage}
	\end{flushright}
	}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Headers, Footers

\newcommand{\MakeHeaders}{%

	\pagestyle{fancy}
	\fancyhead{}
	\fancyfoot{}
	\fancyhead[L]{\theAssignment}
	\fancyhead[R]{\firstAuthor}
	\fancyfoot[C]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
	}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Title page, Date

\newcommand{\theDate}{\today}
\newcommand{\Date}[1]{\renewcommand{\theDate}{#1}}

\newcommand{\MakeTitlePage}{%

	\thispagestyle{empty}
	\par{\Huge{\textsc{\firstAuthor}}\par}
	\vspace*{5mm}
	\noindent\makebox[\linewidth]{\rule{\textwidth}{0.75pt}}
	\vspace*{5mm}
	\par{\Large{\theSubject~\theCourseNumber-\theSectionNumber:
		\theCourseName}\par}
	\par{\Large{\theAssignment}\par}
	\par{\Large{\theDate}\par}
	\newpage
	\thispagestyle{empty}
	\vspace*{1em}
	\newpage
    \addtocounter{page}{-2}
	}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Keywords, recieved date

\newcommand{\theKeywords}{}
\newcommand{\Keywords}[1]{\renewcommand{\theKeywords}{\textbf{Keywords:} #1}}

\newcommand{\theDateSubmitted}{\textbf{Submitted:} \today}
\newcommand{\Submitted}[1]{\renewcommand{\theDateSubmitted}{%
	\textbf{Submitted:} #1}}

\newcommand{\ShowKeywords}{
	\begin{flushright}
	\begin{minipage}[t]{0.9\textwidth}
	    \noindent\theKeywords
	\end{minipage}
	\end{flushright}
	}

\newcommand{\ShowSubmitted}{
	\begin{flushright}
	\begin{minipage}[t]{0.9\textwidth}
	    \noindent\theDateSubmitted
	\end{minipage}
	\end{flushright}
	}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% Standard Report Setup

\newcommand{\SetupLabReport}{
	\MakeTitlePage
	\MakeTitle
	\MakeAuthors
	\MakeAbstract
	\ShowSubmitted
	\vspace*{1em}
	}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% References

\newcommand{\References}[1]{
	\vspace*{1em}
	\begin{multicols}{2}[]
		\nocite{*}
		\bibliography{#1}
	\end{multicols}
	}
