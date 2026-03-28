class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.6.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.0/jaunt-0.6.0-linux-x86_64.tar.gz"
      sha256 "a037d5a98723600d7bc07af1b8140a363be6a49e875a85bad8d7937f24badad4"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.0/jaunt-0.6.0-linux-aarch64.tar.gz"
      sha256 "9b3eee820bd8db061b390cfc58a64a7b28069118d7aa443c4e47d27321545522"
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
