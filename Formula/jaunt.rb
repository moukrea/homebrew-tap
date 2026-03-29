class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.12.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.12.0/jaunt-0.12.0-linux-x86_64.tar.gz"
      sha256 "493cde197f866a20159c87ad7e6969b274beb1290b1c5f5c31540a968aa62c10"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.12.0/jaunt-0.12.0-linux-aarch64.tar.gz"
      sha256 "55289484cc864449900406ce790a154ec5df4e433c070c7671fa10a2923c0ade"
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
