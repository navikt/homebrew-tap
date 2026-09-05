class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.05-185404-0cd260c"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-185404-0cd260c/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "090487da2094ad48b4ffe0780e81120689f8eb7d6674fec006ded0cc34e55dd6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-185404-0cd260c/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "69b7b93ce06c4966f1b69118c532a1139382b790438ea2cf3545c6094ebbf930"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-185404-0cd260c/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a777569e666ddd4caffc11a31d0ba4ff8a1dcb4a0f710bec2fc7f06a077c083"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.05-185404-0cd260c/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b65b86e0301fa0c82253c67f94ae4ad3bb84901905aae15f8c48c083f9714c4"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
