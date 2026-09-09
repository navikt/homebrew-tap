class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.09-055639-d8b3633"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-055639-d8b3633/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "be9dd74e179664a38537ead0304acbe95a6711319ad3b86448045c4e83ce8986"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-055639-d8b3633/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "0ba1c79c6856d34b0805d82922129eb70d594038077ddef0a80e699ce068be6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-055639-d8b3633/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e2402c4a1e96997090d251b7a4da7eb5a56edeff837a7718cd155e270fed245"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.09-055639-d8b3633/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "456ce925ee0b6ab4ade69f4da1241fff4dc91aa84b984cd730463c72a23b3e86"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
