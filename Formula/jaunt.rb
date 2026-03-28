class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.6.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.1/jaunt-0.6.1-linux-x86_64.tar.gz"
      sha256 "c21c32b716206b1a05d9eb044bcf4cb70675378900bd7f8f4442b885f8705e59"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.1/jaunt-0.6.1-linux-aarch64.tar.gz"
      sha256 "c767c6359cf78a8073f7a1893fe6c64d824f4511b45082b1131086a090d0d5b9"
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
