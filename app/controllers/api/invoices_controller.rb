class Api::InvoicesController < ApplicationController
  def index
    invoices = Invoice.all
    render json: { data: invoices }.to_json, status: :ok
  end
end
