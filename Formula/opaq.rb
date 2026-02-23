class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.6/opaq-0.1.6-macos-x86_64.tar.gz"
      sha256 "217c2e2554e9c1bb94484e61d146804beb4cb84bb4007a257dfc2470ad6fd14b"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.6/opaq-0.1.6-macos-aarch64.tar.gz"
      sha256 "ab1bb152476f6985d25da11132cbede9b178156d26951682b7b0b9a41e5fecb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.6/opaq-0.1.6-linux-x86_64.tar.gz"
      sha256 "e87a93ec3f29a37e1bb11ede8852e05cac5796e1a867a0b1b9f41e2a8ae7bcae"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.6/opaq-0.1.6-linux-aarch64.tar.gz"
      sha256 "16d119f634f5060b885758ef46831004077260382999cc6ae9f4d71bd198f318"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
