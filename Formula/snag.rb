class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.5.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.5.0/snag-0.5.0-linux-x86_64.tar.gz"
      sha256 "a48434fa937a13e1db97f044585b643220254d15a1a723294719f58551f3d09c"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.5.0/snag-0.5.0-linux-aarch64.tar.gz"
      sha256 "dc38fb9826afc76f0414c274944698c71326e3bf845e808ce86e6dbf80c1c72c"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
