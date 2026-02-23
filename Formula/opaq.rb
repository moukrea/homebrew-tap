class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.5/opaq-0.1.5-macos-x86_64.tar.gz"
      sha256 "72f1cd05d4827a4b912ebbf46add6672dde2d3b1240e63de694ab73e0245a7d1"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.5/opaq-0.1.5-macos-aarch64.tar.gz"
      sha256 "0593f1cef15623575bffedff2e7694398504f7bcf6cfe008f7b3ab2b11e83d77"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.5/opaq-0.1.5-linux-x86_64.tar.gz"
      sha256 "58b9e7425cb32bef46b561151756414b9a29200a9ee23e46fbdd04ae2bea8568"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.5/opaq-0.1.5-linux-aarch64.tar.gz"
      sha256 "c172fa977197cf3cffd44a33ec8de508e4327a1413fc0099072e245c0b40258f"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
