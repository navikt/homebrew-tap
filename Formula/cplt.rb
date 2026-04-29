class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.04.29-121034-dcc02d1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.04.29-121034-dcc02d1/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "eb6b5d6e7ec435865062d12f79a518d9446084b5d63a16237ce0fb62ef925685"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.04.29-121034-dcc02d1/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a78fbb1e8924da35e8e33052b9a086f06744fed4af46e4c964707b92ad8b96d8"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
