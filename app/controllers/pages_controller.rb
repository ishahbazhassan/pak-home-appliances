class PagesController < ApplicationController
  def about; end
  def vision; end
  def innovation; end
  def support; end
  def dealers; end
  def achievements; end
  def media; end
  def careers; end
  def inquiry; end
  def complaint; end

  def create_dealer
    redirect_to dealers_path, notice: "Thank you. Our sales team will contact you about dealership."
  end

  def create_inquiry
    redirect_to inquiry_path, notice: "Your product inquiry has been received."
  end

  def create_complaint
    redirect_to complaint_path, notice: "Your complaint has been submitted."
  end
end
