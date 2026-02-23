class Opaq < Formula
  desc "Credential manager that keeps secrets out of terminals, agent context windows, shell histories, and command output"
  homepage "https://github.com/moukrea/opaq"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.4/opaq-0.1.4-macos-x86_64.tar.gz"
      sha256 "c0850fbf61bd69e5a14ae791942152bbf8fb20a3ab33363846942a1d0e12fcec"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.4/opaq-0.1.4-macos-aarch64.tar.gz"
      sha256 "337dfa474dcc77ec407111439ab61bfb647dba671d70e3d79f1a90b4eac5cfa9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/moukrea/opaq/releases/download/0.1.4/opaq-0.1.4-linux-x86_64.tar.gz"
      sha256 "a414dcb261604a0d0d7c439e8003aebb9dadf698a709af1233aa676cc6de526c"
    end
    on_arm do
      url "https://github.com/moukrea/opaq/releases/download/0.1.4/opaq-0.1.4-linux-aarch64.tar.gz"
      sha256 "c616a04bd67c841651f51dfe61c20fc4273cc590e5bdbcb601b2fed5de4fcb9a"
    end
  end

  def install
    bin.install "opaq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opaq --version")
  end
end
