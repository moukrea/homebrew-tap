class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.2.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.2.0/snag-0.2.0-linux-x86_64.tar.gz"
      sha256 "0f820113c52f6e001bd3d1f4a6d73ba05c24e1d71f8be45b4dc5e213d3ee2188"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.2.0/snag-0.2.0-linux-aarch64.tar.gz"
      sha256 "cb0e15533ca65d5fcf8379d4d3fc2f8a2881a6ede0ccc6c0f386ace6a8c6b836"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
