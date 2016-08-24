%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Nan's LaTeX book Template for Chinese Support     %%
%% Author: Nan Zhang (nannanmath@yeah.net)           %%
%% License: ISC license                              %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NanCNBook}[2016/07/11 Nan's latex book template for chinese support]
\LoadClass[a4paper, 12pt]{book}

%% layout
% indent
\RequirePackage[top=3cm,bottom=3cm,left=3cm,right=3cm]{geometry}
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}
\linespread{1.2}
\setlength{\parskip}{12pt}
% add graph
\RequirePackage{graphicx}
%\graphicspath{{./}}}
% super ref
\RequirePackage[colorlinks,
linkcolor=red,
anchorcolor=blue,
citecolor=green]{hyperref}
% get math suppport
\RequirePackage{latexsym,pifont,units,amsmath,amsfonts,amssymb,marvosym}
% insert code
\RequirePackage{minted}

%% fonts setting
% xeCJK fonts
\RequirePackage[slantfont,boldfont]{xeCJK}
\RequirePackage{CJKnumb}
\setCJKmainfont[BoldFont={SimHei}, ItalicFont={SimHei}]{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{FangSong}
%Chinese fonts
\setCJKfamilyfont{hei}{SimHei}
\newcommand{\hei}{\CJKfamily{hei}}
\setCJKfamilyfont{song}{SimSun}
\newcommand{\song}{\CJKfamily{song}}
\setCJKfamilyfont{kai}{KaiTi}
\newcommand{\kai}{\CJKfamily{kai}}
\setCJKfamilyfont{li}{LiSu}
\newcommand{\li}{\CJKfamily{li}}
\setCJKfamilyfont{fang}{FangSong}
\newcommand{\fang}{\CJKfamily{fang}}
% font size
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}

%% Rename to Chinese
\renewcommand{\contentsname}{目{\qquad}录}
\renewcommand{\listfigurename}{插{\quad}图{\quad}目{\quad}录}
\renewcommand{\listtablename}{表{\quad}格{\quad}目{\quad}录}
\renewcommand{\appendixname}{附{\qquad}录}
\renewcommand{\indexname}{索{\qquad}引}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{\hei{表}}
\renewcommand{\bibname}{参{\quad}考{\quad}文{\quad}献}

%% contents
\setcounter{tocdepth}{1}
\RequirePackage{titletoc}
% part
\titlecontents{part}
[0em]
{\hei}
{第\CJKnumber{\thecontentslabel}部分\quad}
{}{\titlerule*{.}\contentspage}
% chapter
\titlecontents{chapter}
[1em]
{\hei}
{第\CJKnumber{\thecontentslabel}章\quad}
{}{\titlerule*{.}\contentspage}
% section
\titlecontents{section}
[2em]
{\hei}
{\S\thecontentslabel\quad}
{}{\titlerule*{.}\contentspage}
% start from an odd page
\let\oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{\cleardoublepage%
  \oldtableofcontents%
  \pagestyle{plain}}
\let\oldlistoffigures\listoffigures
\renewcommand{\listoffigures}{\cleardoublepage%
  \oldlistoffigures%
  \pagestyle{plain}}
\let\oldlistoftables\listoftables
\renewcommand{\listoftables}{\cleardoublepage%
  \oldlistoftables%
  \pagestyle{plain}}

%% Part Chapter and Section
\setcounter{secnumdepth}{3}
\RequirePackage[newparttoc]{titlesec}
% part
\let\oldpart\part
\renewcommand{\part}{\cleardoublepage\oldpart}
\renewcommand{\thepart}{\arabic{part}}
\titleformat{\part}
{\centering\normalfont\Huge\bfseries}
{第\CJKnumber{\thepart}部分}
{1em}
{}
% chapter
\let\oldchapter\chapter
\renewcommand{\chapter}{\cleardoublepage\oldchapter}
\titleformat{\chapter}
{\centering\huge\bfseries}
{第\CJKnumber{\thechapter}章}
{1em}
{}
% section
\titleformat{\section}
{\Large\bfseries}
{\S~\thesection}
{1em}
{}
% subsubsection
\titleformat{\subsubsection}
{\bfseries}
{\textbullet~}
{0em}
{}


%% head and foot
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\hei{第\CJKnumber{\thechapter}章}\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\hei{\S\thesection}\ #1}}
\fancyhead{} %clear all fields                                 
\fancyhead[CE]{\leftmark}
\fancyhead[CO]{\rightmark}
\fancyhead[RO,LE]{}%
\fancyhead[RE,LO]{}%
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

%% appendix
\newenvironment{cnappendix}{%
% header and footer
\renewcommand{\chaptermark}[1]{\markboth{\bfseries{附录\thechapter\ ##1}}{}}
\renewcommand{\sectionmark}[1]{\markright{\bfseries{\thesection\ ##1}}}
% chapter
\titlecontents{chapter}
[0em]
{\hei}
{附录\thecontentslabel\quad}
{}{\titlerule*{.}\contentspage}
% section
\titlecontents{section}
[1em]
{\hei}
{\thecontentslabel\quad}
{}{\titlerule*{.}\contentspage}
% chapter
\titleformat{\chapter}
{\centering\huge\bfseries}
{附录\thechapter}
{1em}
{}
% section
\titleformat{\section}
{\centering\Large\bfseries}
{\thesection}
{1em}
{}
\appendix
}%

%% acknowledgment
\newcommand{\acknowledgement}{%
  \cleardoublepage
  \chapter*{致\hspace{4ex}谢}
  \addcontentsline{toc}{chapter}{致{\quad}谢}
}

%% acknowledgment
\newcommand{\notation}{%
  \cleardoublepage
  \chapter*{符号说明}
  \addcontentsline{toc}{chapter}{符号说明}
}

%% bibliography
\newcommand{\cnbibliography}[1]{%
\cleardoublepage
\bibliographystyle{unsrt}
\bibliography{#1}
\addcontentsline{toc}{part}{\bibname}
}

%% table
\newenvironment{cntable}[2]{%
  \begin{table}[h]
    \setlength{\abovecaptionskip}{-5pt}
    \caption{#1}
    \label{#2}
    \centering
}%
{
  
    \end{table}
}

%% figure
\newenvironment{cnfigure}[2]{%
  \begin{figure}[h]
    \setlength{\abovecaptionskip}{-20pt}
    \def\optcaption{#1}
    \def\optlabel{#2}
    \centering
  }%
  {
    \caption{\optcaption}
    \label{\optlabel}
    \end{figure}
  }


%% cnfrmfunc
  \RequirePackage{enumitem}
  \RequirePackage{mdframed}
  \newenvironment{cnfrmfunc}{%
    \begin{mdframed}
    \begin{itemize}[leftmargin=*, label=\ding{70}, font=]
  }%
  {
    \end{itemize}
    \end{mdframed}
  }

\endinput