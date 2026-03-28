class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.9.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.9.0/jaunt-0.9.0-linux-x86_64.tar.gz"
      sha256 "6bbcccd7d5e5b6d66aec7a85357a5b3c16491a727869ae26355fd1278173f52d"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.9.0/jaunt-0.9.0-linux-aarch64.tar.gz"
      sha256 "9b75d9fccf1464f70dc61fa1a41139e7eadb00a0d849346215e955938b6d06ba"
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
