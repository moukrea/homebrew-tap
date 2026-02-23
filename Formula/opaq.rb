class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.2/opaq-0.1.2-macos-x86_64.tar.gz"
      sha256 "651e97630b7c5019fc2dc1b5f648abcfc6ad1e8050d18bea07e448a24c6cba61"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.2/opaq-0.1.2-macos-aarch64.tar.gz"
      sha256 "74a527611704086f6ea03ac5290cc76622b9174a6d2d6cfb4df6041f0b04b0ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.2/opaq-0.1.2-linux-x86_64.tar.gz"
      sha256 "1afadad55d514eb1693bf434077923999fa94063c192944a4d8355419f7a2217"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.2/opaq-0.1.2-linux-aarch64.tar.gz"
      sha256 "59d549399ca748492e7a69141ef0dc97ccee463ccd6e2ab1017138c69e31b8ad"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
