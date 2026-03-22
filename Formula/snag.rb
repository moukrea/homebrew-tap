class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.1.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.1.1/snag-0.1.1-linux-x86_64.tar.gz"
      sha256 "1a133e6044beec752572c6e495b99f3494bcf5202f1d47564431ff6a7303851d"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.1.1/snag-0.1.1-linux-aarch64.tar.gz"
      sha256 "eac86558ffa532a7350270d8d6c6763674a122a317707c73e4addf3eabdd59a5"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
