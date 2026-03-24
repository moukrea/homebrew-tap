class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.1.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.1.1/snag-0.1.1-linux-x86_64.tar.gz"
      sha256 "ac128279d009435bc2a05a59ca7e22eb5733c660959c94e7e07076c40191daac"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.1.1/snag-0.1.1-linux-aarch64.tar.gz"
      sha256 "d41d3a7d0b963495c0af82cd869cd008a0250d7a554586e56aa818ecc47fa32e"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
