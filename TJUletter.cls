% TJUletter.cls - Tianjin University Recommendation Letter Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TJUletter}[2025/11/23 v3.2 TJU Recommendation Letter Template]

\LoadClass[11pt,a4paper]{article}

% --- Core Packages ---
% International standard margins (1 inch = 2.54cm), optimized for letterhead
\RequirePackage[top=3.175cm, bottom=2.54cm, left=2.54cm, right=2.54cm, headheight=63.25076pt, headsep=0.5cm, footskip=1.5cm]{geometry}
\RequirePackage[UTF8, scheme=plain]{ctex}
\RequirePackage{ifthen} % Required for isodate package
\RequirePackage[english]{isodate} % Use standard English date format (Month DD, YYYY)
\RequirePackage{setspace} % For line spacing adjustment
\setstretch{1.15} % International standard line spacing for formal letters
\RequirePackage{ragged2e} % Provides \justifying command
\RequirePackage{fontspec}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{tikz}
\RequirePackage{eso-pic}
\RequirePackage{hyperref}
\hypersetup{
	colorlinks=true,
	linkcolor=TJUBlack,
	filecolor=TJUBlack,
	urlcolor=TJUBlue,
	citecolor=TJUBlack,
	pdfborder={0 0 0},
}

\RequirePackage{adjustbox} % For element alignment

% Fix PDF transparency display issue (XeTeX compatible)
\special{pdf:put @thispage << /Group << /S /Transparency /I true /CS /DeviceRGB >> >>}

% --- 1. Official Color Definitions ---
\definecolor{TJUBlue}{RGB}{0, 70, 140}
\definecolor{TJURed}{RGB}{150, 40, 0}
\definecolor{TJUBlack}{RGB}{30, 30, 30}

% --- 2. Font Settings ---
% Computer Modern (LaTeX default) - Standard for STEM disciplines
% To use Times New Roman instead, uncomment the following lines:
% \setmainfont{Times New Roman}[
% 	BoldFont = Times New Roman Bold,
% 	ItalicFont = Times New Roman Italic
% ]
% \setsansfont{Arial}

% --- 3. Interface Definitions ---
\newcommand{\sendername}[1]{\def\@sendername{#1}}
\newcommand{\sendertitle}[1]{\def\@sendertitle{#1}}
\newcommand{\senderdept}[1]{\def\@senderdept{#1}}
\newcommand{\senderphone}[1]{\def\@senderphone{#1}}
\newcommand{\senderemail}[1]{\def\@senderemail{#1}}
\newcommand{\signaturefile}[1]{\def\@signaturefile{#1}}
\newcommand{\letterdate}[1]{\def\@letterdate{#1}}

% Default values
\def\@senderphone{+86-22-2740-7649}
\def\@senderemail{[Email]}
\def\@letterdate{\today}

% --- 4. Watermark Function ---
\newcommand{\makeWatermark}{
	\AddToShipoutPictureBG{%
		\begin{tikzpicture}[remember picture,overlay]
			\IfFileExists{assets/building.png}{%
				\node[inner sep=0pt] at (current page.center)
				{\includegraphics[width=16cm]{assets/building.png}};
			}{}
		\end{tikzpicture}%
	}
}

% --- 5. Header Design ---
\pagestyle{fancy}
\fancyhf{}

% [L] Left: Official Logo Combination (Vertical center with valign=c)
\fancyhead[L]{%
	\IfFileExists{assets/logo.pdf}{%
		\adjustbox{valign=c}{\includegraphics[height=2cm]{assets/logo.pdf}}%
	}{%
		\textcolor{red}{[Logo Missing]}%
	}%
}

% [R] Right: Department & Contact Info (Letterhead Style)
% valign=c ensures alignment with the left logo
\fancyhead[R]{%
	\adjustbox{valign=c}{%
		\begin{minipage}[r]{8.5cm}
			\raggedleft
			\fontsize{9}{12}\selectfont \color{TJUBlack}
			\textbf{\@senderdept} \\
			Tianjin University \\
			\textcolor{TJUBlue}{Email:} \@senderemail \\
			\textcolor{TJUBlue}{Tel:} \@senderphone
		\end{minipage}%
	}%
}

% Professional double-line divider (symmetric with footer)
\renewcommand{\headrule}{%
	\vspace{1mm}
	{\color{TJUBlue}\hrule height 1.5pt}
	\vspace{1.5pt}
	{\color{TJURed}\hrule height 0.5pt}
}

% --- 6. Footer Design ---
\fancyfoot[C]{%
	\vspace{4mm}
	\fontsize{7}{9}\selectfont \textcolor{TJUBlack}{%
		\centering
		\begin{tabular}{c}
			\textcolor{TJUBlue}{\textbf{Weijin Road Campus:}} No.92 Weijin Road, Nankai District, Tianjin 300072, China       \\
			\textcolor{TJUBlue}{\textbf{Peiyangyuan Campus:}} No.135 Yaguan Road, Haihe Education Park, Tianjin 300350, China \\
			\href{http://www.tju.edu.cn}{\textcolor{TJUBlack}{www.tju.edu.cn}}
		\end{tabular}%
	}
}
\renewcommand{\footrule}{%
	\vspace{-2mm}
	{\color{TJURed}\hrule height 0.5pt}
	\vspace{1.5pt}
	{\color{TJUBlue}\hrule height 1.5pt}
}

% --- 7. Signature Module (International Standard) ---
\newcommand{\makeSignature}{
	\vspace{1.5cm}
	\noindent Sincerely, \\[0.3cm]
	\IfFileExists{\@signaturefile}{
		\includegraphics[height=1.8cm]{\@signaturefile} \\[0.2cm]
	}{
		\vspace{2.5cm} % Space for handwritten signature
	}
	\noindent
	\textbf{\@sendername} \\
	\textit{\@sendertitle} \\
	\@senderdept \\
	Tianjin University \\
	\textit{Dated: \@letterdate}
}

% --- 8. Body and Date ---
\newcommand{\makeLetterHead}{
	% Increase vertical spacing so date doesn't touch header
	\vspace*{0.5cm}
	\begin{flushright}
		\@letterdate
	\end{flushright}
	\vspace{0.5cm}
}

% Set body text to fully justified
\AtBeginDocument{\justifying}


\endinput
