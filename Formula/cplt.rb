class Cplt < Formula
  desc "Kernel-enforced sandbox wrapper for coding agents"
  homepage "https://github.com/navikt/cplt"
  version "2026.09.08-100417-c0a9fba"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-100417-c0a9fba/cplt-aarch64-apple-darwin.tar.gz"
      sha256 "24265a46d414cc8e6dff283c75938079a8fef5b189eaba49f65a20145dc0b928"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-100417-c0a9fba/cplt-x86_64-apple-darwin.tar.gz"
      sha256 "a478085fe70d7b6985c25681b721ced7932e606a6e986d493ea67321db4b69c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-100417-c0a9fba/cplt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32aab334e2e9d6dddc91a04ef4ed98c586c0c926063aa30da32e7a74ee7c4eb0"
    else
      url "https://github.com/navikt/cplt/releases/download/2026.09.08-100417-c0a9fba/cplt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a5b017303e94be815818777d0093c211a28a2270d8f9b4d6154adeec2c90d14"
    end
  end

  def install
    bin.install "cplt"
  end

  test do
    assert_match "cplt", shell_output("#{bin}/cplt --version")
  end
end
