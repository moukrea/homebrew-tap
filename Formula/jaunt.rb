class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.1.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.1.0/jaunt-0.1.0-linux-x86_64.tar.gz"
      sha256 "996c380a2c77abd64169218bcb581af30d664d092b6622349e9036aff7dcde1c"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.1.0/jaunt-0.1.0-linux-aarch64.tar.gz"
      sha256 "d25347af3b76006a7fdf0e160eee7c8a504d4efa7a7aa9ddbd77aee96836d303"
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
