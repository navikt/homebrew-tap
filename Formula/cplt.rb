class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.23-083439-f31097a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.23-083439-f31097a/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "2ed2f1194c3c087152f6b02445e3ffa2ea912bf15ee7a2a509e3a841f093e756"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.23-083439-f31097a/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f421c3461510e44b5eb1a0737504993517f70fc83cd25e757a4a975aedeba65e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
