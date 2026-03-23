class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.3.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.3.0/snag-0.3.0-linux-x86_64.tar.gz"
      sha256 "6ee8669551cff54432ba0ff17e44318caaa552861df8b18bab657a19efba027d"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.3.0/snag-0.3.0-linux-aarch64.tar.gz"
      sha256 "bbf37f43470c5f15866b2dea77605f3e04b10f3f8a4d5467085a523b7b5dea64"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
