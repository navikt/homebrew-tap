class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.06-082712-8024877"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-082712-8024877/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "d7acb3f4a94803f6c4faf298ed9d82a3b54d826bde8298f8098d611e397ec31e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-082712-8024877/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "cc8094cd73c52d8732adcac22e23a0a378cbcb1256222bfc796a801781c9c530"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
