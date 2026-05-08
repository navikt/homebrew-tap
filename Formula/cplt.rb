class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.08-055453-852d78e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-055453-852d78e/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f7165bbd83a47ca6783d6817a7954ebb6d359c2c9a50aa853f84c2868b42ee43"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.08-055453-852d78e/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "f36c097048ffa454698f51470b4c2a2fe1ad84e00e885ddee8aaa33ad42907aa"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
