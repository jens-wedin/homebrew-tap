# Homebrew cask template. scripts/release.sh fills in the version and sha256 and
# pushes the result to the jens-wedin/homebrew-tap repository as Casks/remote-for-sonos.rb.
cask "remote-for-sonos" do
  version "0.2.1"
  sha256 "1a0b8a7b28bf3835cf0dbbec25f1e1f8df777a418d600b988faaab90f864b227"

  url "https://github.com/jens-wedin/sonos-remote/releases/download/v#{version}/Remote-for-Sonos-#{version}.zip"
  name "Remote for Sonos"
  desc "Menu bar controller for Sonos speakers on the local network"
  homepage "https://github.com/jens-wedin/sonos-remote"

  depends_on macos: :tahoe

  app "Remote for Sonos.app"

  zap trash: [
    "~/Library/Containers/com.jenswedin.SonosRemote",
  ]
end
