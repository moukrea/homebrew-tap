class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.7.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.7.0/jaunt-0.7.0-linux-x86_64.tar.gz"
      sha256 "3f2de98de67fee2baff88239cbd6cbc5deb59d6089a077a65bdea6ca1f61f881"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.7.0/jaunt-0.7.0-linux-aarch64.tar.gz"
      sha256 "b9e634410aeaa0ead935904ff810b49ed3e3b6245b1fc838b9f3740bcd841755"
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
