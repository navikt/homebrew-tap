class Cplt < Formula
  desc "macOS Seatbelt sandbox wrapper for GitHub Copilot CLI"
  homepage "https://github.com/navikt/cplt"
  version "2026.05.06-120348-18e83ff"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-120348-18e83ff/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "b7228eb067dfbadcab5dc0395607904e69e393fa6ba124ef163d050c06de4bd1"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.05.06-120348-18e83ff/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "1a4376cb016400ec68cb98b37e3c8569553cbbac74d8b29f145f8426af3079f5"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
