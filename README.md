<!-- MARKDOWN LINKS & IMAGES -->
<!-- Shields -->
[forks-shield]: https://img.shields.io/github/forks/julianrubisch/attractor-rails.svg?style=flat-square
[forks-url]: https://github.com/julianrubisch/attractor-rails/network/members
[stars-shield]: https://img.shields.io/github/stars/julianrubisch/attractor-rails.svg?style=flat-square
[stars-url]: https://github.com/julianrubisch/attractor-rails/stargazers
[issues-shield]: https://img.shields.io/github/issues/julianrubisch/attractor-rails.svg?style=flat-square
[issues-url]: https://github.com/julianrubisch/attractor-rails/issues
[license-shield]: https://img.shields.io/github/license/julianrubisch/attractor-rails.svg?style=flat-square
[license-url]: https://github.com/julianrubisch/attractor-rails/blob/master/LICENSE
[build-status]: https://travis-ci.org/julianrubisch/attractor-rails.svg?branch=master
[twitter-shield]: https://img.shields.io/twitter/follow/AttractorGem?style=social

<!-- Media -->
[logo-source]: https://thenounproject.com/term/black-hole/1043893

[repo]: https://github.com/julianrubisch/attractor-rails

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/julianrubisch/attractor-rails">
    <img src="https://user-images.githubusercontent.com/4352208/65411858-3dc84200-ddee-11e9-99b6-c9cdbeb533c5.png" alt="Logo" width="80" height="80">
  </a>
  <h2 align="center">Attractor Rails Engine</h2>
  <p align="center">A code complexity metrics visualization and exploration tool for Ruby and JavaScript</p>
  <p align="center">baked into a mountable Rails Engine</p>  

---

<!-- PROJECT SHIELDS -->
![Build Status][build-status]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
  <a href="https://www.patreon.com/user?u=24747270"><img src="https://c5.patreon.com/external/logo/become_a_patron_button@2x.png" alt="Become a Patron!" width="160" /></a>
</div>

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Introduction](#introduction)
- [Installation](#installation)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [Logo Attribution](#logo-attribution)
- [Contributors ✨](#contributors-%e2%9c%a8)

## Installation

Add the gem to your Gemfile:

```ruby
group :development do
  gem 'attractor-rails'
end
```

And then execute:

```sh
bundle install
```

This will install `attractor`, along with two plugins (`attractor-ruby`, `attractor-javascript`) for you.

Mount the engine in your `routes.rb`:

```ruby
Rails.application.routes.draw do
  mount Attractor::Rails::Engine, at: "/attractor" if Rails.env.development?
# ...
end
```

And that's it! Browse to http://localhost:3000/attractor/ and enjoy your code metrics!

**NOTE: due to the forwarding of requests to the attractor gem in the background, the `/` at the end is important! Don't leave it out.**

## Configuration

`attractor-rails` ships with sensible defaults, but you can override the following configuration options in an initializer, if you like:

```ruby
# config/initializers/attractor.rb
Attractor::Rails.minimum_churn_count = 1     # default: 3
Attractor::Rails.file_prefix = "app"         # default: ""
Attractor::Rails.start_ago = "3m"            # default: "5y"
```

## Contributing

Bug reports and pull requests are welcome on [GitHub][repo].

## Logo Attribution

[Black Hole by Eynav Raphael from the Noun Project][logo-source]

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="http://www.julianrubisch.at"><img src="https://avatars0.githubusercontent.com/u/4352208?v=4" width="100px;" alt=""/><br /><sub><b>Julian Rubisch</b></sub></a><br /><a href="https://github.com/julianrubisch/attractor/commits?author=julianrubisch" title="Code">💻</a> <a href="https://github.com/julianrubisch/attractor/commits?author=julianrubisch" title="Documentation">📖</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
