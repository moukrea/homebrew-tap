class SshxMobileHost < Formula
  desc "Host tooling for sshx-mobile: persistent tmux + sshx + resolver to reach your shell from a phone"
  homepage "https://github.com/moukrea/sshx-mobile"
  version "1.0.3"
  license "MIT"
  url "https://github.com/moukrea/sshx-mobile/releases/download/1.0.3/sshx-mobile-host-1.0.3.tar.gz"
  sha256 "d0fe9da2e4eb2abc84d7a8756d22e7313b2c762a456a7d15cdcec5a5d354a1f1"

  depends_on :linux
  depends_on "tmux"

  def install
    libexec.install Dir["host/*"]
    (bin/"sshx-host-setup").write <<~SH
      #!/bin/sh
      exec sh "#{libexec}/install.sh" "$@"
    SH
    chmod 0755, bin/"sshx-host-setup"
  end

  def caveats
    <<~EOS
      Linux + systemd only (the host runs per-user systemd services).
      Run 'sshx-host-setup' to deploy the services and print a QR to scan in the app;
      it will offer to install the 'sshx' CLI (https://sshx.io) if missing.
    EOS
  end

  test do
    assert_predicate bin/"sshx-host-setup", :exist?
  end
end
