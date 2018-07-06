class PersonController < ApplicationController

    # GET /person
    def index
        @people = Person.all
        # moldando o tipo de resposta, pode ser varios formatos
        respond_to do |format|
            format.html
            format.json { render :json => @people }
        end
    end

    # GET /person/id
    def show
        @person = Person.find(params[:id])
        respond_to do |format|
            format.html
            format.json { render :json => @people }
        end
    end

    # GET /person/new
    def new
        @person = Person.new
        respond_to do |format|
            format.html
        end
    end

    # POST /person
    def create
        @person = Person.create(person_params)
        respond_to do |format|
            format.html { redirect_to action: 'index' }
        end        
    end

    # DELETE /person/id
    def destroy
        @person = Person.find(params[:id])
        @person.destroy
        respond_to do |format|
            format.html { redirect_to action: 'index' }
        end
    end

    private

    def person_params
        params.require(:person).permit(:name, :age)        
    end

end
