class CloudtruthCli < Formula
  desc "Manage your CloudTruth organization and integrate with practically anything you can think of using our CLI."
  homepage "https://github.com/cloudtruth/cloudtruth-cli"
  url "https://github.com/cloudtruth/cloudtruth-cli/archive/refs/tags/1.1.6.tar.gz"
  sha256 "97ddc0107c1d234a00f4921fccbce42360ec1e1527c12b21ccdc9fad38e6bd86"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cloudtruth --version"
  end
end
