# typed: strict
# frozen_string_literal: true

class WebpushDevicesController < ApplicationController
  extend T::Sig

  before_action :authenticate_user!

  sig { void }
  def initialize
    super
    @webpush_devices = T.let(nil, T.nilable(WebpushDevice::RelationType))
    @device = T.let(nil, T.nilable(WebpushDevice))
  end

  sig { void }
  def index
    user = T.must(current_user)
    @webpush_devices = user.webpush_devices
  end

  class CreateParams < T::Struct
    const :browser, String
    const :os, String
    const :endpoint, String
    const :auth, String
    const :p256dh, String
  end

  sig { void }
  def create
    typed_params = TypedParams[CreateParams].new.extract!(params)

    @device = WebpushDevice.create_or_find_by(
      user: current_user,
      browser: typed_params.browser,
      operating_system: typed_params.os,
      notification_endpoint: typed_params.endpoint,
      auth_key: typed_params.auth,
      p256dh_key: typed_params.p256dh,
    )
  end

  class DestroyParams < T::Struct
    const :id, Integer
  end

  sig { void }
  def destroy
    typed_params = TypedParams[DestroyParams].new.extract!(params)
    id = typed_params.id

    device = WebpushDevice.find(id)
    render(json: { msg: "Device does not belong to user" }, status: :bad_request) if device.user != current_user

    device.destroy!
    render(json: { msg: "Device destroyed" }, status: :ok)
  end
end
