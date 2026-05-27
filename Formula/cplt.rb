class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.27-071106-e27eba4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-071106-e27eba4/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "e188ae0abcd4cff85298237c4ffb107a2514dc24e92df5a5c9d187b787bae1bc"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.27-071106-e27eba4/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "c38100f00a4b2f1894004c21f939d4e97dfba4fa873181c3790193fab7721155"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
