# frozen_string_literal: true


# ---------------------------------------------------------------------------------------------------------------------
# Mongoid defines it's own ::Boolean class, and silently break coercer.
# See: /mongoid-7.2.0/lib/mongoid/criteria/queryable/extensions.rb
#
# Sources confirming the issue:
# https://github.com/solnic/virtus#important-note-about-boolean-type
# https://github.com/solnic/virtus/issues/234
#
# Given we do not use mongoid's Boolean lets define it before the mongoid and inherit it from virtus one.
# Otherwise it breaks all the `attribute :attr_name, Boolean` calls in `decidim` gem (and there are A LOT of them)
require "virtus"

unless defined?(Boolean)
  class Boolean < Virtus::Attribute::Boolean; end
end
require "mongoid"
# ---------------------------------------------------------------------------------------------------------------------

require "decidim/verifications/omniauth/admin"
require "decidim/verifications/omniauth/engine"
require "decidim/verifications/omniauth/admin_engine"
require "decidim/verifications/omniauth/action_authorizer"

module Decidim
  module VerificationsOmniauth
  end
end
