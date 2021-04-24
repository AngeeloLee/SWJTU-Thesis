%%
%% swjtuthesis.cls
%% 西南交通大学本科生毕业论文模板类
%% 
%% version: 0.1.0
%% date: April 24, 2021
%% author: Angeelo Lee
%% Licence: MIT
%% source: github.com/angeelolee/swjtuthesis
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swjtuthesis}[2021/04/20 0.1.0 Southwest Jiaotong University Thesis Template]

% \DeclareMathOperator{degree}{\swjtu@degree} % 学位类型，向后兼容
\LoadClass[12pt,oneside]{ctexbook}

%% ---------------------- 模板变量 ----------------------
% 设置变量
\newcommand{\swjtu}[1]{
  \setkeys{swjtu}{#1}
}
\newcommand{\KV@swjtu@title}[1]{ \def\swjtu@title{#1} } % 标题 title
\newcommand{\KV@swjtu@author}[1]{ \def\swjtu@author{#1} } % 作者 author
\newcommand{\KV@swjtu@school}[1]{ \def\swjtu@school{#1} } % 学院 school
\newcommand{\KV@swjtu@major}[1]{ \def\swjtu@major{#1} } % 专业 major
\newcommand{\KV@swjtu@grade}[1]{ \def\swjtu@grade{#1} } % 年级 grade
\newcommand{\KV@swjtu@class}[1]{ \def\swjtu@class{#1} } % 班级 class
\newcommand{\KV@swjtu@teacher}[1]{ \def\swjtu@teacher{#1} } % 指导教师 teacher
\newcommand{\KV@swjtu@id}[1]{ \def\swjtu@id{#1} } % 学号 id
\newcommand{\KV@swjtu@donedate}[1]{ \def\swjtu@donedate{#1} } % 完成日期 doendate
% 任务书相关
\newcommand{\KV@swjtu@task@start}[1]{ \def\swjtu@task@start{#1} } % 开始日期 start
\newcommand{\KV@swjtu@task@end}[1]{ \def\swjtu@task@end{#1} } % 结束日期 start
\newcommand{\KV@swjtu@task@mean}[1]{ \def\swjtu@task@mean{#1} } % 意义 mean
\newcommand{\KV@swjtu@task@tasks}[1]{ \def\swjtu@task@tasks{#1} } % 任务 tasks
\newcommand{\KV@swjtu@task@target}[1]{ \def\swjtu@task@target{#1} } % 目标 target
\newcommand{\KV@swjtu@task@steps}[1]{ \def\swjtu@task@steps{#1} } % 步骤 steps
\newcommand{\KV@swjtu@task@note}[1]{ \def\swjtu@task@note{#1} } % 备注 note
% 摘要相关
\newcommand{\KV@swjtu@keywords}[1]{ \def\swjtu@keywords{#1} } % 关键词 keywords


%% ----------------------- 生成命令 ----------------------
% 生成封面
\renewcommand{\maketitle}{
  \setlength{\baselineskip}{20pt}
  \thispagestyle{empty}
  \vspace*{1cm}
  \begin{center}
  \begin{spacing}{2}\heiti\Large
    西\ 南\ 交\ 通\ 大\ 学 \\
    本科毕业设计（论文） \\
    \vspace*{1cm} \LARGE 
    \swjtu@title \\
    \vspace*{5cm} \normalsize
    年\qquad 级： \makebox[10em][c]{\uline{\hfill \swjtu@grade \hfill}} \\
    学\qquad 号： \makebox[10em][c]{\uline{\hfill \swjtu@id \hfill}} \\
    姓\qquad 名： \makebox[10em][c]{\uline{\hfill \swjtu@author \hfill}} \\
    专\qquad 业： \makebox[10em][c]{\uline{\hfill \swjtu@major \hfill}} \\
    指导教师： \makebox[10em][c]{\uline{\hfill \swjtu@teacher \hfill}} \\
    \vspace*{2cm}
    \swjtu@donedate
  \end{spacing}
  \end{center}

  \newpage
  \thispagestyle{empty}
  ~\\
  \newpage
}

% 学术诚信声明
\newcommand{\makeliability}{
  \setlength{\baselineskip}{20pt}
  \thispagestyle{empty}
  \begin{center}
  \begin{spacing}{1.5}\heiti\Large
    西南交通大学 \\
    本科毕业设计（论文）学术诚信声明
  \end{spacing}
  \end{center}

  \begin{spacing}{1.5}\songti\large
    本人郑重声明：所呈交的毕业设计（论文），是本人在导师的指导下，独立进行研究工作所取得的成果。
    除文中已经注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果。
    对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律结果由本人承担。
  \end{spacing}
  \vspace{20ex}

  \begin{spacing}{2.5}\songti\large\noindent
    \hspace*{16em} 作者签名：\\
    \hspace*{16em} 日期：\qquad 年 \qquad 月 \qquad 日
  \end{spacing}

  \newpage
  \thispagestyle{empty}
  ~\\
  \newpage
}

% 版权使用授权书
\newcommand{\makecopyright}{
  \setlength{\baselineskip}{20pt}
  \thispagestyle{empty}
  \begin{center}
  \begin{spacing}{1.5}\heiti\Large
    西南交通大学 \\
    本科毕业设计（论文）版权使用授权书
  \end{spacing}
  \end{center}

  \begin{spacing}{1.5}\songti\large
    本毕业设计（论文）作者同意学校保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。
    本人授权西南交通大学可以将本毕业设计（论文）的全部或部分内容编入有关数据库进行检索，
    可以采用影印、缩印或扫描等复制手段保存和汇编本毕业设计（论文）。
  \end{spacing}
  \vspace{8ex}

  \begin{spacing}{1.2}\songti\large\noindent
    \hspace*{8em} {\bf 保密}$\square$ ，在\makebox[2em][c]{\uline{\hfill\quad\hfill}}年解密后适用本授权书。\\
    \hspace*{2em} 本论文属于 \\
    \hspace*{8em} {\bf 不保密}\mbox{\ooalign{$\checkmark$\cr\hidewidth$\square$\hidewidth\cr}} \\ \\
    \hspace*{2em}（请在以上方框内打“$\checkmark$”）
  \end{spacing}
  \vspace{32ex}

  \begin{spacing}{2.0}\songti\large\noindent
    作者签名：\hspace*{12em} 指导教师签名：\\
    日期：\qquad 年 \qquad 月 \qquad 日 \hspace*{5em} 日期：\qquad 年 \qquad 月 \qquad 日
  \end{spacing}

  \newpage
  \thispagestyle{empty}
  ~\\
  \newpage
}

% 委员会评阅
\newcommand{\makecomments}{
  \thispagestyle{swjtu@onlyhead}
  \begin{spacing}{1.5}\noindent
    院系 \makebox[15em][c]{\uline{\hfill \swjtu@school \hfill}} \quad
    专业 \makebox[15em][c]{\uline{\hfill \swjtu@major \hfill}} \\
    年级 \makebox[15em][c]{\uline{\hfill \swjtu@grade \hfill}} \quad
    姓名 \makebox[15em][c]{\uline{\hfill \swjtu@author \hfill}} \\ \\
    题目 \makebox[33.5em][c]{\uline{\hfill \swjtu@title \hfill}} \\
  \end{spacing}

  \begin{spacing}{1.8}\noindent
    指导教师 \\
    评\qquad 语 \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \rightline{指导教师 \makebox[8em][c]{\uline{\hfill\quad\hfill}} (签章)}
  \end{spacing}

  \begin{spacing}{1.8}\noindent
    评\ 阅\ 人 \\
    评\qquad 语 \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \hspace*{4em} \makebox[31.5em][c]{\uline{\hfill\quad\hfill}} \\
    \rightline{评阅人 \makebox[8em][c]{\uline{\hfill\quad\hfill}} (签章)}
  \end{spacing}

  \begin{spacing}{2}\noindent
    成\qquad 绩 \makebox[15em][c]{\uline{\hfill\quad\hfill}} \\
    答辩委员会主任 \makebox[8em][c]{\uline{\hfill\quad\hfill}} （签章） \\
    \rightline{日期：\qquad 年 \qquad 月 \qquad 日}
  \end{spacing}
  
  \newpage
  \thispagestyle{empty}
  ~\\
  \newpage
}

% 生成任务书
\newcommand{\maketaskbook}{
  \begin{center}\heiti\Large\bf
    毕业设计（论文）任务书
  \end{center}
  \begin{spacing}{1.5}\noindent
    班\qquad 级 \makebox[8em][c]{\uline{\hfill \swjtu@class \hfill}} \quad
    学生姓名 \makebox[6em][c]{\uline{\hfill \swjtu@author \hfill}} \quad
    学\qquad 号 \makebox[7em][c]{\uline{\hfill \swjtu@id \hfill}} \\
    发题日期：\swjtu@task@start \hfill 完成日期：\swjtu@task@end \\
    题\qquad 目 \makebox[31.5em][c]{\uline{\hfill \swjtu@title \hfill}}
  \end{spacing}

  \vspace{2ex}
  \begin{spacing}{1.8}\noindent
    1、本论文的目的、意义 \par
    \noindent\uline{\qquad \swjtu@task@mean \hfill}
  \end{spacing}

  \vspace{2ex}
  \begin{spacing}{1.8}\noindent
    2、学生应完成的任务 \par
    \readlist*\tasks{\swjtu@task@tasks}
    \foreachitem\task\in\tasks{
      \noindent\uline{\qquad (\taskcnt{} )\ \task \hfill} \par
    }
  \end{spacing}

  \vspace{2ex}
  \begin{spacing}{1.8}\noindent
    3、本论文与本专业的培养目标达成度如何？（如在知识结构、能力结构、素质结构等方面有哪些有效的训练。） \par
    \noindent\uline{\qquad \swjtu@task@target \hfill}
  \end{spacing}

  \vspace{2ex}
  \begin{spacing}{1.8}\noindent
    4、论文各部分内容及时间分配：（共17周） \par
    \readlist*\steps{\swjtu@task@steps}
    \noindent
    \indent 第一部分 \uline{\qquad \steps[1] \hfill} (2 周) \\
    \indent 第二部分 \uline{\qquad \steps[2] \hfill} (2 周) \\
    \indent 第三部分 \uline{\qquad \steps[3] \hfill} (3 周) \\
    \indent 第四部分 \uline{\qquad \steps[4] \hfill} (5 周) \\
    \indent 第五部分 \uline{\qquad \steps[5] \hfill} (4 周) \\
    \indent 评阅及答辩 \uline{\hfill} (1 周) 
  \end{spacing}

  \vspace{2ex}
  \begin{spacing}{1.8}\noindent
    备\qquad 注 \uline{\hfill} \\
    \makebox[36em][c]{\uline{\hfill\qquad\hfill}}
  \end{spacing}

  \vspace{2ex}
  \begin{spacing}{2}\noindent
    指导教师：\makebox[10em][c]{\uline{\hfill}} \swjtu@task@start \\
    审\ 批\ 人：\makebox[10.5em][c]{\uline{\hfill}} \swjtu@task@start
  \end{spacing}

  \newpage
}

% 添加一个空白页
\newcommand{\blankpage}{
  \thispagestyle{empty}
  \addtocounter{page}{-1}
  ~\\
  \newpage
}

% 生成目录
\newcommand{\makecontents}{
  \tableofcontents{\thispagestyle{swjtu@frontstyle}}
}

% 添加参考文献到目录
\newcommand{\addreftocontents}{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{参考文献}
}

%% -------------------- 重定义matter ----------------------
% 重新定义frontmatter
\renewcommand{\frontmatter}{
  \setcounter{page}{1}
  \pagestyle{swjtu@frontstyle}
}

% 重新定义mainmatter
\renewcommand{\mainmatter}{
  \titleformat{\chapter}{\centering\Large\heiti}{第\arabic{chapter}章}{1em}{}
  \titlespacing{\chapter}{0cm}{0ex}{4ex}{}
  \titleformat{\section}{\raggedright\large\heiti}{\arabic{chapter}.\arabic{section}}{0.5em}{}
  \titleformat{\subsection}{\raggedright\normalsize\heiti}{\arabic{chapter}.\arabic{section}.\arabic{subsection}}{0.5em}{}
  \titleformat{\subsubsection}{\raggedright\small\heiti}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{0.5em}{}
  \clearpage
  \setcounter{page}{1}
  \pagestyle{swjtu@mainstyle}
  \assignpagestyle{\chapter}{swjtu@mainstyle}
}

% 重新定义backmatter
\renewcommand{\backmatter}{
  \setcounter{chapter}{0}
  % \titleformat{name=\chapter, numberless}{\centering\Large\heiti}{附录\arabic{chapter}}{1em}{}
  % \titlespacing{\chapter}{0cm}{0ex}{4ex}{}
  \titleformat{name=\section, numberless}{\raggedright\large\heiti}{\arabic{chapter}.\arabic{section}}{0.5em}{}
  \titleformat{name=\subsection, numberless}{\raggedright\normalsize\heiti}{\arabic{chapter}.\arabic{section}.\arabic{subsection}}{0.5em}{}
  \titleformat{name=\subsubsection, numberless}{\raggedright\small\heiti}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{0.5em}{}
  \titleformat{\section}{\raggedright\large\heiti}{\arabic{chapter}.\arabic{section}}{0.5em}{}
}

%% ----------------------- 环境 ---------------------------
% 摘要环境，带*表示英文摘要
\newenvironment{abstract}[1][摘\quad 要]{
  \begin{center}
    {\heiti\Large\bf #1}
  \end{center}
  \par
}{
  \par\vspace{3ex}\noindent
  {\bf 关键词：}
  \readlist*\keywords{\swjtu@keywords}
  \foreachitem\word\in\keywords{
    \word ；
  }
}
\newenvironment{abstract*}[1][Abstract]{
  \begin{center}
    {\heiti\Large\bf #1}
  \end{center}
  \par
}{
  \par\vspace{3ex}\noindent
  {\bf Keywords:\ }
  \readlist*\keywords{\swjtu@keywords}
  \foreachitem\word\in\keywords{
    \word ;\ 
  }
}

%% --------------------- 正文相关定义 ----------------------

% 定义结论
\newcommand{\conclusion}[1]{
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{结论}
}

% 定义致谢
\newcommand{\acknowladge}[1]{
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{致谢}
}

% 重定义附录
\renewcommand{\appendix}[1]{
  \stepcounter{chapter}
  \chapter*{附录\arabic{chapter}\quad #1}
  \addcontentsline{toc}{chapter}{附录\arabic{chapter}\quad #1}
}


%% 仅用于示例论文撰写
%% 实际使用时可删除或注释
\DeclareRobustCommand{\opt}[1]{{\fontfamily\ttdefault\upshape #1}}
\DeclareRobustCommand{\arg}[1]{{\fontfamily\ttdefault\upshape #1}}
\DeclareRobustCommand{\env}[1]{{\fontfamily\ttdefault\upshape #1}}
\DeclareRobustCommand{\cs}[1]{{\fontfamily\ttdefault\upshape #1}}
\DeclareRobustCommand{\pkg}[1]{{\fontfamily\sfdefault\upshape #1}}
\DeclareRobustCommand{\cls}[1]{{\normalfont\fontfamily\sfdefault\upshape #1}}
\DeclareRobustCommand{\file}[1]{{\fontfamily\ttdefault\upshape #1}}
