class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.6.6"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.6/jaunt-0.6.6-linux-x86_64.tar.gz"
      sha256 "ff72fd719d12d721f33a7785ccb308fe8d3f441ea03dd1ce5a2ad330935ba6bd"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.6/jaunt-0.6.6-linux-aarch64.tar.gz"
      sha256 "fba9cdfe8f5968feddbe359c8a145ec4816b204babfa98abdeba5fd8850b5d14"
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
