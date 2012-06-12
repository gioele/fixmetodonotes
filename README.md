fixmetodonotes
==============

A LaTeX package to highlight and manage FIXME and TODO annotations.


Installation
------------

    export TEXMFHOME=~/.texmf
    mkdir -p ~/.texmf/tex/latex/
    cd ~/.texmf/tex/latex/
    git clone git://github.com/gioele/fixmetodonotes.git


Usage
-----

In the preamble add

    \usepackage{fixmetodonotes}

In the document write notes using

    I believe that in the \FIXME{"next year" or "the future"?} the revolution
    will not be televised.

or

    \TODO{add a playful picture}

To show a list of pending notes, together with links to their pages, use

    \listofnote

The list of notes will be shown like a table of content or a list of figures.


Authors
-------

* Gioele Barabucci <http://svario.it/gioele> (initial author)


License
-------

This is free and unencumbered software released into the public domain.
See the `UNLICENSE` file or <http://unlicense.org/> for more details.
