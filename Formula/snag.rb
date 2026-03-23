class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.4.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.4.0/snag-0.4.0-linux-x86_64.tar.gz"
      sha256 "6ce582fffa3980002b1db21320e0f7a17a6fe2f6250f5f9f7736a6f77a45088a"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.4.0/snag-0.4.0-linux-aarch64.tar.gz"
      sha256 "be6508573a1f1889070ea5c4958ec686f393cad0ab1b4bac555c82c034e48316"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
