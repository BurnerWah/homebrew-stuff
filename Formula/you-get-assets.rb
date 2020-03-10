class YouGetAssets < Formula
  desc "Completion for you-get"
  homepage "https://you-get.org/"
  version "0.4.1410"
  url "https://github.com/soimort/you-get/archive/v#{version}.tar.gz"
  sha256 "59aa94a045518b39ae24ad5d24fd7bc9d01246aa87d20178eb9f38e49214c03f"
  head "https://github.com/soimort/you-get.git"

  bottle :unneeded

  def install
    bash_completion.install "contrib/completion/you-get-completion.bash"
    zsh_completion.install "contrib/completion/_you-get"
    fish_completion.install "contrib/completion/you-get.fish"
  end
end
