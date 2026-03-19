class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.10/opaq-0.1.10-macos-x86_64.tar.gz"
      sha256 "a7fe62f9e14d682d63e14e570c9d7ff753b92d1aa9614534976eefbb9e71cdf9"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.10/opaq-0.1.10-macos-aarch64.tar.gz"
      sha256 "c551db4474fcb2e367e81f31dfc59350e5eadfe28eda313f594ef31524c1bc98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.10/opaq-0.1.10-linux-x86_64.tar.gz"
      sha256 "62d3e27708b1e615d658b7b7059323d7de6d98f055c751bb2f728eeb8422ba85"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.10/opaq-0.1.10-linux-aarch64.tar.gz"
      sha256 "3c434ddd903745cbb2e7a569d92a865335535d8a2d8f07149262523fd3911fc2"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
