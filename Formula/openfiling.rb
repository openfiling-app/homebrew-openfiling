class Openfiling < Formula
  desc "OpenFiling CLI — 日本企業の財務データ基盤 CLI"
  homepage "https://openfiling.app"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openfiling-app/openfiling-cli/releases/download/v0.4.1/openfiling_darwin_arm64.tar.gz"
      sha256 "7e7efd8d0f04c50672708039e197b71d1dc69b30b20a8cdc08bbd291674257ec"
    else
      url "https://github.com/openfiling-app/openfiling-cli/releases/download/v0.4.1/openfiling_darwin_amd64.tar.gz"
      sha256 "6169a1f54d782c14910c5474c0bc369cb8fd7eb495ab61f6454abce158756341"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openfiling-app/openfiling-cli/releases/download/v0.4.1/openfiling_linux_arm64.tar.gz"
      sha256 "7cc60397dc37172065284c8757c150dbf8f519224d29574da842a841643dca99"
    else
      url "https://github.com/openfiling-app/openfiling-cli/releases/download/v0.4.1/openfiling_linux_amd64.tar.gz"
      sha256 "4964c1e624534aceb90a58f138223fe06827ec95069cceeea5164708f909fa65"
    end
  end

  def install
    bin.install "openfiling"
  end

  test do
    assert_match "openfiling", shell_output("#{bin}/openfiling --version")
  end
end
