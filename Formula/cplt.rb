class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.13-184704-90b9ae7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.13-184704-90b9ae7/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "a2cbc3030c745e6b52b5551811962bc7a06817e3aa1d16cd8a2fafbc08c3589f"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.13-184704-90b9ae7/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "bbeadade5b04c82338c7292fd915d0063ce027b3f475fb569230920704e20159"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
