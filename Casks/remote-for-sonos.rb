# Homebrew cask template. scripts/release.sh fills in the version and sha256 and
# pushes the result to the jens-wedin/homebrew-tap repository as Casks/remote-for-sonos.rb.
cask "remote-for-sonos" do
  version "0.2.3"
  sha256 "6c60609665ca3ad63138426aed63f0168c70cd35ba56c804da75ec798bc4a89f"

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
