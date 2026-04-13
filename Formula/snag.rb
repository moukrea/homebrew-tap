class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.2.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.2.1/snag-0.2.1-linux-x86_64.tar.gz"
      sha256 "eea1bf2d0956aaa315f46e7e7f315db6f2f74c0d482b618c8826b4774af63b1f"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.2.1/snag-0.2.1-linux-aarch64.tar.gz"
      sha256 "ee3524f60310051f0bad8b76fe9d328f56ef9ee798c5a70c47602192f572c8a4"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
