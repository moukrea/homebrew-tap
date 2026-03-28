class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.6.2"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.2/jaunt-0.6.2-linux-x86_64.tar.gz"
      sha256 "16cfe50d6bd8af6a46c9edc24e19abdbe2a4741ca3e9037d8f22b44dc91490b6"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.2/jaunt-0.6.2-linux-aarch64.tar.gz"
      sha256 "26c61e75db72e1b8e178a8b336ea567732619aec04850f3ca9df68e47dd9788d"
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
