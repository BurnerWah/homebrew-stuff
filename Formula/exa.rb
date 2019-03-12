class Exa < Formula
    version "0.8.0"
    desc "Modern replacement for 'ls'"
    homepage "https://the.exa.website"
    url "https://github.com/ogham/exa/releases/download/v#{version}/exa-linux-x86_64-#{version}.zip"
    sha256 "7d49e8b9c176bf5f967ff08d82d6f7e879ef42f018cd824811e68ecbc46f06d5"
    head "https://github.com/ogham/exa.git"

    def install
        bin.install "exa"
    end

    test do
        system bin/"exa", "--help"
    end
end
