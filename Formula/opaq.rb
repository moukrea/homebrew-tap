class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.8/opaq-0.1.8-macos-x86_64.tar.gz"
      sha256 "5432b7f24a51cbd2dab6357600dfce29b366ca3e578cb4e2437ae08328a3e481"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.8/opaq-0.1.8-macos-aarch64.tar.gz"
      sha256 "00697ac508b163ce5168e890c8da732a6c2d7257055dd75a31c368c284ed3897"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.8/opaq-0.1.8-linux-x86_64.tar.gz"
      sha256 "a68ac0e6fb6c00d9980861362c8920e98c58b8d71f6c5785f6a10a394b8d8d0d"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.8/opaq-0.1.8-linux-aarch64.tar.gz"
      sha256 "7d877ad342f1ecc32498a4b9fdd75794d39fbad9c310366ec567a816176b2bae"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
