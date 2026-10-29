# Generated with JReleaser 1.26.0 at 2026-10-29T20:37:50.05602128Z

class Tpf < Formula
  desc "Verify and deploy immutable TPF Releases"
  homepage "https://pipelineframework.org"
  version "26.10.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/The-Pipeline-Framework/pipelineframework-cli/releases/download/v26.10.1/tpf-26.10.1-linux-aarch_64.zip"
    sha256 "0f170bc59895e5ed511677207846dd850256aa58adf5d8e7ca113adc4cf1b188"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/The-Pipeline-Framework/pipelineframework-cli/releases/download/v26.10.1/tpf-26.10.1-linux-x86_64.zip"
    sha256 "4c5d9df04fa14e464422f4fe2c0b5d1545d79d19301dd8a2138e0fb1859c4c18"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/The-Pipeline-Framework/pipelineframework-cli/releases/download/v26.10.1/tpf-26.10.1-osx-aarch_64.zip"
    sha256 "9ee8d4e4122f8fdc34e636e70d4ef2dc9916d82fe4ef8c0649f1eef4f15d0ab7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tpf" => "tpf"
  end

  test do
    output = shell_output("#{bin}/tpf --version")
    assert_match "26.10.1", output
  end
end
