###
# Copyright (c) 2015, Upnext Technologies Sp. z o.o.
# All rights reserved.
#
# This source code is licensed under the BSD 3-Clause License found in the
# LICENSE.txt file in the root directory of this source tree.
###

BeaconControl::BackendRequestExtension.configure do |config|
  #
  # Register extension link on application extensions list
  #
  config.setting_link = Proc.new{ beacon_control_analytics_extension.application_analytics_path(@application) }

  #
  # Register link in global sidebar
  # Icon: font-awesome icon class
  #
  # config.register :sidebar_links, {
  #   i18n_key: 'analytics_extension.sidebar_links.analytics',
  #   path: Proc.new{ beacon_control_analytics_extension.root_path },
  #   icon: 'info'
  # }

  #
  # Register custom activity link in application action page
  #
  config.register :actions, {
    i18n_key: 'activities.form.scheme.requests',
    scheme: 'requests',
    permitted_attributes: { requests_attributes: [:id, :payload, :name, :_destroy] }
  }

  #
  # Register new Action Trigger type
  #
  # config.register :triggers, {
  #   key: :analytics,
  #   permitted_attributes: [:analytics]
  # }

  #
  # Register custom setting on application edit page
  # Type: setting value type, available types: :string, :password, :text, :file
  #
  # config.register :settings, {
  #   i18n_key: 'analytics_extension.settings.analytics',
  #   key: :analytics,
  #   type: :string,
  #   validations: Proc.new{ { presence: true, length: { minimum: 3, maximum: 6 } } }
  # }

  #
  # Register global extension configuration setting on after-activation page.
  #
  # config.register :configurations, {
  #   i18n_key: 'analytics_extension.configurations.api_key',
  #   key: :api_key
  # }

  #
  # Configures extension as autoloadable on Account creation
  #
  # config.autoloadable = true
end
