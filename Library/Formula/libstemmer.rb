require 'formula'

class Libstemmer < Formula
  homepage 'http://snowball.tartarus.org'
  head 'svn://svn.tartarus.org/snowball/trunk', :using => :svn

  def install
    cd "snowball" do
      system "make", "libstemmer.o"
      system "mv", "libstemmer.o", "libstemmer.a"
      lib.install "libstemmer.a"
      include.install "include/libstemmer.h"
    end
  end
end
