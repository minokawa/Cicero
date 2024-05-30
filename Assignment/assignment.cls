\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\newcommand{\classname}{Assignment}
\ProvidesClass{\classname}[2020/08/24 v1.7 LaTeXTemplates.com]
\providecommand{\baseclass}{article}
\LoadClass{\baseclass}
%----------------------------------------------------------------------------------------
%	REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\RequirePackage[british,american]{babel}
\RequirePackage{setspace} % Required for changing line spacing
\RequirePackage{longtable} % Required for tables that span multiple pages (used in the symbols, abbreviations and physical constants pages)
\RequirePackage{caption} % Required for customising the captions
\captionsetup{justification=centerlast,font=small,labelfont=sc,margin=50pt}

%----------------------------------------------------------------------------------------
%	DEFINE CUSTOM digest INFORMATION COMMANDS
%----------------------------------------------------------------------------------------

\NewDocumentCommand{\reporttitle} { o m }{%
 \IfValueTF{#1}{\def\shorttitle{#1}}{\def\shorttitle{#2}}%
 \def\@title{#2}%
 \def\ttitle{#2}%
}

\DeclareDocumentCommand{\author}{m}{
	\newcommand{\authorname}{#1 \\\today}\renewcommand{\@author}{#1}
}

\NewDocumentCommand{\reportsupervisor}{m}{\newcommand{\supname}{#1}}
\NewDocumentCommand{\degree}{m}{\newcommand{\degreename}{#1}}
\NewDocumentCommand{\addresses}{m}{\newcommand{\addressname}{#1}}
\NewDocumentCommand{\university}{m}{\newcommand{\univname}{#1}}
\NewDocumentCommand{\department}{m}{\newcommand{\deptname}{#1}}
\NewDocumentCommand{\group}{m}{\newcommand{\groupname}{#1}}

\NewDocumentCommand{\faculty}{m}{
	\newcommand{\facname}{#1}
}

\NewDocumentCommand{\subject}{m}{
	\newcommand{\subjectname}{\noindent\textsc{ \small #1}}
}


%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------

\RequirePackage{geometry}
\geometry{
	includehead,
	includefoot,
}

\endinput