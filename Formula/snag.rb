class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.7.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.7.0/snag-0.7.0-linux-x86_64.tar.gz"
      sha256 "787d83690f90d2e2ee7d53fe6062529ec1308407e8bd762bfd1a0e3e11d77a74"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.7.0/snag-0.7.0-linux-aarch64.tar.gz"
      sha256 "3cf58f2d90715e330d1883e22aa97a1e88cc7bdb3fb56b66947606614533fd72"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
