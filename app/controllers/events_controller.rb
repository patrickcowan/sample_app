class EventsController < ApplicationController

	def index
		@events = Event.paginate(page: params[:page])
	end

    def show
    	@event = Event.find(params[:id])
	end

	def destroy
		Event.find(params[:id]).destroy
    	redirect_to events_url
    end

	def create
        @event = Event.new(event_params)

		if @event.save
			redirect_to events_url
		else
			render 'new'
		end
	end

	def trying
		Event.find(id).users << current_user	
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])

		if @event.save
			redirect_to @event
    	else
      		render 'edit'
    	end
	end

	def new
		@event = Event.new
    end

    private        

    def event_params
    	params.require(:event).permit(:title, :Venue, :Time, :Date)
    end
  end
