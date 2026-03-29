class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.11.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.11.0/jaunt-0.11.0-linux-x86_64.tar.gz"
      sha256 "a4424e2266a58e018eb0e47a61ea9482b1e34ae0639e90ac5b2a6ea54b18a0ef"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.11.0/jaunt-0.11.0-linux-aarch64.tar.gz"
      sha256 "f309dbb2312fbe9a0376a6271649c7784497ff31ac332d427549f1e38097c620"
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
