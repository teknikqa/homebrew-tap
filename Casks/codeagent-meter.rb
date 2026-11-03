cask "codeagent-meter" do
  version "1.8.1"
  sha256 "c09c82095a804e586e0debd19ac8445e66f4d80938982cd75a9ba2a84c50587d"

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
