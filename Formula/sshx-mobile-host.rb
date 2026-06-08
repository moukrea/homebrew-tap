class SshxMobileHost < Formula
  desc "Host tooling for sshx-mobile: persistent tmux + sshx + resolver to reach your shell from a phone"
  homepage "https://github.com/moukrea/sshx-mobile"
  version "1.0.6"
  license "MIT"
  url "https://github.com/moukrea/sshx-mobile/releases/download/1.0.6/sshx-mobile-host-1.0.6.tar.gz"
  sha256 "45d4eff07262a8db55422c60be342a6fc6a5b5a2609e6d32470302fc97b65294"

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
