<div align=center>
  <h1>nekos.rb</h1>
</div>

![Gem Version](https://img.shields.io/gem/v/nekos.svg)
![Gem Downloads](https://img.shields.io/gem/dt/nekos.svg)
![Travis](https://img.shields.io/travis/Nekos-Life/nekos.rb/master.svg)
[![Inline docs](http://inch-ci.org/github/Nekos-Life/nekos.rb.svg?branch=master&style=shields)](http://inch-ci.org/github/Nekos-Life/nekos.rb)
[![Docs](https://img.shields.io/badge/view-docs-FACE00.svg)](https://www.rubydoc.info/github/Nekos-Life/nekos.rb/master)

A wrapper gem for the [nekos.life](https://nekos.life) API.

## Dependencies
* [rest-client](https://github.com/rest-client/rest-client)

## Installation:

    gem install nekos

## Example
```ruby
require 'nekos'
nekos = NekosLife::Client.new
nekos.avatar             # "https://cdn.nekos.life/avatar/avatar_54.png"
nekos.chat 'hello', true # "Gweetinygs >w< "
```

# Contributing

You should always run these two things in terminal *(and use common sense!)*:

    rubocop
    inch suggest

# License

The contents of this repository are licensed under the MIT license. A copy of the MIT license can be found in [LICENSE.md](LICENSE.md).
