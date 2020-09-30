# frozen_string_literal: true

require "spec_helper"

describe "Authorizations", type: :request do
  let(:user) { create(:user) }

  before { sign_in user, scope: :user }

  describe "#new" do
    before { get decidim_csam.root_path, headers: { host: user.organization.host } }

    it { is_expected.to redirect_to("/users/auth/csam") }
  end
end
