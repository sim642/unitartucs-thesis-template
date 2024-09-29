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

\newcommand{\keywordsname}{Keywords}

% Change Babel document elements
\addto\captionsenglish{%
    \renewcommand{\keywordsname}{Keywords}
}
\addto\captionsestonian{%
    \renewcommand{\abstractname}{Lühikokkuvõte}
    \renewcommand{\keywordsname}{Võtmesõnad}
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

\newenvironment{@info}[1]{
    \noindent\textbf{\large #1}
    \vspace*{1ex} % TODO: why 3ex only in one language in old template?

    \renewenvironment{abstract}{
        \noindent\textbf{\abstractname:}

        \noindent\ignorespaces % TODO: why need \ignorespaces?
    }{\vspace*{1ex}}

    \newcommand*{\keywords}[1]{
        \noindent\textbf{\keywordsname:}\\ % TODO: why \\ here, but not \cercs?
        ##1

        \vspace*{1ex}
    }

    \newcommand*{\cercs}[1]{
        \noindent\textbf{CERCS:} % TODO: why not \\ here, but in \keywords?
        ##1

        \vspace*{1ex}
    }
}{} % TODO: \filbreak

\newenvironment{info}{\begin{@info}{\@title}}{\end{@info}}
\newenvironment{otherinfo}[2]{\begin{otherlanguage}{#1}\begin{@info}{#2}}{\end{@info}\end{otherlanguage}}

\newcommand{\licencehint}[2]{\\\hspace*{#1}\textsl(#2)\par}
% babel's \addto doesn't take \long argument, so put use intermediate macro
\newcommand*{\licencetext@english}{
    \subsection*{Non-exclusive licence to reproduce thesis and make thesis public}

    I, \textbf{Alice Cooper}, %author's name
    \licencehint{10mm}{author's name}

    \begin{enumerate}
    \item
    herewith grant the University of Tartu a free permit (non-exclusive licence) to
    \par
    reproduce, for the purpose of preservation, including for adding to the DSpace digital archives until the expiry of the term of copyright,
    \par
    \textbf{Type Inference for Fourth Order Logic Formulae}, %
    \licencehint{10mm}{title of thesis}
    \par
    supervised by Axel Rose and May Flower. %supervisor's name
    \licencehint{10mm}{supervisor's name}
    \item
    I grant the University of Tartu a permit to make the work specified in p. 1 available to the public via the web environment of the University of Tartu, including via the DSpace digital archives, under the Creative Commons licence CC BY NC ND 3.0, which allows, by giving appropriate credit to the author, to reproduce, distribute the work and communicate it to the public and prohibits the creation of derivative works and any commercial use of the work until the expiry of the term of copyright.
    \item
    I am aware of the fact that the author retains the rights specified in p. 1 and 2.
    \item
    I certify that granting the non-exclusive licence does not infringe other persons' intellectual property rights or rights arising from the personal data protection legislation.
    \end{enumerate}

    \noindent
    Alice Cooper\\ %author's name
    \textbf{\textsl{dd/mm/yyyy}}
}
\newcommand*{\licencetext@estonian}{
    \subsection*{Lihtlitsents lõputöö reprodutseerimiseks ja üldsusele kättesaadavaks tegemiseks}

    Mina, \textbf{Alice Cooper}, %author's name
    \licencehint{10mm}{autori nimi}

    \begin{enumerate}
    \item
    annan Tartu Ülikoolile tasuta loa (lihtlitsentsi) minu loodud teose
    \par
    \textbf{Tüübituletus neljandat järku loogikavalemitele}, %title of thesis
        \licencehint{10mm}{lõputöö pealkiri}
    \par
    mille juhendaja(d) on Axel Rose ja May Flower, %supervisor's name(s)
    \licencehint{10mm}{juhendaja nimi}
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
    Alice Cooper\\ %author's name
    \textbf{\textsl{pp.kk.aaaa}}
}

\newcommand*{\licencename}{Licence}
\newcommand*{\licencetext}{}
\addto\captionsenglish{%
    \renewcommand{\licencename}{Licence}
    \renewcommand{\licencetext}{\licencetext@english}
}
\addto\captionsestonian{%
    \renewcommand{\licencename}{Litsents}
    \renewcommand{\licencetext}{\licencetext@estonian}
}
\newcommand*{\printlicence}{
    \section*{II. \licencename}

    \addcontentsline{toc}{subsection}{II. \licencename}
    \licencetext
}
