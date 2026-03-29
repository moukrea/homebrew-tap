class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.10.2"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.2/jaunt-0.10.2-linux-x86_64.tar.gz"
      sha256 "836b48290ec7c78ddf501b4272d8146b2c80707d63671e98827d35c3bc64f76e"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.2/jaunt-0.10.2-linux-aarch64.tar.gz"
      sha256 "002046695be211352fd543ada39ff68e6a399f126279d23e633885a55d2a37ff"
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
