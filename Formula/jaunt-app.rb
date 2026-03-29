class JauntApp < Formula
  desc "Jaunt desktop app — access your machine from any device (native UI)"
  homepage "https://github.com/moukrea/jaunt"
  version "0.10.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.1/jaunt-app-0.10.1-linux-x86_64.AppImage"
      sha256 ""
    end
    on_arm do
      url "https://github.com/moukrea/jaunt/releases/download/0.10.1/jaunt-app-0.10.1-linux-aarch64.AppImage"
      sha256 ""
    end
  end

  def install
    bin.install Dir["jaunt-app-*"].first => "jaunt-app"
    chmod 0755, bin/"jaunt-app"
  end

  test do
    assert_predicate bin/"jaunt-app", :exist?
  end
end
