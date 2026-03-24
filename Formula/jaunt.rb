class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.4.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.4.0/jaunt-0.4.0-linux-x86_64.tar.gz"
      sha256 "e3b7386049c083914cf6429ca2a90411992136a0a42a9ceb916cec49500ed05d"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.4.0/jaunt-0.4.0-linux-aarch64.tar.gz"
      sha256 "20ce48eb097c73f356f23a082bd33c153d5f35c6ef8c253fe3cdaca29caa323c"
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
