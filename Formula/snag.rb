class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.1.4"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.1.4/snag-0.1.4-linux-x86_64.tar.gz"
      sha256 "dac00f0de3333dd4bbeffa2d55174b7ed13ec11c10382603efaecadcf635e702"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.1.4/snag-0.1.4-linux-aarch64.tar.gz"
      sha256 "479b409ac331b190c48df0583e13d59aba9a39f62432de9b55d3775ec78adf79"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
