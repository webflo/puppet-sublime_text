# Install Sublime Text into /Applications
#
# Usage:
#
#     include sublime_text
class sublime_text {
  package { 'SublimeText':
    provider => 'appdmg',
    source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203033.dmg';
  }

  file { "${boxen::config::bindir}/subl":
    ensure  => link,
    target  => '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
    mode    => '0755',
    require => Package['SublimeText'],
  }
}
