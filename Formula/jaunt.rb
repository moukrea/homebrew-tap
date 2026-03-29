class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.10.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.1/jaunt-0.10.1-linux-x86_64.tar.gz"
      sha256 "aff5e7c4e220b88553bf99e46f1099f1384ecaccf095acbf280befd3f0871287"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.1/jaunt-0.10.1-linux-aarch64.tar.gz"
      sha256 "ab0e55145e918d7d082a0ed12f7ce8268cdfa1151b905ae3eadfe3222ba1d59d"
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
