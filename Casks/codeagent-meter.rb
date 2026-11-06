cask "codeagent-meter" do
  version "1.11.0"
  sha256 "25477ccf1c7ff2ef9e346e132770b9bd307a6092f3081f179f05484929ab07bd"

  url "https://github.com/teknikqa/codeagent-meter/releases/download/v#{version}/CodeAgent-Meter.zip"
  name "CodeAgent Meter"
  desc "Menu bar app for tracking usage and quota across AI coding agents"
  homepage "https://github.com/teknikqa/codeagent-meter"

  livecheck do
    skip "Auto-generated on release."
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CodeAgent Meter.app"

  # The app isn't notarized, so clear quarantine or Gatekeeper blocks it.
  # Assumes the default /Applications appdir.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "/Applications/CodeAgent Meter.app"],
        writable_paths: ["/Applications/CodeAgent Meter.app"]
  end
end
