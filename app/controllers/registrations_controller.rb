class RegistrationsController < ApplicationController

  def index
    @registrations = Registration.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new                                           # Creating new Prawn document object
        header = [["Name", "Email", "USN", "Section"]]                      # Defining table hr
        pdf.table(header, column_widths: [130, 130, 130, 130], header: true, :cell_style => { :size => 18, :text_color => "346842" })  # Creating table with hr
           @registrations.each do |reg|                                  # Looping through the @registrations variable
            data = [[reg.name, reg.email, reg.usn, reg.section]]         # Declaring the data to be displayed
            pdf.table(data, column_widths: [130, 130, 130, 130], header: true, :cell_style => { :size => 12.5 } )        # Creating the table with data
           end
        send_data pdf.render, filename: "registrations.pdf", type: 'application/pdf', disposition: 'inline'
      end
    end
  end

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(reg_params)
     if @registration.save
       redirect_to root_path
     else
       render 'new'
     end
  end

  private

   def reg_params
     params.require(:registration).permit(:name, :email, :usn, :section)
   end
end
