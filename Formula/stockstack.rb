class Stockstack < Formula
  desc "StockStack CLI — 日本株ファンダメンタル分析ツール"
  homepage "https://stockstack.app"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.3.0/stockstack_darwin_arm64.tar.gz"
      sha256 "a48bb9538525e3de4f6fa4e2f3cb73627260f4bac1583b79f3a1f3a0ba5a9c01"
    else
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.3.0/stockstack_darwin_amd64.tar.gz"
      sha256 "11077d0b0a7929c415c67cfbebb93c3b87fabb1f93a0338e3b19cd715b88c16c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.3.0/stockstack_linux_arm64.tar.gz"
      sha256 "33db185e59352f54214ae99eaaf307c2201f92b0ce09b5d8d96e702a38c79058"
    else
      url "https://github.com/stockstack-app/stockstack-cli/releases/download/v0.3.0/stockstack_linux_amd64.tar.gz"
      sha256 "e34f6b99bb1fefb6e6765c62535e736499145a44e700e4f11dcfa32aaeba5618"
    end
  end

  def install
    bin.install "stockstack"
  end

  test do
    assert_match "stockstack", shell_output("#{bin}/stockstack --version")
  end
end
