class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.6.3"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.3/jaunt-0.6.3-linux-x86_64.tar.gz"
      sha256 "aebdc46a925ed26ab09900b0030d5af6ee34cd98f49e6f04e3156dad44889c70"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.3/jaunt-0.6.3-linux-aarch64.tar.gz"
      sha256 "78024303cb0da4a40951a3395b1125b575b7a68a5eb5ec262b7bb7501d802e66"
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
