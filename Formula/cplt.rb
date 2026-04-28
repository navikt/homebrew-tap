class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.28-152013-591d876"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.28-152013-591d876/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "9de84d807e3497ed95316f6b9a48bbfcba3555902af6aeafe0bd94f428ef4493"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.28-152013-591d876/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "96f9f8f5ce320b014977289b9bba7b19a2ea8fff612f38682d51e1c3eaaada30"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
