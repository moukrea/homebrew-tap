class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.5.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.5.0/jaunt-0.5.0-linux-x86_64.tar.gz"
      sha256 "e7c776cedef290856f24db972da53f4871ef4912bfe3e8b7e9d67b019e0e241f"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.5.0/jaunt-0.5.0-linux-aarch64.tar.gz"
      sha256 "7315ff5286edef383336ed4a9fc90ac6a3b4207189da28411785ce6a805f7f36"
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
