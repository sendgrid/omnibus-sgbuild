name 'sgbuild'
maintainer 'SendGrid'
homepage 'https://github.com/sendgrid/omnibus-sgbuild'

install_dir "/opt/#{name}"
build_version do
  # Use chef to determine the build version
  source :git, from_dependency: 'sgbuild'

  # Output a SemVer compliant version string
  output_format :semver
end
build_iteration ENV.fetch('BUILD_NUMBER', 1)

# creates required build directories
dependency 'preparation'

# sgbuild dependencies/components
dependency 'sgbuild'

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'

