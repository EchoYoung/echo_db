class BiometricsController < ApplicationController
    before_action :signed_in_user

    def create
        @biometric = current_user.biometrics.build(biometric_params)
        if @biometric.save
            flash[:success] = "Your biometric information has been updated."
            redirect_to root_url
        else
            render 'static_pages/home'
        end
    end

    def destroy
    end

    private

        def biometric_params
            params.require(:biometric).permit(:height)
            params.require(:biometric).permit(:weight)
        end
end