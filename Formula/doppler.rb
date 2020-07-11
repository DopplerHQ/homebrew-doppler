# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets and config"
  homepage "https://doppler.com"
  version "3.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/3.8.0/doppler_3.8.0_macOS_amd64.tar.gz"
    sha256 "37d5f8a348c04fe1df16f25b32a910d23af90ddc276c29105c005f9845458f66"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.8.0/doppler_3.8.0_linux_amd64.tar.gz"
      sha256 "3f4371f4ec13f045266f3c5f9f21066704a181a5f86740eb1c2f997cd50010ab"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/3.8.0/doppler_3.8.0_linux_arm64.tar.gz"
        sha256 "cfd387225b4b1c07016dd40e0c9a3f8143e05e4271b3f614628619b416dbef1b"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/3.8.0/doppler_3.8.0_linux_armv6.tar.gz"
        sha256 "b98be8b22c6d43a37a89d4dcc186a7c3b8f32f9edc44223bff90b74f9bce5359"
      end
    end
  end

  def install
    bin.install "doppler"
  end

  test do
    system "#{bin}/doppler --version"
  end
end
