%%
%% This is file `APSart.cls',
%%
%% Copyright 2006-2007
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
%% This the class file of the APSart class with LaTeX2e.
%%
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{APSart}[2007/10/01 v1.02c APSart document class]
\DeclareOption{Chinese}{%
  \AtBeginDocument{\input{APSart_cn.cfg}}%
  \PassOptionsToClass{\CurrentOption}%
    {ctexart}}
\DeclareOption{English}{%
  \AtBeginDocument{\input{APSart_en.cfg}}%
  \PassOptionsToClass{\CurrentOption}%
    {ctexart}}
\ProcessOptions
\LoadClass[cs4size,a4paper,11pt,onecolumn,twoside]{ctexart}[2004/08/14]
%% math packages
\RequirePackage{amsmath,amssymb,amsfonts,amsthm,bm,mathrsfs}
%% graphics packages
\RequirePackage{epsfig,graphicx,epstopdf,picins,picinpar,subfigure,pstricks}
%% Other packages:
%\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{color}
\RequirePackage{booktabs}
\RequirePackage{fancyhdr,fancyvrb}
\RequirePackage{cite}
%\RequirePackage[small,compact]{titlesec}
%\DeclareMathAlphabet{\mathbbold}{U}{bbold}{m}{n}
\headheight 11pt
\headsep 6 true mm
\footskip 0pt
\addtolength{\topmargin}{-4 true mm}
\oddsidemargin 0.4 true cm
\evensidemargin 0.4 true cm
\textwidth 15.0 true cm
\textheight 21.5 true cm
\parindent 2\ccwd
%\renewcommand{\baselinestretch}{1.2}
\bibliographystyle{plain}
%% 修改论文标题的前置空行数
\makeatletter
\def\@maketitle{%
 \newpage
  \null
  \vskip 0em%  % -- 原来为2em
 \begin{center}%
 \let \footnote \thanks
   {\LARGE \@title \par}%
   \vskip 1.5em%
   {\large
     \lineskip .5em%
     \begin{tabular}[t]{c}%
       \@author
     \end{tabular}\par}%
   \vskip 1em%
   {\large \@date}%
 \end{center}%
 \par
 \vskip 1.5em}
\makeatother
\endinput
%%
%% End of file `APSart.cls'.
