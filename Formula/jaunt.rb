class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.3.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.3.1/jaunt-0.3.1-linux-x86_64.tar.gz"
      sha256 "743e061e1cc32dc739e71754cd4dde3c9a0f73e9963621b7a12e7dad5ed1b947"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.3.1/jaunt-0.3.1-linux-aarch64.tar.gz"
      sha256 "4673c3318b5e93ebedaa9a6449cc4d9d83d494d1aac2fd85879b129f62a4e67b"
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
