class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.11-e41c108"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.11-e41c108/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "ffe7a2f7f9893ace21f9d24220fe8a4986a09525569a2e23960d83b5182c7fde"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.11-e41c108/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "162879b4ed7bac1f139a14686bfc81680d1213b18795506f6793aaa0248dc9ff"
    end
  end

  def install
    bin.install "cplt"
  end

  def caveats
    <<~EOS
      The real Copilot CLI must also be installed:
        brew install --cask copilot-cli

      To route 'copilot' through the sandbox, run:
        cplt --shell-install
    EOS
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
