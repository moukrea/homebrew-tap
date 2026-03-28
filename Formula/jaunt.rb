class Jaunt < Formula
  desc "Access your machine's shell sessions from any device, anywhere, with zero infrastructure"
  homepage "https://github.com/moukrea/jaunt"
  version "0.6.5"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.5/jaunt-0.6.5-linux-x86_64.tar.gz"
      sha256 "e2ae8e40fc3f6542d1f1784256c8d995f706d222a0ca7fd295e6ec67e97bf34e"
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.6.5/jaunt-0.6.5-linux-aarch64.tar.gz"
      sha256 "1e3e48a1b48dfcfc7aac74720d4c1fb4a187323a5268b1024409743ec32e94bf"
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
