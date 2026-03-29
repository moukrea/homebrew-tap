class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.11.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.11.1/jaunt-0.11.1-linux-x86_64.tar.gz"
      sha256 "aed02bba7f95262287f12c7be64dc6ae95d4707177086fd199ef6f1a70a02795"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.11.1/jaunt-0.11.1-linux-aarch64.tar.gz"
      sha256 "1ace86a7c88f774b013296943a823990d9c76f4c8b783c630f7e1c2f762b05b6"
    end
  end

  def install
    bin.install "jaunt-host"
    bin.install "jaunt-client"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jaunt-host --version")
  end
end
