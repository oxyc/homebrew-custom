cask 'kitty' do
  version '0.2.3'
  sha256 :no_check

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  name 'Kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'Kitty.app'
end
