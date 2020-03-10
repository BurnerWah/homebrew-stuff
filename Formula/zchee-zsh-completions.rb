class ZcheeZshCompletions < Formula
  desc "More additional completions for zsh"
  homepage "https://github.com/zchee/zsh-completions"
  head "https://github.com/zchee/zsh-completions.git"

  def install
    # Resolve conflicts with other packages
    system "rm", "src/go/_go"         # zsh
    system "rm", "src/zsh/_cmake"     # zsh-completions
    system "rm", "src/zsh/_configure" # zsh
    system "rm", "src/zsh/_curl"      # zsh, curl
    system "rm", "src/zsh/_man"       # zsh
    system "rm", "src/zsh/_ninja"     # ninja

    # Install completions
    zsh_completion.install Dir["src/go/_*"]
    zsh_completion.install Dir["src/zsh/_*"]
  end
end
