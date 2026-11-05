# Generated with JReleaser 1.26.0 at 2026-11-05T21:53:12.361220218Z

class Tpf < Formula
  desc "Verify and deploy immutable TPF Releases"
  homepage "https://pipelineframework.org"
  version "26.11.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/The-Pipeline-Framework/pipelineframework-cli/releases/download/v26.11.1/tpf-26.11.1-linux-aarch_64.zip"
    sha256 "a55245f463201aebb663d2d35f5eadb1660d8f16d3cb3dd24463aa0167b7a30a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/The-Pipeline-Framework/pipelineframework-cli/releases/download/v26.11.1/tpf-26.11.1-linux-x86_64.zip"
    sha256 "a94b324adb0aed4ca51365f6313d6ed8493a2c843913085675d0884c3a3ae8bd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/The-Pipeline-Framework/pipelineframework-cli/releases/download/v26.11.1/tpf-26.11.1-osx-aarch_64.zip"
    sha256 "53b09ce37f421fe647a4fa9a5ee388cf3e78dadd407894283d4dc8ae861f998f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tpf" => "tpf"
  end

  test do
    output = shell_output("#{bin}/tpf --version")
    assert_match "26.11.1", output
  end
end
