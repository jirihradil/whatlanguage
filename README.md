# whatlanguage with czech language support

by Jiri Hradil (jiri@hradil.cz)

This is a fork of https://github.com/peterc/whatlanguage

Original gems works with Dutch, English, Farsi, French, German, Italian, Pinyin, Swedish, Portuguese, Russian, Arabic, Finnish, Greek, Hebrew, Hungarian, Korean, Norwegian, Polish and Spanish out of the box.

This gem adds the Czech language. Nothing else was added nor updated.

The czech word list was extracted from Milan Svoboda's GNU/FDL English to Czech dictionary available at http://slovnik.zcu.cz. Thanks Milan.

## Synopsis

Full Example

```ruby
require 'whatlanguage'

"Ahoj, jak se máš".language
 => :czech 
 
2.1.2 :004 > "Splatnost faktury".language
 => :czech 

2.1.2 :005 > "Splatnost faktury je 15 dnů".language
 => :czech 

2.1.2 :007 > "Dodací adresa".language
 => :czech 

2.1.2 :010 > "Faktura".language
 => :czech
```

Initialize WhatLanguage with all filters

```ruby
wl = WhatLanguage.new(:all)
```

Return language with best score

```ruby
wl.language(text)
```

Return hash with scores for all relevant languages

```ruby
wl.process_text(text)
```

Convenience methods on String

```ruby
"This is a test".language   # => :english
"This is a test".language_iso   # => :en
```

Initialize WhatLanguage with certain languages

```ruby
wl = WhatLanguage.new(:english, :german, :french)
```

## Requirements

None, minor libraries (BloominSimple and BitField) included with this release.

## Installation

    gem install whatlanguage

To test, go into irb, then:

```ruby
require 'whatlanguage'
"Je suis un homme".language
```

## Credits

Contributions from Konrad Reiche and Salimane Adjao Moustapha appreciated.

## License

MIT License

Copyright (c) 2007-2013 Peter Cooper

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
