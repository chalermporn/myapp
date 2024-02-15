class Myapp < Formula
    desc "My App Description"
    homepage "https://github.com/chalermporn/myapp"
    url "https://example.com/myapp-1.0.tar.gz"
    sha256 "your_sha256_checksum_here"
  
    def install
      bin.install "myapp.sh"
    end
  
    test do
      system "#{bin}/myapp", "--version"
    end
  end
  