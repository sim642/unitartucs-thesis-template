\ProvidesClass{unitartucs-thesis}[2024-09-23 v0.1]

\LoadClass[12pt]{article}

\DeclareOption{english}{
    \PassOptionsToPackage{english}{babel}
}
\DeclareOption{estonian}{
    \PassOptionsToPackage{estonian}{babel}
}

\ProcessOptions* % process options in order for correct language order for babel

\RequirePackage[a4paper]{geometry}

% Typeset text in Times Roman instead of Computer Modern (EC)
\RequirePackage{times} % TODO: replace with non-deprecated package

% Suggested packages:
\RequirePackage{microtype}  %towards typographic perfection...
\RequirePackage{inconsolata} %nicer font for code listings. (Use \ttfamily for lstinline bastype)

\RequirePackage{babel}

% Change Babel document elements
\addto\captionsestonian{%
  \renewcommand{\refname}{Viidatud kirjandus}%
  \renewcommand{\appendixname}{Lisad}%
}


\renewcommand*{\maketitle}{
    \thispagestyle{empty}
    \begin{center}

    \large
    \iflanguage{english}{%
    UNIVERSITY OF TARTU\\
    Faculty of Science and Technology\\
    Institute of Computer Science\\
    Computer Science Curriculum\\ % TODO: configurable
    %Software Engineering Curriculum\\
    }{%\iflanguage
    TARTU ÜLIKOOL\\
    Loodus- ja täppisteaduste valdkond\\
    Arvutiteaduse instituut\\
    Informaatika õppekava\\ % TODO: configurable
    }%\iflanguage

    %\vspace*{\stretch{5}}
    \vspace{25mm}

    \Large \@author

    \vspace{4mm}

    \huge \@title

    %\vspace*{\stretch{7}}
    \vspace{20mm}

    \Large
    \iflanguage{english}{%
    %Bachelor's Thesis (9 ECTS)
    Master's Thesis (30 ECTS) % TODO: configurable
    }{%\iflanguage
    Bakalaureusetöö (9 EAP) % TODO: configurable
    }%\iflanguage

    \end{center}

    \vspace{2mm}

    \begin{flushright}
    {
    \setlength{\extrarowheight}{5pt}
    \begin{tabular}{r l}
    \sffamily \iflanguage{english}{Supervisor(s)}{Juhendaja(d)}: &                    \sffamily Axel Rose, MSc \\  % TODO: configurable
                & \sffamily May Flower, PhD
    \end{tabular}
    }
    \end{flushright}

    %\vspace*{\stretch{3}}\iflanguage
    %\vspace{10mm}

    \vfill
    \centerline{\large Tartu \the\year}
}
