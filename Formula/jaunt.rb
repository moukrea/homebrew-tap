class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.3.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.3.0/jaunt-0.3.0-linux-x86_64.tar.gz"
      sha256 "b4c51b12e85d42d80793dc1fc358f1530758edd50413e61018a7e6c5a7cf9229"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.3.0/jaunt-0.3.0-linux-aarch64.tar.gz"
      sha256 "0ad5456c230f29469943f8062975591b482077e26f68f90ee518c04faa11d1f7"
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
