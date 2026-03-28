class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.9.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.9.1/jaunt-0.9.1-linux-x86_64.tar.gz"
      sha256 "e49055fcd9219da239eb838e869b14abf6566780260eb46e79055e00aee3e6d0"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.9.1/jaunt-0.9.1-linux-aarch64.tar.gz"
      sha256 "c54552097fda37ab9c42a2e45329743ea88f1714b95a753c876ef499b60b3da0"
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
