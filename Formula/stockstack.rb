class Stockstack < Formula
  desc "StockStack CLI — 日本株ファンダメンタル分析ツール"
  homepage "https://stockstack.app"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.1.0/stockstack_darwin_arm64.tar.gz"
      sha256 "c38c708d498742125a0a4c1398731d9e72c23e95eb1d95e395a1b339c1307b59"
    else
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.1.0/stockstack_darwin_amd64.tar.gz"
      sha256 "2b8bc3b7323f895d0b2be0da6586d913e592ceff20223f29c428ba07bac220de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.1.0/stockstack_linux_arm64.tar.gz"
      sha256 "9ca9022c262814b2e21a7b99e74a6ccfc1940e10a066552fd64e60514ac1f45c"
    else
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.1.0/stockstack_linux_amd64.tar.gz"
      sha256 "e4d8b83e88339da03c64c3e0596570929183e7ee812ba319dc2bfa33faf82355"
    end
  end

  def install
    bin.install "stockstack"
  end

  test do
    assert_match "stockstack", shell_output("#{bin}/stockstack --version")
  end
end
