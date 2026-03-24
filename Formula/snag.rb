class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.1.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.1.0/snag-0.1.0-linux-x86_64.tar.gz"
      sha256 "e39aeebcb71877063ee51c324f81c06906efa243b881726d63848e3c38415263"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.1.0/snag-0.1.0-linux-aarch64.tar.gz"
      sha256 "2f015390a0f07b47553a2dbb9a97f0e20bf62f55fc4df09a400d5b398f5fd4b6"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
