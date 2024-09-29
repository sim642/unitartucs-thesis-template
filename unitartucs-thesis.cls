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
