# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets"
  homepage "https://doppler.com"
  version "3.16.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/3.16.0/doppler_3.16.0_macOS_amd64.tar.gz"
    sha256 "1c357ad2cf8a22a99fbc7cbd538c12b26b624644c283b91692ad8ee0fefa2016"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.16.0/doppler_3.16.0_linux_amd64.tar.gz"
      sha256 "819e64cff8e492de4aa8f931c0bb274502ecac9798703ae5ea70ee8faf9b6db0"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/3.16.0/doppler_3.16.0_linux_arm64.tar.gz"
        sha256 "51fd3955534692c91235db80fcfe33d2e5365b67b950619606e379fa1eff0d9f"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/3.16.0/doppler_3.16.0_linux_armv6.tar.gz"
        sha256 "8cade2dd553dc545b4d88b9115c7a77ae7b19d6280ce336db7db3cdf663552ae"
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
