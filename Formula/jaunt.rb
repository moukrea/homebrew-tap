class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.3.2"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.3.2/jaunt-0.3.2-linux-x86_64.tar.gz"
      sha256 "ca2ca894f4411c65ac0453fea2263a3a367acf30f7bdb9fcc2bad17092d5c05a"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.3.2/jaunt-0.3.2-linux-aarch64.tar.gz"
      sha256 "6c643ace34eaf47ceca41d3f1c4a003213c2158fb96c3506507e6ac69ac4cad9"
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
