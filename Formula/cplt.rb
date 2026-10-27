class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.10.26-235611-ad31a54"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.26-235611-ad31a54/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "345331493cabb537426b925182ad4593762177fde1015e915c1a785adecf887c"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.26-235611-ad31a54/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "595d1a7bd7fe6fafc9edcb9741e5482ed5f129df2b1914d94137fa0ab477ec0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.10.26-235611-ad31a54/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "683835eeb1285aff51c742fe3709a2ee6ee9cc208b1be0938c0bff230770c9f3"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.10.26-235611-ad31a54/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83f50ef961256ee56162ea1a695eae10dddc8f1764f37f593484098e1578066c"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
