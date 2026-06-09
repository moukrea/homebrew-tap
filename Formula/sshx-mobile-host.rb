class SshxMobileHost < Formula
  desc "Host tooling for sshx-mobile: persistent tmux + sshx + resolver to reach your shell from a phone"
  homepage "https://github.com/moukrea/sshx-mobile"
  version "1.0.16"
  license "MIT"
  url "https://github.com/moukrea/sshx-mobile/releases/download/1.0.16/sshx-mobile-host-1.0.16.tar.gz"
  sha256 "d98852a38973884d3a5792baa5d77ad782b3ebf587909488390c28adb7f497d1"

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
      Run 'sshx-host-setup' to deploy the per-user services and print a QR to scan in the app.
      You also need the 'sshx' CLI on this host (https://sshx.io).
    EOS
  end

  test do
    assert_predicate bin/"sshx-host-setup", :exist?
  end
end
