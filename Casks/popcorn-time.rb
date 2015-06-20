cask :v1 => 'popcorn-time' do
  version '0.3.7-2'
  sha256 '8fb9c3be5ec5600084745885f0f6b2f948fa1828983fe8cb7186f7144447bb8f'
  url "https://104.131.187.115/build/Popcorn-Time-#{version.gsub('-', '.')}-Mac.dmg", :user_agent => :fake
  appcast 'https://popcorntime.io/update.json',
    :sha256 => 'a9bd0f4938c7bd1a8a3e42efa32eafa9a97f2b9100283b7a15a4fc5c6213cbc7',
    :format => :unknown
  name 'Popcorn Time'
  homepage 'http://popcorntime.io/'
  license :gpl

  app 'Popcorn-Time.app'

  uninstall :quit => ['com.intel.nw', 'com.intel.nw.helper'],
    :delete => '/$TMPDIR$/Popcorn-Time'
  zap :delete => '~/Library/Application Support/Popcorn-Time'
end
