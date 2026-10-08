class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.08-074717-277ed05"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-074717-277ed05/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a7bfca29db8a66ca6f84ff8aed2e921ec790184b0fe62ea7dbff603e95687954"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-074717-277ed05/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "59712baadb209559857a9050e2663f616685dd35c910d32a11aaf8ba55e1e157"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-074717-277ed05/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5412fd21bb2f4b7f4f81bb6e1f36455326c8b43307e3d0958f42aaa25e9babd"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.08-074717-277ed05/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dda8549d26e26b676394054f29e146ab05a1a3a7dae7f9251e663fb1ec33d8df"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
