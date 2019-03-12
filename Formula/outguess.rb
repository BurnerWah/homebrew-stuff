class Outguess < Formula
    version "0.2"
    desc "Stenography tool"
    homepage "https://web.archive.org/web/20150419030527/http://www.outguess.org/"
    url "https://web.archive.org/web/20120118095110/http://www.outguess.org/outguess-0.2.tar.gz"
    sha256 "2f951ed7b9b9373fae8fe95616d49c83ae246cf53a2b60a82814228515bfa7d6"

    def install
        system "./configure", "--prefix=#{prefix}", "--mandir=#{prefix}/share/man"
        system "mkdir", "--parents", "#{prefix}/bin", "#{prefix}/share/man/man1"
        system "make", "install"
        system "gzip", "#{prefix}/share/man/man1/outguess.1"
    end
end
