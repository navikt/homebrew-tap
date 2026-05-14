class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.14-145439-62dd8ad"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.14-145439-62dd8ad/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "4316f2b73e8e37d17eb6dc7a82b9ecb925f6214ff796f0647ed7fa648b3b4d51"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.14-145439-62dd8ad/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "54519751a9efe25b23162555d04ba7da775cc58f571abe5e823d70562dfd45a5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
