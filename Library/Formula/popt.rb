require 'formula'

class Popt < Formula
  url 'ftp://anduin.linuxfromscratch.org/BLFS/svn/p/popt-1.16.tar.gz'
  homepage 'http://rpm5.org'
  sha1 'cfe94a15a2404db85858a81ff8de27c8ff3e235e'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
