class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.11/opaq-0.1.11-macos-x86_64.tar.gz"
      sha256 "fbc2493966376eb3a9966829ce4f9164c194526ad4521e137017c6df1e742746"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.11/opaq-0.1.11-macos-aarch64.tar.gz"
      sha256 "031fc71d2113ec150e15508e02b382a00459f22a0805f2dc8b0f4bf25c8f7538"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.11/opaq-0.1.11-linux-x86_64.tar.gz"
      sha256 "7d8f7c718d004d45c5793f0dccccd600493769b0bfdb76501b9e917f62f034c7"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.11/opaq-0.1.11-linux-aarch64.tar.gz"
      sha256 "d48db15b194baff37bbda80ab613ae00643fec61b2365c4cd2fa802ac63b31e3"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
