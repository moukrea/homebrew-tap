class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.9.2"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.9.2/jaunt-0.9.2-linux-x86_64.tar.gz"
      sha256 "9c44e4f4fd911c59d9cac1b60157227073d4279d900de69dcc7d46275e44ebd9"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.9.2/jaunt-0.9.2-linux-aarch64.tar.gz"
      sha256 "e34e84bc87f46be3d9ae573b9652df41f11fc830df9fdbf3d0b7229504e32585"
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
