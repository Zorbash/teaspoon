module Teaspoon::ApplicationHelper
  def disable_precompile_checker!
    return unless respond_to? :precompiled_asset_checker=

    self.precompiled_asset_checker = -> _ { true }
  end
end
