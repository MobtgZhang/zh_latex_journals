%%
%%----------------------------------------------------------------------
%%
%%     Warning!!! This is a Read-Only file, Please don't modify it!!!
%%
%%----------------------------------------------------------------------
%%
%%
%%
%% This is file `jssc.cls',    %Song2012-10-29
%% generated with the docstrip utility.
%%

%% ----------------------------------------------------------------------
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%%
%% This file may only be distributed together with a copy of original
%% source files. You may however distribute original source files
%% without such generated files. Copying of this file is authorized
%% only if either:
%% (1) you make absolutely no changes to your copy, including name; OR
%% (2) if you do make changes, you first rename it to some other name.
%%
%% To produce the documentation run the original source files ending
%% with `.dtx' through LaTeX.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01] \ProvidesClass{jssc-1}  
  [2009/05/12 v0.1b Journal of Systems Science and Complexity
   article document class]
%\newif\ifjssc@evenend \jssc@evenendfalse
%\DeclareOption{evenend}{\jssc@evenendtrue}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%\PassOptionsToClass{10pt,twoside}{article} \ProcessOptions
\LoadClass{article}

\RequirePackage{graphicx, graphics,subfigure,picins,indentfirst,lastpage,epsfig,
                epstopdf, booktabs}%Song2012-10-29
\RequirePackage{amsmath,amsthm,amssymb,amsfonts,amscd,mathrsfs,bm,enumerate,multirow}
\RequirePackage[numbers,square,comma,sort&compress]{natbib}
\RequirePackage{ifpdf,fancyhdr}

\renewcommand\baselinestretch{1.2}  
\renewcommand\arraystretch{1.2}  
\renewcommand{\thefootnote}{\fnsymbol{footnote}} 

\newcommand*\Abstract[1]{%
  \begingroup\noindent\small\textbf{Abstract}\quad #1%
  \par\vspace*{1mm}\endgroup}
\newcommand*\Keywords[1]{%
  \begingroup\noindent\small\textbf{Keywords}\quad #1%
  \par\vspace*{1mm}\endgroup}
 
 
  \renewcommand\section{\@startsection{section}{1}{\z@}%
                                    {5mm \@plus 1mm \@minus -1mm}%
                                    {1mm \@plus .1mm}%
                                    {\normalfont\large\bfseries}}       %Song2012-10-29
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                       {2mm \@plus 1mm \@minus 0mm}%
                                       {1mm \@plus .1mm}%
                                       {\normalfont\normalsize\bfseries}}  %Song2012-10-29
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                          {1mm \@plus 1mm \@minus 1mm}%
                                          {1mm \@plus .1mm}%
                                          {\normalfont\normalsize\bfseries}}  %Song2012-10-29 
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                      {3.25ex \@plus1ex \@minus.2ex}%
                                      {-1em}%
                                      {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                         {3.25ex \@plus1ex \@minus .2ex}%
                                         {-1em}%
                                         {\normalfont\normalsize\bfseries}}

\renewcommand\figurename{Figure}
\renewcommand\tablename{Table}
\def\jssc@float#1{%                            %Song2012-10-29 
  \begin{center}\small
  \def\@captype{#1}
  }
\def\jssc@endfloat{\end{center}}                   %Song2012-10-29 
\renewenvironment{figure}
               {\jssc@float{figure}}                 %Song2012-10-29 
               {\jssc@endfloat}
\renewenvironment{table}
               {\jssc@float{table}}
               {\jssc@endfloat}                       %Song2012-10-29 

\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\textfloatsep \baselineskip \intextsep \baselineskip \floatsep
\baselineskip \dbltextfloatsep \baselineskip \dblfloatsep
\baselineskip
\newtheoremstyle{plain}% name
  {2.5pt}%Edited by Sun Y (2009-8-16) %{}      Space above, empty = `usual value'
  {2.5pt}%Edited by Sun Y (2009-8-16) %{}      Space below
  {\itshape}% Body font
  {18pt}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bf}% Thm head font      %Song (2012-10-29)
  {}%        Punctuation after thm head
  {1em}%Edited by Sun Y (2009-8-16) %{1em} Space after thm head: \newline = linebreak
  {\thmname{#1}\thmnumber{ #2}\thmnote{ {\rm (#3)}}}%         Thm head spec
\newtheoremstyle{definition}% name
  {2.5pt}%Edited by Sun Y (2009-8-16) %{}       Space above, empty = `usual value'
  {2.5pt}%Edited by Sun Y (2009-8-16) %{}      Space below
  {\upshape}% Body font   %Edited by Song (2012-10-29) %{}
  {18pt}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bf}% Thm head font  %Song (2012-10-29)
  {}%        Punctuation after thm head
  {1em}%Edited by Sun Y (2009-8-16) %{1em} Space after thm head: \newline = linebreak
  {\thmname{#1}\thmnumber{ #2}\thmnote{ {\rm (#3)}}}%         Thm head spec
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}  %edited by Song 2012-10-31
\newtheorem{thm}{Theorem}
\newtheorem{prop}[thm]{Proposition}        %edited by Song 2012-10-31
\newtheorem{lem}[thm]{Lemma}
 \newtheorem{cor}[thm]{Corollary}
  \theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}   %edited by Song 2012-10-31
\newtheorem{conjecture}[theorem]{Conjecture}     %edited by Song 2012-10-31
\newtheorem{assumption}[theorem]{Assumption}     %edited by Song 2012-10-31
 \newtheorem{algorithm}[theorem]{Algorithm}      %edited by Song 2012-10-31
 \newtheorem{remark}[theorem]{Remark} %edited by long 2010-6-12
\newtheorem{problem}[theorem]{Problem}%edited by long 2010-6-12
 \newtheorem{example}[theorem]{Example}%edited by long 2010-6-12
 \newtheorem{question}[theorem]{Question}%edited by long 2010-6-12
 \newtheorem{hypothesis}{Hypothesis}
\newtheorem{case}{Case}
%\newtheorem{algo}{Algorithm}                 %edited by Song 2012-10-31
\newtheorem{defn}{Definition}
\newtheorem{conj}{Conjecture}
\newtheorem{algo}[theorem]{Algorithm}       %edited by Song 2012-10-31
\newtheorem{assum}[theorem]{Assumption}
\newtheorem{exmp}[theorem]{Example}%edited by long 2010-6-12
  \newtheorem{rem}[theorem]{Remark}%edited by long 2010-6-12
\newcommand*\acknowledgements[1]{%
 \vspace{1mm} \indent{\bf Acknowledgements\quad #1}%     %edited by Song 2012-10-31
  \par\vspace*{1mm}}
  
\newcommand\BeginRef[1][199]{
\parindent=0pt\hangindent=0.6cm\hangafter=1\small
            \parbox[t]{0.6cm}
\begin{thebibliography}{#1}\addtolength{\itemsep}{-1.5ex}}
\newcommand\EndRef{\end{thebibliography}}


\newcommand\REF[1]{\bibitem{#1}}
\def\textsubscript#1%
{$_{\text{#1}}$}
%\newcommand*\supercite[1]{\textsuperscript{\cite{#1}}}
\renewcommand\refname{References}
\def\refname{\vskip 0.5cm  \centerline{\bf References} \vskip 0.5cm
               \parindent 0pt}
\renewcommand\@biblabel[1]{{[#1]\hfill}}
    \renewcommand\bibsection{%
\newcommand\jssc@bibsection{\@startsection {section}{1}{\z@}%  %edited by Song 2012-10-29
                 {-3.5ex \@plus -1ex \@minus -.2ex}%Edited by Sun Y(2009-08-16) %{-3.5ex \@plus -1ex \@minus -.2ex}
                 {0.3ex \@plus.2ex}%       %Edited by Sun Y(2009-08-16) %{1.3ex \@plus.2ex}
                 {\normalfont\bf}}   %Edited by Sun Y(2009-08-16) %{\normalfont\small\bfseries}}
  \jssc@bibsection*{\refname}
  \let\jssc@bibsection\relax}                 
  \def\bibfont{\small}
\bibsep\z@
\renewcommand\appendix{\par
  \section*{APPENDIX}
  \let\normalsize\small%
  \let\small\footnotesize%
  \normalsize%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  \setcounter{equation}{0}%
  \def\cl@section{\@elt{subsection}}
  \renewcommand\theequation{A\@arabic\c@equation}%
  }
  
\endinput
%%
%% Editor's definition, for test, Added by Sun Y(2009-8-16)
\def\prooof{\vspace{1mm}\hspace{2cm} {\it Proof}\quad}    %edited by Song 2012-10-29

%% End of file `jssc-new.cls'.  %Song 2012-10-29
