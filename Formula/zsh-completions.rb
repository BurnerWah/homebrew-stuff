class ZshCompletions < Formula
  desc "Additional completion definitions for zsh"
  homepage "https://github.com/zsh-users/zsh-completions"
  version "0.31.0"
  url "https://github.com/zsh-users/zsh-completions/archive/#{version}.tar.gz"
  sha256 "6c1cccf6fd8c7d875145e357e3a46680b74013b6fc7b98724801126c072fc024"
  head "https://github.com/zsh-users/zsh-completions.git"

  bottle :unneeded

  def install
    zsh_completion.install Dir["src/_*"]
  end
end
