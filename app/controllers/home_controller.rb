class HomeController < ApplicationController
    
    def index

    end

    def download_pdf
        @employees = Employee.all

        respond_to do |format|
            format.html
            format.pdf do
                pdf = ExportPdf.new(@employees)
                send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
            end
        end
    end

    def download_csv
        @users = User.all

        respond_to do |format|
            format.html
            format.csv { send_data @users.to_csv } 
        end
    end

end
