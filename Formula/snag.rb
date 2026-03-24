class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.1.2"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.1.2/snag-0.1.2-linux-x86_64.tar.gz"
      sha256 "1ce5a05835e9b826ccbcdddcbdf4b4127c26f527b966c092ddab96b2c4e0c354"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.1.2/snag-0.1.2-linux-aarch64.tar.gz"
      sha256 "11734c85d708e0a2aa88c012d208f14dac29656ab9cac196cce5541de5a283b1"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
