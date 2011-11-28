require 'formula'

class Vim <Formula
  url 'ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2'
  homepage 'http://www.vim.org'
  md5 '5b9510a17074e2b37d8bb38ae09edbf2'

  def install
    system "./configure", #"--disable-debug", "--disable-dependency-tracking",
                          "--enable-wide-chars", "--enable-multibyte",
                          "--enable-pythoninterp", 
                          "--with-python-config-dir=/usr/local/Cellar/python/2.7.2/Frameworks/Python.framework/Versions/2.7/lib/python2.7/config/",
                          #"--with-macsdk='10.6'", "--with-features=huge",
                          "--with-compiledby='syhw <[gabriel.synnaeve@gmail.com]>'",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
