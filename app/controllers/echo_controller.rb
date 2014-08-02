class EchoController < ApplicationController
  def home
    @biometric = current_user.biometrics.build if signed_in?
  end
end
