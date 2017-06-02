class Base16Shell < Formula
  desc "Base16 for Shells"
  homepage "https://github.com/chriskempson/base16-shell"
  head "https://github.com/chriskempson/base16-shell.git"

  def install
    mkdir "base16-shell"
    mv "scripts", "base16-shell/scripts"
    share.install "base16-shell"
  end
end
