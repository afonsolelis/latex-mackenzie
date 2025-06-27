\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{patente}[2025/06/25 Classe para documentos de patente]

% Baseado na classe article
\LoadClass[12pt,a4paper]{article}

% Pacotes básicos necessários
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[top=3cm,bottom=2cm,left=3cm,right=2cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{indentfirst}

% Configurações de espaçamento
\setstretch{1.5}

% Configurações para melhorar quebras de linha
\sloppy
\hyphenpenalty=5000
\tolerance=1000

% Configuração de parágrafos
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{0.5em}

% Comando para o título da invenção
\newcommand{\tituloinvencao}[1]{%
  \begin{center}
    {\Large \textbf{TÍTULO DA INVENÇÃO:} #1}
  \end{center}
  \vspace{1.5cm}
}

% Comando para seções de patente
\newcommand{\secaopatente}[2]{%
  \vspace{1em}
  \section*{#1. #2}
  \vspace{0.5em}
}

% Comando para lista de figuras melhorada
\newcommand{\listafiguras}[1]{%
  \begin{itemize}
    \setlength{\itemsep}{0.3em}
    \setlength{\parsep}{0pt}
    \setlength{\parskip}{0pt}
    #1
  \end{itemize}
}

% Comando para item de figura
\newcommand{\itemfigura}[2]{%
  \item \textbf{Figura #1:} #2
}

% Ambiente para reivindicações melhorado
\newenvironment{reivindicacoes}
{%
  \begin{enumerate}
  \setlength{\itemsep}{1em}
  \setlength{\parsep}{0.5em}
}
{%
  \end{enumerate}
}

% Comando para inserir figura de patente com posicionamento melhorado
\newcommand{\figurapatente}[4]{%
  \vspace{1em}
  \begin{figure}[!htbp]
    \centering
    \includegraphics[width=#2\textwidth,height=0.6\textheight,keepaspectratio]{#1}
    \caption{#3}
    \label{#4}
  \end{figure}
  \vspace{0.5em}
}

% Comando alternativo para figuras que se ajustam automaticamente à página
\newcommand{\figurapatenteauto}[3]{%
  \vspace{1em}
  \begin{figure}[!htbp]
    \centering
    \includegraphics[width=0.8\textwidth,height=0.5\textheight,keepaspectratio]{#1}
    \caption{#2}
    \label{#3}
  \end{figure}
  \vspace{0.5em}
}

% Comando para figuras pequenas inline
\newcommand{\figurapequena}[4]{%
  \begin{figure}[!htbp]
    \centering
    \includegraphics[width=#2\textwidth,max width=\textwidth,max height=0.3\textheight]{#1}
    \caption{#3}
    \label{#4}
  \end{figure}
}

% Comando para incluir PlantUML com geração automática (requer -shell-escape)
\newcommand{\figuraplantuml}[4]{%
  \immediate\write18{plantuml -tpng -o assets #1.puml}%
  \figurapatente{assets/#1.png}{#2}{#3}{#4}%
}

% Comando alternativo com SVG
\IfFileExists{svg.sty}{%
  \RequirePackage{svg}
  \newcommand{\figuraplantumlsvg}[4]{%
    \immediate\write18{plantuml -tsvg -o assets #1.puml}%
    \begin{figure}[!htbp]
      \centering
      \includesvg[width=#2\textwidth]{assets/#1}
      \caption{#3}
      \label{#4}
    \end{figure}
  }
}{}

% Comando para gerar todas as figuras automaticamente
\newcommand{\gerartodasfiguras}{%
  \immediate\write18{make figuras-png}%
}

% Comando para problemas técnicos
\newcommand{\problemtecnico}[1]{%
  \textit{#1}
}

% Redefinir seções para melhor formatação
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries}}

\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries}}

\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
