class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.2.3"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.2.3/snag-0.2.3-linux-x86_64.tar.gz"
      sha256 "abea7bf8606cc0008cb1743251140d268ef3d2e9e5e068b8adf658b10289df8b"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.2.3/snag-0.2.3-linux-aarch64.tar.gz"
      sha256 "64caf001cb2035f3be1ec93bd479c9c7d8749c5fa8bb5a4e7bde3aa4de876784"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
