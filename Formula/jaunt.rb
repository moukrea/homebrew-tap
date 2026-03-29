class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.11.2"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.11.2/jaunt-0.11.2-linux-x86_64.tar.gz"
      sha256 "81b5279f83cbdc3efe51190964ccf5dbd2676f8e3bb3d47a787dc35667bcb1d0"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.11.2/jaunt-0.11.2-linux-aarch64.tar.gz"
      sha256 "6f70ec31c5693c5a73274475c2f073e4edcd6fb68ad96772b3aebe93900fbc31"
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
