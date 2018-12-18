#!/usr/bin/env ruby
# cat ~/dotfiles/brew/brew-cask-leaves.txt | xargs brew cask install
# Install
`/usr/bin/ruby -e "" $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)`
['list', 'cask-list'].each{ |subbedCommand|
  p "doing #{subbedCommand}"
  begin
    # `cat ~/dotfiles/brew/brew-#{subbedCommand}.txt | xargs brew install 2>/dev/null`
    `cat ~/dotfiles/brew/brew-#{subbedCommand}.txt | xargs brew install`
  rescue
    p "whoops"
  end
}

# Link Cask apps to their binary
## Hyper self-links when you first call its binary!
`/Applications/Hyper.app/Contents/Resources/bin/hyper`
