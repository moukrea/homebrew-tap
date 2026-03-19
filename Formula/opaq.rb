class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.9/opaq-0.1.9-macos-x86_64.tar.gz"
      sha256 "a8f027dfd633f47568301e3a5c36990d27a9340f80423bcf5eb00405f772e86c"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.9/opaq-0.1.9-macos-aarch64.tar.gz"
      sha256 "3100a2889adf445970ea4b972f09b7adb288b064146be909622979c42b1d5557"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.9/opaq-0.1.9-linux-x86_64.tar.gz"
      sha256 "ae558c06480a860ad24d4a6f8f0ef1b131097b9ad8cffde04841d7d9d75b5fd8"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.9/opaq-0.1.9-linux-aarch64.tar.gz"
      sha256 "ad452c104d33b1b75d6a22fd2dbf78bbef0d86c648f0c5889a3472e4306d3f3f"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
