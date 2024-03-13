%%
%% This is file `jssms.cls',
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
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
% 类的名字
\ProvidesClass{jssms}
  [2011/06/30 v0.1b Journal of System Science and Mathematical Science Chinese Series
   article document class]
% 定义一个新的if条件
\newif\ifjssms@evenend \jssms@evenendfalse
% 定义载入模板的时候，条件设置为true
\DeclareOption{evenend}{\jssms@evenendtrue}
% 定义载入ctexart包
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
% 定义设置为双栏设置
\PassOptionsToClass{twoside}{ctexart}
\ProcessOptions
% 加载中文LaTeX包
\LoadClass{ctexart}
% 加载图片包，子图包，eps包等等
\RequirePackage{graphicx, graphics,subfigure,picins,indentfirst,lastpage,epsfig,
                epstopdf, booktabs,multirow}% by Song 20151024
\RequirePackage{amsmath,amsthm,amssymb,amsfonts,amscd,mathrsfs,bm,enumerate}
% 载入参考文献宏包，设置引用格式
\RequirePackage[numbers,square,comma,sort&compress]{natbib}
\setcitestyle{square,super}
% 设置页面样式
\RequirePackage{ifpdf,fancyhdr}
\input scrload.tex
\topmargin 0 true cm
\oddsidemargin 0pt
\headheight=16pt \headsep=20pt
%\footheight=0pt \footskip=0pt
\evensidemargin 0pt
\textwidth=14.5 true cm
\textheight=21 true cm

\parindent=2\ccwd
\linespread{1.3}
%\renewcommand\baselinestretch{1.1}
\allowdisplaybreaks[4]
\newfam\cryfam
\newfam\smbfam
\newfont{\htxt}{eufm10 scaled \magstep0}
\font\tenthxt=eufm10 scaled \magstep0 \font\tenBbb=msbm10 scaled
\magstep0 \font\tencyr=wncyr10 scaled \magstep0 \font\tenrm=cmr10
scaled \magstep0 \font\tenbf=cmb10 scaled \magstep0
\font\tenBb=msbm7 \font\tenB=msbm10 scaled \magstep3
\def\cyr{\tencyr}
\def\Bbb{\tenBbb}
\def\Bb{\tenBb}
\def\B{\tenB}
\def\txt{\tenthxt}


% 定义一些字体等等
\def\ST{\songti\rm\relax}
\def\HT{\heiti\bf\relax}
\def\FS{\fangsong\relax}
\def\KS{\kaishu\relax}

% 定义一些基本的命令等
\def\RM{\rm}
\def\It{\it}
\def\hat{\widehat}
\def\tilde{\widetilde}
\def\bar{\overline}
\def\epsilon{\varepsilon}
\def\dd{{\rm d}}
\def\ii{{\rm i}}
\def\q{\quad}
\def\dint{\displaystyle\int} 
\def\vsp{\vspace{1mm}}
\def\no{\nonumber}
\def\q{\quad} \def\qq{\qquad}
\def\ee{{\rm e}}
\newcommand{\rulex}{\hfill\rule{1mm}{3mm}}
\def\ay{\arraycolsep=1.5pt}
\def\d{\displaystyle}
\def\dfrac{\displaystyle\frac}
\def\la {\langle}              \def\ra {\rangle}
\def\n{\noindent}
\def\*{$\!\!^{^{^{\displaystyle *}}}$}
%\def\jssmszi{\zihao{10}\ziju{0.135}}
\ziju{0.135}

% 定义论文的开始部分
\def\jssms@beginENV{%
  \openin\@firstpage=firstpage.dat
  \ifeof\@firstpage
    %long 09-10-10 \setcounter{page}{1}
  \else
    \global\read\@firstpage to\@fpage
    \setcounter{page}{\@fpage}
  \fi
  \closein\@firstpage
}
% 定义论文的结束部分
\def\jssms@endENV{%
  \ifjssms@evenend%
    \ifodd\arabic{page}\hrule height0pt depth0pt\newpage
    \thispagestyle{empty}\ \fi
  \fi
  \@checkend{document}\clearpage
  \begingroup
  \addtocounter{page}{-1}
  \immediate\openout\@@lastpage=lastpage.dat
  \immediate\write\@@lastpage{\arabic{page}}
  \immediate\closeout\@@lastpage
  \endgroup
}
% 定义页面表头的位置
\def\b{\bigg}\def\bi{\Big}
\newcommand*\EditorNote[1]{%
  \begingroup
    \long\def\@makefntext##1{\zihao{6}\parindent 1em\indent\indent\hbox to 0pt{\hss$^{}$}##1}%
    \footnotetext{#1}%
  \endgroup}
\newcommand*\FootNote[1]{%
  \begingroup
    \long\def\@makefntext##1{\zihao{6}\parindent 1em\indent\indent\hbox to 0pt{\hss$^{}$}##1}%
    \footnote{#1}%
  \endgroup}
\newcommand\PageNum[1]{\setcounter{page}{#1}}
\def\ps@headings{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
  \def\@evenhead{%
    \bfseries\vbox{\hbox to\textwidth{\rlap{\small\thepage}
    \hfill {\zihao{-5}\songti {系}
                  \quad {统}\quad  {科}\quad  {学}\quad  {与}
                  \quad {数}\quad {学}}
    \hfill {\small\jssms@volume}{\zihao{-5}\songti 卷}
    \llap{}}\protect\vspace{2truemm}\relax
    \hrule depth0pt height0.15truemm width\textwidth}}
  \def\@oddhead{%
    \bfseries\vbox{\hbox to\textwidth{\rlap{}
    {\small\jssms@number}{\zihao{-5}\songti 期}\hfill
    {\small\zihao{-5}\songti \jssms@titlemark}\hfill
    \llap{\small\thepage}}
    \protect\vspace{2truemm}\relax
    \hrule depth0pt height0.15truemm width\textwidth}}
  \let\@mkboth\@gobbletwo
  \let\sectionmark\@gobble
  \let\subsectionmark\@gobble
}% by Song 20131122将页眉改为左右两个格式，奇偶页码时对应替换
\ps@headings
\newcommand*\TitleMark[1]{\def\jssms@titlemark{#1}}
\def\jssms@year{2011}
\def\jssms@month{1}
\def\jssms@volume{54}
\def\jssms@number{1}
\newcommand*\Volume[4]{%
  \def\jssms@year{#1}%
  \def\jssms@month{#2}%
  \def\jssms@volume{#3}%
  \def\jssms@number{#4}}
\def\jssms@paperid{}
\newcommand*\PaperID[1]{%
  \def\jssms@paperid{#1}}
\def\jssms@documentcode{}
\newcommand*\DocumentCode[1]{%
  \def\jssms@documentcode{#1}}
% 定义月份
\newcommand*\jssms@shortmonthname[1]{%
\ifcase#1\or Jan.\or Feb.\or Mar.\or Apr.\or May\or Jun.%
\or Jul.\or Aug.\or Sep.\or Oct.\or Nov.\or Dec.\fi}
% 定义中文标题
\newcommand*\Title[1]{%
 %\vspace*{0.3cm}%by Song 2017-01-17
  \begin{center}
    {\zihao{2}\heiti\huge\bf #1}\\[.2in]
  \end{center}
}
%定义英文标题
\newcommand*\ETitle[1]{%
  \vskip 0.6 cm %by Song 2017-01-17
  \begin{center}
    {\large\bf #1}\\[2mm]
  \end{center}
}
% 定义作者姓名
\newcommand*\Author[2]{%
 %\vspace*{0.3cm}%by Song 2017-01-17
  \begin{center}
    \zihao{4}\fangsong#1\\[0.2cm]
    \songti\zihao{6}#2\\[.1in]
  \end{center}
}
%\newcommand*\SAuthor[2]{%
 %\begin{center}
 %   \zihao{4}\fangsong#1\\[0.2cm]
 %   \songti\zihao{6}#2\\[.1in]
 % \end{center}
%}
% 定义通讯作者
\newcommand*\EAuthor[2]{%
  \begin{center}
    \zihao{4}\fangsong#1\\[2mm]
     \zihao{6} #2\\[2mm]
  \end{center}
}

%\newcommand*\BeginTitle{%
%\hspace{-0.5cm}\parbox[b]{4.5truecm}{\footnotesize\baselineskip=11pt\noindent%
%{\zihao{5}\heiti  {系} \hspace*{1.5mm}  {统} \hspace*{1.5mm} {科} \hspace*{1.5mm}  {学}\hspace*{1.5mm}{与} \hspace*{1.5mm}  {数}\hspace*{1.5mm} {学}}\\
%{\small\it J.\,\, Sys.\,\, Sci.\,\,} \& {\small\it \,\,\, Math.\,\, Scis.}\\[-1mm]
%{\bf\small \jssms@volume}(\small\jssms@number)\quad\,\,(\small\jssms@year, \small\jssms@month),\,\,\,\quad \thepage--\pageref{LastPage}\\} \hfill\parbox[t]{4.5truecm}{}}
% 定义页面标题等
\newcommand*\BeginTitle{%
\parbox[b]{6truecm}{} \hfill
\parbox[t]{4.5truecm}{\footnotesize\baselineskip=11pt\noindent%
{\zihao{5}\heiti  {系} \hspace*{1.5mm}  {统} \hspace*{1.5mm} {科} \hspace*{1.5mm}  {学} \hspace*{1.5mm} {与} \hspace*{1.5mm}  {数}\hspace*{1.5mm} {学}}\\
{\small\it J.\,\, Sys.\,\, Sci.\,\,} \& {\small\it \,\,\, Math.\,\, Scis.}\\[-1mm]
{\bf\small \jssms@volume}(\small\jssms@number)\quad\,\,(\small\jssms@year, \small\jssms@month),\,\,\,\quad \thepage--\pageref{LastPage}\\}}

\newcommand*\EndTitle{\vskip .1in}
% 定义摘要部分
\newcommand*\Abstract[1]{%
  \begingroup\vskip.1in\narrower\noindent
    {\heiti \small 摘要}\small\quad  #1 \baselineskip 12.3pt
   \par\vskip 0.3cm\endgroup}
\newcommand*\EAbstract[1]{%
  \begingroup\vskip.1in\narrower\noindent 
  {\bf Abstract}\quad  #1 \baselineskip 12.3pt
  \par\vskip.1in\endgroup}
\newcommand*\Keywords[2][关键词]{%
  \begingroup\narrower\noindent
    {\heiti \small #1}\small\quad  #2%
  \par\vskip 0.3cm\endgroup}
% 定义关键字部分
\newcommand*\EKeywords[2][Keywords]{%
  \begingroup\narrower\noindent
    {\bf #1}\quad #2%
  \par\endgroup}
\newcommand*\MRClass[2][MR(2000)主题分类号]{%
  \begingroup\narrower\noindent
    {\heiti\zihao{-5}\small  \bf #1}\zihao{6}\ \ #2%
  \par\endgroup}
% 定义文章DOI部分
  \newcommand*\DOI[2][DOI]{%
  \begingroup\narrower\noindent
    {\songti\zihao{-5} \bf #1}\zihao{6}\ \ 10.12341/jssms#2% 
  \par\small  \endgroup}
% 定义文章一级标题
\newcommand*\Section[2][]{%
  \edef\jssms@temp{#1}
  \ifx\jssms@temp\@empty\addtocounter{section}{1}
  \else\setcounter{section}{#1}\fi
  \vskip 0.5cm
  \leftline{\large\zihao{-4}\heiti\bf\thesection\ \ #2} 
  \vskip 0.3cm
  \normalsize
  \abovedisplayskip=4.0pt plus 2.0pt minus 2.0pt
  \belowdisplayskip=4.0pt plus 2.0pt minus 2.0pt
  \baselineskip 15.3pt
}
% 定义文章二级标题
\def\Subsection#1{\vskip 0.2cm\noindent {\zihao{5}\heiti\bf #1}
     \vskip 0.1cm}
% 定义文章三级标题
\def\Subsubsection#1{\vskip 0.1cm\noindent {\zihao{5}\heiti\bf #1}
     \vskip 0.05cm}
% 重新定义参考文献标题
\renewcommand\refname{\zihao{5}\heiti 参 \quad 考 \quad 文 \quad 献 \vspace*{4mm}} % by Song 20121107
% 定义引用文献格式
\makeatletter
        \renewcommand\@biblabel[1]{{[#1]\hfill}}
     \makeatother
% 定义文献引用格式
\newcommand\BeginRef{\vspace*{4mm}\small \zihao{6}\baselineskip 11pt
\parindent=0pt \hangindent=0.6cm \hangafter=1
 %  by Song 20121107
\begin{thebibliography}{199}\addtolength{\itemsep}{-1.5ex}
}
\newcommand\EndRef{\end{thebibliography}}
\newcommand*\REF[1]{\bibitem{#1}}
\newcommand*\supercite[1]{\textsuperscript{\cite{#1}}}
\endinput
%%
%% End of file `jssmsc.cls'.
