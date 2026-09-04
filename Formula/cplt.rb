class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.04-080058-62794c8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-080058-62794c8/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "7180582a2909e1c5a27f1bd61ec66514f6b0547d05e4f886b42114ecf959f71b"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-080058-62794c8/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "7de77c5596fd2a5b87e19ea3233e223dbfead3f2afe37a6ce1499b72f9d73a15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-080058-62794c8/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b67dfbc2d043aca78b79339db4f9d5dcebec9dacc25db6460b6357d9401783e"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.04-080058-62794c8/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3061eefe932fc61cfcee6fd0640b9ddf392226aa7efd4190d399533403d1ed6"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
