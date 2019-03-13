class Tmsu < Formula
  desc "TMSU lets you tags your files and then access them through a nifty virtual filesystem from any other application."
  homepage "https://tmsu.org"
  version "0.7.4"
  url "https://github.com/oniony/TMSU/archive/v0.7.4.tar.gz"
  sha256 "04e8a4c47532a4d8f673c3b3a921a47815c752b2ca1b564f6e1ed58a1b88a177"

  def install
    ENV["GOPATH"] = buildpath
    system "go", "get", "-u", "golang.org/x/crypto/blake2b"
    system "go", "get", "-u", "github.com/mattn/go-sqlite3"
    system "go", "get", "-u", "github.com/hanwen/go-fuse/fuse"
    system "make", "clean"
    system "make", "compile"
    system "make", "dist"
    system "make", "test"
    system "make", "install", "--environment-overrides", 
                              "DESTDIR=#{prefix}",
                              "INSTALL_DIR=#{bin}",
                              "MOUNT_INSTALL_DIR=#{sbin}",
                              "MAN_INSTALL_DIR=#{man1}",
                              "ZSH_COMP_INSTALL_DIR=#{share}/zsh/site-functions"
  end

  test do
    system "make", "test"
  end
end
