#!/usr/bin/env ruby
# Install
`/usr/bin/ruby -e "" $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)`
['list', 'cask list'].each{ |brewCommand|
  p "doing #{brewCommand}"
  subbedCommand = brewCommand.sub(' ', '-')
  firstSubbedCommand = ''

  if brewCommand.include? ' '
    firstSubbedCommand = brewCommand.split(' ')[0]
  end

  begin
    `cat ~/dotfiles/brew/brew-#{subbedCommand}.txt | xargs brew #{firstSubbedCommand} install`
  rescue
    p "whoops"
  end
}

# Link Cask apps to their binary
## Hyper self-links when you first call its binary!
`/Applications/Hyper.app/Contents/Resources/bin/hyper help`
