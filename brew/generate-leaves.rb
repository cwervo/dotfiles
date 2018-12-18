#!/usr/bin/env ruby

['list', 'cask list'].each do |brewCommand|
  brewLeavesList = `brew #{brewCommand}`
  subbedCommand = brewCommand.sub(' ', '-')
  File.open('brew-' + subbedCommand + '.txt', 'w') { |file|
    brewLeavesList.split(/\n/).each do |leaf|
      file.write(leaf + "\n")
    end
  }
end
