class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.1.3"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.1.3/snag-0.1.3-linux-x86_64.tar.gz"
      sha256 "bb3841b4a9d3fe6dd67cb04d8f3cd816ce5e433a6ee48c72f78e9c4e1a27c504"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.1.3/snag-0.1.3-linux-aarch64.tar.gz"
      sha256 "75f5603241b5e4ae69fa793dfa210288c623cb7e96e3ecf3f72945720db19321"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
