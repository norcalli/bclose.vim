# bclose.vim

Defines a command `:Bclose` which closes the current buffer without closing the window or disrupting window layout.

What `:Bclose` does:
- Closes the current buffer and moves to the next buffer (i.e. `:bnext`).
- If this is the only buffer left, it switches to an empty buffer.
- If there are changes, it won't close unless you add a bang (i.e. `:Bclose!`)

## Installation

```
Plug 'norcalli/bclose.vim', {'on': 'Bclose'}

Bundle 'norcalli/bclose.vim'
```

## Usage

```
:Bclose[!]
```
