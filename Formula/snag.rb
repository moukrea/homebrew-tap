class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.1.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.1.0/snag-0.1.0-linux-x86_64.tar.gz"
      sha256 "bc4f66b11dee3dc5d1fcc0afdf3366ed3c9032f2a81dc5c0d6c3c0022650ae55"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.1.0/snag-0.1.0-linux-aarch64.tar.gz"
      sha256 "c23d8fdd3197b7cf412de10d585f36bbd7d160fefdd3b72e39e5ffaa7edb75c1"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
