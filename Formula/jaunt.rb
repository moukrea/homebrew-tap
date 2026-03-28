class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.6.4"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.4/jaunt-0.6.4-linux-x86_64.tar.gz"
      sha256 "bd443b46f1f8fd0898de9cc6ba10032174ebc2f0a3e589ea7169ad788431471e"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.4/jaunt-0.6.4-linux-aarch64.tar.gz"
      sha256 "fcf6fdf38d7c4197c5cdb2e52e83b82c5e3b8c0c1f1685df9457acf64fa9e052"
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
