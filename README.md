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

    \listofnotes

The list of notes will be shown like a table of content or a list of figures.


### Creating new kinds of notes

By default, `fixmetodonotes` provides three kinds of notes: `FIXME`, `TODO` and
`CITE`.

It is possible to add declare new kinds of notes using the `\defnote`
command. Notes can be declared as _margin_ or _inline_ notes. It is also
possible to specify new ways to mark the text.

To define a new kind of note called `REMOVE` that displays a margin note
and crosses out the text, use

    \defnote{REMOVE}{margin}{\sout}

Similarly, to define a red highlight marker `STYLE` use

    \defnote{STYLE}{inline}{\NOTES@colorline{red}}


### Automatic "DRAFT" watermark

`fixmetodonotes` will add a "DRAFT" watermark to any page that has at least
one notes.

When all the notes are removed from a page, the watermark will not be produced
at all. This means that it is possible to leave `fixmetodonotes` enabled even
in final versions of the documents.

Use the `nowatermark` option to disable all watermarks.


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


Contact
-------

The homepage of `fixmetodonotes` is <https://github.com/gioele/fixmetodonotes>.
You can send any issue or comment to <https://github.com/gioele/fixmetodonotes/issues>.


Authors
-------

* Gioele Barabucci <http://svario.it/gioele> (initial author)


License
-------

This is free software released into the public domain (CC0 license).

See the `LICENSE` file or <http://creativecommons.org/publicdomain/zero/1.0/>
for more details.
