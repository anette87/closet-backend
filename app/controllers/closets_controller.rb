class ClosetsController < ApplicationController

    def index
        closets = Closet.all 
        render json: ClosetSerializer.new(closets)
    end

    def create
        closet = Closet.new 
        if closet.save
            render json: ClosetSerializer.new(closet)
        else
            p closet.errors.full_messages
            render json: closet.errors, status: :unprocessable_entity
        end
    end

end
