class Gardenctl < Formula
  desc "Gardenctl"
  homepage "https://gardener.cloud"
  version "v0.17.0"

  if OS.mac?
    url "https://github.com/gardener/gardenctl/releases/download/refs/tags/0.19.1/gardenctl-darwin-amd64"
    sha256 "fc56514d1415ff75f515eefdc011987aed556068"
  elsif OS.linux?
    url "https://github.com/gardener/gardenctl/releases/download/refs/tags/0.19.1/gardenctl-linux-amd64"
    sha256 "fc56514d1415ff75f515eefdc011987aed556068"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "gardenctl"
  end

  test do
    system "#{bin}/gardenctl", "version"
  end
end

