class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.2.2"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.2.2/snag-0.2.2-linux-x86_64.tar.gz"
      sha256 "4b6a7beee007cb95f9f2dea9291a6761bef3a623de30231e2243ac5ad80eb4d8"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.2.2/snag-0.2.2-linux-aarch64.tar.gz"
      sha256 "54c518183607436ee0ca3d57877fbba33feaee4a6b2a45bba318bed7dfbd495a"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
