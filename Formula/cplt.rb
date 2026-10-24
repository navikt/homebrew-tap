class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.24-194956-083d352"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-194956-083d352/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "f5e30ac5f8218db633d96eeb525e96d21d14eaf1ba9fa72e6d9c6620e9fdd8fa"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-194956-083d352/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "509572fcef502254be476983499ab84e29b293f23c3098c842d358cf00539b8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-194956-083d352/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8eff6e27db55c006c8a6662e05686d48a67090e22b02049bf25cdac1b7d6abb6"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.24-194956-083d352/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b32af032e25337044e2efddef12c4ed4f2cc8e343c301e6d5827352e45db6b5f"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
