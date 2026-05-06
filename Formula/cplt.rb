class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.06-074459-230cba7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-074459-230cba7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f42d924e2bf416563266edc4310caa0a78fcd89c9ab1190a0ed25aa35e0be9f0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-074459-230cba7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "920e373191d72499bcd5427d9bc36ba735eb0b6d9875f4bb04129d5f0712408e"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
