class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.2.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.2.0/jaunt-0.2.0-linux-x86_64.tar.gz"
      sha256 "cddacfd7213b2b7803c6e25e7f7ab7349fa57aa6b59c3310695433e81440e5be"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.2.0/jaunt-0.2.0-linux-aarch64.tar.gz"
      sha256 "ad5ae0b23d623d3120b8f69e2045cef91bfd03f2962bd6642b52a2dce7a2c298"
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
