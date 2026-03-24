class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.3.3"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.3.3/jaunt-0.3.3-linux-x86_64.tar.gz"
      sha256 "1996e21bfb3032ed82b4929d7177c152871688c36154d7cc029ba510d79f2796"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.3.3/jaunt-0.3.3-linux-aarch64.tar.gz"
      sha256 "22253584deab771c97d6e4e34a1a7305fbb285368d13cfbe3cd1d7e4dc07c686"
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
