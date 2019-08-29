class HomeController < ApplicationController
    
    def index
    end

    def download_pdf
        render 'index'
    end

    def download_csv
        render 'index'
    end

end
