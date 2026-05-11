class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.11-063441-fec63cb"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.11-063441-fec63cb/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a383bd3e525f3d287a6452e83de4aaaa0d7a48e947d353a9a00ea2df98ff38f5"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.11-063441-fec63cb/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "4d4d3aee2786020e0e9081a8aa8020cb7c57e00a865e9775f4109e2e3bc3935f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
