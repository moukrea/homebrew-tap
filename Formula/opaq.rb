class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.7/opaq-0.1.7-macos-x86_64.tar.gz"
      sha256 "0b467aa2dc1231413d9a81466b806cac665a9fe43e38ee806218055e15b384cd"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.7/opaq-0.1.7-macos-aarch64.tar.gz"
      sha256 "e02c3a4b22320f34e583c49f6cc7dbe3b1cf39860afae7ff4bc9021f7e5e2be3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.7/opaq-0.1.7-linux-x86_64.tar.gz"
      sha256 "b13251bfe28d3c10d6637b9aff0104a96a0d0423e9a23d0c75fb715751512754"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.7/opaq-0.1.7-linux-aarch64.tar.gz"
      sha256 "9d8fd47446dd2e7c995ddd9bf6c843a029b3e020a7093f217fe19651c19d99c9"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
