class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.1.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.1.0/snag-0.1.0-linux-x86_64.tar.gz"
      sha256 "5446a7118ae2938a3e720f0c4eb02673937b0eeddb26dff7f4e9b9ae84551990"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.1.0/snag-0.1.0-linux-aarch64.tar.gz"
      sha256 "ee4d84be42552f7b568b2b80b277145d3b89fb1b82b9cd0d0acccaebc4a2483c"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
