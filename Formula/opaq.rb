class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.3/opaq-0.1.3-macos-x86_64.tar.gz"
      sha256 "98439549fa25d45686146b860ad5d1d0a84f16848de1eba5473a52804e7540e8"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.3/opaq-0.1.3-macos-aarch64.tar.gz"
      sha256 "bb35ac0c563476d4b05f19596f327c0709bdd603797adebba82ef631762b07a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.3/opaq-0.1.3-linux-x86_64.tar.gz"
      sha256 "2258039c0c09233932aae7419e2c8987d5ca52c12ac105c5fe89a7784fc7d7f8"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.3/opaq-0.1.3-linux-aarch64.tar.gz"
      sha256 "c56c13e17b32016a71db00e66bfb46d4365fcfb6359be9dd4d0a0eef2c1c5156"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
