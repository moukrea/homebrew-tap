class Snag < Formula
  desc "Local PTY session multiplexer — spawn, discover, attach to, and interact with any shell session"
  homepage "https://github.com/moukrea/snag"
  version "0.1.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/snag/releases/download/0.1.0/snag-0.1.0-linux-x86_64.tar.gz"
      sha256 "c69105cbc4ca1fd993f0fae58680a790aafa44051a69e3afb8a904326a362e1d"
    end
    on_arm do
      url "https://github.com/moukrea/snag/releases/download/0.1.0/snag-0.1.0-linux-aarch64.tar.gz"
      sha256 "8bee3ae90d33ee8462fb97099d9a23745a8678851603b3953cae9ec7a283e816"
    end
  end

  def install
    bin.install "snag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snag --version")
  end
end
