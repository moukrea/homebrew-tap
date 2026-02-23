class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "VERSION_PLACEHOLDER"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/VERSION_PLACEHOLDER/opaq-VERSION_PLACEHOLDER-macos-x86_64.tar.gz"
      sha256 "SHA256_MACOS_X86_64"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/VERSION_PLACEHOLDER/opaq-VERSION_PLACEHOLDER-macos-aarch64.tar.gz"
      sha256 "SHA256_MACOS_AARCH64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/VERSION_PLACEHOLDER/opaq-VERSION_PLACEHOLDER-linux-x86_64.tar.gz"
      sha256 "SHA256_LINUX_X86_64"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/VERSION_PLACEHOLDER/opaq-VERSION_PLACEHOLDER-linux-aarch64.tar.gz"
      sha256 "SHA256_LINUX_AARCH64"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
