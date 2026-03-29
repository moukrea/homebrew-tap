class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.10.3"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.3/jaunt-0.10.3-linux-x86_64.tar.gz"
      sha256 "499075b06c1d507ed50e105a94fd742f12cdc38dd39e5e740f1f683e4bf165be"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.3/jaunt-0.10.3-linux-aarch64.tar.gz"
      sha256 "16558cc4d0898b1582bcf223e9165586b1b9920ba780e2317022c09b4e8f7295"
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
