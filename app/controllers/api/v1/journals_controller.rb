class Api::V1::JournalsController < ApplicationController
    def index
        journal = Journal.all
        render json: JournalSerializer.new(journal)
    end

    def create
        journal = Journal.new(journal_params)
        if journal.save
            render json: journal, status: :accepted
        else
            render json: {errors: journal.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        journal = Journal.find(id: params[:id])
        if journal.destroy
            render json: {id: journal.id}
        end
    end



    private
    def journal_params
        params.require(:journal).permit(:title, :description, :image_url, :category_id)
    end
end