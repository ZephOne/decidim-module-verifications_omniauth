# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/verifications/omniauth/version"

Gem::Specification.new do |s|
  s.version = Decidim::VerificationsOmniauth.version
  s.authors = ["Belighted"]
  s.email = ["info@belighted.com"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/belighted/decidim-module-verifications_omniauth"
  s.required_ruby_version = ">= 2.7.1"

  s.name = "decidim-verifications_omniauth"
  s.summary = "A decidim verifications_omniauth module"
  s.description = "Provides Omniauth"

  s.files = Dir["{app,config,lib}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "decidim-core", Decidim::VerificationsOmniauth.version
  s.add_dependency "decidim-verifications", Decidim::VerificationsOmniauth.version
  s.add_dependency "mongoid", "~> 7.2.0"
  s.add_dependency "omniauth-saml", "~> 2.1"
  s.add_dependency "savon", "~> 2.12.0"
  s.add_dependency "signer"

  s.add_development_dependency "decidim-dev", Decidim::VerificationsOmniauth.version
end
