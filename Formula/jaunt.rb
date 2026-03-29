class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.10.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.0/jaunt-0.10.0-linux-x86_64.tar.gz"
      sha256 "66a9b384b858bd4ef32871b08854395da1b2474b6a1b3b63c6a21d2e937634c4"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.0/jaunt-0.10.0-linux-aarch64.tar.gz"
      sha256 "54aa262a50a14fe37a2fde16860537ba71924a65bf0270aa549232946f3ace4a"
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
