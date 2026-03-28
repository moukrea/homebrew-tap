class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.8.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.8.0/jaunt-0.8.0-linux-x86_64.tar.gz"
      sha256 "e9d1fb068a336e74d6f7be361e3eef57ebe932b48c9359fc1d1a042e5d40e315"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.8.0/jaunt-0.8.0-linux-aarch64.tar.gz"
      sha256 "0d54d50de786ed0faf1785f8b2186aef7c22d9163f11ee7c3ba58b8a52692bca"
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
