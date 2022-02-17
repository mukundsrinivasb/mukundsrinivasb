\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume_class}[2022/01/01 A resume of a software engineer]
\LoadClass{article}
\RequirePackage{titlesec,amsmath,layout,geometry,fancyhdr,lipsum,enumitem,lmodern}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[T1]{fontenc}
%%%Defining Headers
\fancypagestyle{resume}{
\fancyhf{}
\fancyhead[L]{ 
\fontsize{35}{35} \selectfont Mukund Srinivas \\ \fontsize{16}{20} \itshape \selectfont Flutter Developer  }
\fancyhead[R]{ 
\fontsize{14}{20} \selectfont mukundsrinivasb@hotmail.com
}
\renewcommand{\headrulewidth}{0 pt} 
} 
%Paper layout 
\geometry{
a4paper, 
textheight = 660 pt,
textwidth = 520 pt,
headsep = 20 pt,
headheight = 90 pt ,
footskip = 10 pt,
top = 120 pt,
left = 35 pt,
marginparwidth = 45 pt,
marginparsep  = 10 pt
}


%%%
%Format the title section, As suggested in the word document
%%%
\titleformat{\section}[block]
{\LARGE\scshape\raggedright\bf}
{}{0em}
{}
[\color{blue}\titlerule]
%%%
%Define a sub-title section with three parameters 
%Designation | Company | Timeframe
%%%
\newcommand{\designation}[3]{%
  \subsection[#1]{\Large \bfseries{#1} $  \boldsymbol{|} $ \large #2  \\[5pt] 
  \mdseries {#3}
  }
}
\titleformat{\subsection}[block]
{\large \upshape  \raggedright}
{}{0em}
{}
[]