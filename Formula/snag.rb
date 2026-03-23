class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.6.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.6.0/snag-0.6.0-linux-x86_64.tar.gz"
      sha256 "da1e4e51c516ead33c09bc67059494f119b5a92ed47166f76169e5cc5248b36d"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.6.0/snag-0.6.0-linux-aarch64.tar.gz"
      sha256 "54c8461e74310c557b48977150f42b8d9979e794d5ec76425d6c857e17fc3f01"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
