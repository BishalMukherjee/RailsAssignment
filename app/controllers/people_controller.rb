class PeopleController < ApplicationController

  def index
    if params[:search].blank?
      @people = Person.all  
    else 
      @people = Person.all.where("name LIKE :search OR email LIKE :search", search: "%#{params[:search]}%")  
    end  
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(person_params)

    redirect_to people_path
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)

    redirect_to people_path
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path
  end

  private
  def person_params
    params.require(:person).permit(:name, :email, :search)
  end

end
