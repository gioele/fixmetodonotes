fixmetodonotes
==============

A LaTeX package to highlight and manage FIXME and TODO annotations.


Usage
-----

In the preamble add

    \usepackage{fixmetodonotes}

In the document write notes using

    I believe that in the \FIXME{"next year" or "future"?} the revolution
    will not be televised.

or

    \TODO{add a playful picture}

To show a list of pending notes, together with links to their pages, use

    \listofnote

The list of notes will be shown like a table of content or a list of figures.


Installation
------------

The released archives can be installed using the standard LaTeX mechanism.

    latex fixmetodonotes.ins

This will generate a `fixmetodonotes.sty` file that can be moved to a
directory searched by TeX.

You can also install `fixmetodonotes` in your home directory using the
git repository.

    export TEXMFHOME=~/.texmf
    mkdir -p ~/.texmf/tex/latex/
    cd ~/.texmf/tex/latex/
    git clone git://github.com/gioele/fixmetodonotes.git


Authors
-------

* Gioele Barabucci <http://svario.it/gioele> (initial author)


License
-------

This is free software released into the public domain (CC0 license).

See the `LICENSE` file or <http://creativecommons.org/publicdomain/zero/1.0/>
for more details.
