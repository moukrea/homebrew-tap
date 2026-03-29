class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.2.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.2.0/snag-0.2.0-linux-x86_64.tar.gz"
      sha256 "5ab36b2466e0f0deed88cefe0363c84746a808706b105fb4c870f105c301cec5"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.2.0/snag-0.2.0-linux-aarch64.tar.gz"
      sha256 "d2a291a800d7ec8487455cd9c5c2715b419dfc8e3685c5b8b3d39acf5a7f7866"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
