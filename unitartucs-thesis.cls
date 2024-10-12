\ProvidesClass{unitartucs-thesis}[2024-09-23 v0.1]

\LoadClass[12pt]{article}

\DeclareOption{english}{
    \PassOptionsToPackage{english}{babel}
    \PassOptionsToPackage{datesep=/}{datetime2}
}
\DeclareOption{estonian}{
    \PassOptionsToPackage{estonian}{babel}
    \PassOptionsToPackage{datesep=.}{datetime2}
}

\ProcessOptions* % process options in order for correct language order for babel

\RequirePackage[a4paper]{geometry}

% Typeset text in Times Roman instead of Computer Modern (EC)
\RequirePackage{times} % TODO: replace with non-deprecated package

% Suggested packages:
\RequirePackage{microtype}  %towards typographic perfection...
\RequirePackage{inconsolata} %nicer font for code listings. (Use \ttfamily for lstinline bastype)

\RequirePackage{babel}
\RequirePackage[style=ddmmyyyy]{datetime2}

\RequirePackage{titlesec}
\newcommand{\sectionbreak}{\clearpage\phantomsection}

\RequirePackage[toc,page]{appendix}

\RequirePackage{array}
% Print a dot instead of colon in table or figure captions
\RequirePackage[labelsep=period]{caption}

\newcommand{\supervisorsname}{Supervisor(s)}
\newcommand{\infoname}{Info page}
\newcommand{\keywordsname}{Keywords}

% Change Babel document elements
\addto\captionsenglish{%
    \renewcommand{\supervisorsname}{Supervisor(s)}
    \renewcommand{\infoname}{Info page}
    \renewcommand{\keywordsname}{Keywords}
    \renewcommand{\appendixname}{Appendix}%
    \renewcommand{\appendixtocname}{Appendix}% TODO: why changed from Appendices?
    \renewcommand{\appendixpagename}{Appendix}% TODO: why changed from Appendices?
}
\addto\captionsestonian{%
    \renewcommand{\supervisorsname}{Juhendaja(d)}
    \renewcommand{\infoname}{Infoleht}
    \renewcommand{\abstractname}{Lühikokkuvõte}
    \renewcommand{\keywordsname}{Võtmesõnad}
    \renewcommand{\refname}{Viidatud kirjandus}%
    \renewcommand{\appendixname}{Lisad}%
    \renewcommand{\appendixtocname}{Lisad}%
    \renewcommand{\appendixpagename}{Lisad}%
}

\DTMsavenow{@date}
\renewcommand\date[1]{\DTMsavedate{@date}{#1}}
\renewcommand\@date{\DTMusedate{@date}}

\newcommand\supervisor[1]{\renewcommand\@supervisor{#1}}
\newcommand\@supervisor{\@latex@error{No \noexpand\supervisor given}\@ehc}

\newcommand\curriculum[1]{\renewcommand\@curriculum{#1}}
\newcommand\@curriculum{\@latex@error{No \noexpand\curriculum given}\@ehc}

\newcommand\thesis[1]{\renewcommand\@thesis{#1}}
\newcommand\@thesis{\@latex@error{No \noexpand\thesis given}\@ehc}

\newcounter{@supervisori}
\newcounter{@supervisors}

\renewcommand*{\maketitle}{
    \thispagestyle{empty}
    \begin{center}

    \large
    \iflanguage{english}{%
    UNIVERSITY OF TARTU\\
    Faculty of Science and Technology\\
    Institute of Computer Science\\
    }{%\iflanguage
    TARTU ÜLIKOOL\\
    Loodus- ja täppisteaduste valdkond\\
    Arvutiteaduse instituut\\
    }%\iflanguage
    \@curriculum\\

    %\vspace*{\stretch{5}}
    \vspace{25mm}

    \Large \@author

    \vspace{4mm}

    \huge \@title

    %\vspace*{\stretch{7}}
    \vspace{20mm}

    \Large \@thesis

    \end{center}

    \vspace{2mm}

    \begin{flushright}
    {
    \setlength{\extrarowheight}{5pt}
    \renewcommand*{\and}{\\ & \sffamily}
    \newcommand*{\degree}[1]{, ##1}
    \begin{tabular}{r l}
    \sffamily \supervisorsname: & \sffamily \@supervisor
    \end{tabular}
    }
    \end{flushright}

    %\vspace*{\stretch{3}}\iflanguage
    %\vspace{10mm}

    \vfill
    \centerline{\large Tartu \DTMfetchyear{@date}}
}

\newenvironment{@info}[1]{
    \noindent\textbf{\large #1}
    \vspace*{1ex} % TODO: why 3ex only in one language in old template?

    \renewenvironment{abstract}{
        \noindent\textbf{\abstractname:}

        \noindent\ignorespaces % TODO: why need \ignorespaces?
    }{\vspace*{1ex}}

    \newcommand*{\keywords}[1]{
        \noindent\textbf{\keywordsname:}\\
        ##1

        \vspace*{1ex}
    }

    \newcommand*{\cercs}[1]{
        \noindent\textbf{CERCS:}\\
        ##1

        \vspace*{1ex}
    }
}{\filbreak\vspace{4ex}}

\newenvironment{info}{\begin{@info}{\@title}}{\end{@info}}
\newenvironment{otherinfo}[2]{\begin{otherlanguage}{#1}\begin{@info}{#2}}{\end{@info}\end{otherlanguage}}

% babel's \addto doesn't take \long argument, so put use intermediate macro
\newcommand*{\licencetext@english}{
    \subsection*{Non-exclusive licence to reproduce thesis and make thesis public}

    I, \textbf{\@author}, %author's name

    \begin{enumerate}
    \item
    herewith grant the University of Tartu a free permit (non-exclusive licence) to
    reproduce, for the purpose of preservation, including for adding to the DSpace digital archives until the expiry of the term of copyright,
    \par
    \enquote{\textbf{\@title}}, %
    \par
    supervised by \@supervisor. %supervisor's name
    \item
    I grant the University of Tartu a permit to make the work specified in p. 1 available to the public via the web environment of the University of Tartu, including via the DSpace digital archives, under the Creative Commons licence CC BY NC ND 3.0, which allows, by giving appropriate credit to the author, to reproduce, distribute the work and communicate it to the public and prohibits the creation of derivative works and any commercial use of the work until the expiry of the term of copyright.
    \item
    I am aware of the fact that the author retains the rights specified in p. 1 and 2.
    \item
    I certify that granting the non-exclusive licence does not infringe other persons' intellectual property rights or rights arising from the personal data protection legislation.
    \end{enumerate}

    \noindent
    \@author\\ %author's name
    \textbf{\textsl{\@date}}
}
\newcommand*{\licencetext@estonian}{
    \subsection*{Lihtlitsents lõputöö reprodutseerimiseks ja üldsusele kättesaadavaks tegemiseks}

    Mina, \textbf{\@author}, %author's name

    \begin{enumerate}
    \item
    annan Tartu Ülikoolile tasuta loa (lihtlitsentsi) minu loodud teose
    \par
    \enquote{\textbf{\@title}}, %title of thesis
    \par
    mille juhendaja(d) on \@supervisor, %supervisor's name(s)
    \par
    reprodutseerimiseks eesmärgiga seda säilitada, sealhulgas lisada digitaalarhiivi DSpace kuni autoriõiguse kehtivuse lõppemiseni.
    \par
    \item
    Annan Tartu Ülikoolile loa teha punktis 1 nimetatud teos üldsusele kättesaadavaks Tartu Ülikooli veebikeskkonna, sealhulgas digitaalarhiivi DSpace kaudu Creative Commonsi litsentsiga CC BY NC ND 3.0, mis lubab autorile viidates teost reprodutseerida, levitada ja üldsusele suunata ning keelab luua tuletatud teost ja kasutada teost ärieesmärgil, kuni autoriõiguse kehtivuse lõppemiseni.
    \item
    Olen teadlik, et punktides 1 ja 2 nimetatud õigused jäävad alles ka autorile.
    \item
    Kinnitan, et lihtlitsentsi andmisega ei riku ma teiste isikute intellektuaalomandi ega isikuandmete kaitse õigusaktidest tulenevaid õigusi.
    \end{enumerate}

    \noindent
    \@author\\ %author's name
    \textbf{\textsl{\@date}}
}

\newcommand*{\licencename}{Licence}
\newcommand*{\licencetext}{}
\newcommand*{\andname}{and}
\addto\captionsenglish{%
    \renewcommand{\licencename}{Licence}
    \renewcommand{\licencetext}{\licencetext@english}
    \renewcommand{\andname}{and}
}
\addto\captionsestonian{%
    \renewcommand{\licencename}{Litsents}
    \renewcommand{\licencetext}{\licencetext@estonian}
    \renewcommand{\andname}{ja}
}
\newcommand*{\printlicence}{
    \newcommand*{\degree}[1]{}%
    \setbox0=\vbox{\setcounter{@supervisors}{1}\renewcommand*{\and}{\stepcounter{@supervisors}}\@supervisor}%
    \setcounter{@supervisori}{1}%
    \renewcommand*{\and}{%
        \stepcounter{@supervisori}\relax
        \ifnum\value{@supervisori}=\value{@supervisors}
            \unskip\andname\
        \else%
            \unskip,
        \fi
    }%
    \section{\licencename}%
    \licencetext
}


% \RequirePackage{bookmark}
\AtEndPreamble{ % workaround to avoid hyperref option clash
    % Packages for getting clickable links in PDF file
    %\usepackage{hyperref}
    \usepackage[hidelinks,pdfusetitle]{hyperref} %hide red (blue,green) boxes around links
    \usepackage[numbered,open]{bookmark} % need bookmark for \bookmarksetupnext
}

\AddToHook{env/appendices/before}{
    % https://tex.stackexchange.com/a/121778
    \bookmarksetupnext{level=chapter}
}

\AddToHook{cmd/appendices/after}{ % this is different from env/appendices/begin!
    % https://tex.stackexchange.com/a/64404
    \addtocontents{toc}{\let\protect\l@section\protect\l@subsection}

    \renewcommand\thesection{\Roman{section}}
}

