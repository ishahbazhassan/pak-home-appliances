class ContactController < ApplicationController
  def show; end

  def create
    redirect_to contact_path, notice: "Thank you. PAK will get back to you shortly."
  end
end
