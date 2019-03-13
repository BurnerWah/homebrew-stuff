class Wtfutil < Formula
  desc "The personal information dashboard for your terminal"
  homepage "https://wtfutil.com"
  version "0.5.0"
  url "https://github.com/wtfutil/wtf/releases/download/0.5.0/wtf_0.5.0_linux_amd64.tar.gz"
  sha256 "4403568e58d1faf1126a8d3199d0afed5fc182e561914db14c0a9b70dd94660a"

  bottle :unneeded

  def install
    bin.install "wtf"
  end

  test do
    system "#{bin}/wtf", "--help"
  end
end
