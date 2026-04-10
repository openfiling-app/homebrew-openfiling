class Openfiling < Formula
  desc "OpenFiling CLI — 日本株ファンダメンタル分析ツール"
  homepage "https://openfiling.app"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openfiling-app/openfiling-cli/releases/download/v0.4.0/openfiling_darwin_arm64.tar.gz"
      sha256 "95f1a4a2a8c97b707d955afe3c556f8dd48d0872ae7b429a1615959010bfa21b"
    else
      url "https://github.com/openfiling-app/openfiling-cli/releases/download/v0.4.0/openfiling_darwin_amd64.tar.gz"
      sha256 "76edcf85459d99b88b8ffc60a6c972ab0e93806fba83dc841b8662d58773ffff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openfiling-app/openfiling-cli/releases/download/v0.4.0/openfiling_linux_arm64.tar.gz"
      sha256 "bc09b73acf23379cd85813d8c83bcdef213c62164de77edda78381732246d694"
    else
      url "https://github.com/openfiling-app/openfiling-cli/releases/download/v0.4.0/openfiling_linux_amd64.tar.gz"
      sha256 "bdbef3df970341625333cb556ee1867afb022d67694320f73df877dce3b1cd7e"
    end
  end

  def install
    bin.install "openfiling"
  end

  test do
    assert_match "openfiling", shell_output("#{bin}/openfiling --version")
  end
end
