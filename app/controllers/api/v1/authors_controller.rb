module Api
  module V1
    class AuthorsController < BaseController
      def index
        authors = Author.all
        render json: authors.to_json(include: :posts)
      end

      def show
        author = Author.find(params[:id])
        render json: author.to_json(include: :posts)
      end

      def create
        author = Author.new(author_params)
        if author.save
          render json: {
            status: 'SUCCESS',
            message: 'Author Created',
            data: author
          }, status: :ok
        else
          render json: {
            status: 'ERROR',
            message: 'Author not saved',
            data: author.errors
          }, status: :unprocessable_entity
        end
      end

      def destroy
        author = Author.find(params[:id])
        author.destroy
        render json: {
          status: 'SUCCESS',
          message: 'Deleted author',
          data: author
        }, status: :ok
      end

      def update
        author = Author.find(params[:id])
        if author.update_attributes(author_params)
          render json: {
            status: 'SUCCESS',
            message: 'Updated author',
            data: author
          }, status: :ok
        else
          render json: {
            status: 'ERROR',
            message: 'Author not updated',
            data: author.errors
          }, status: :unprocessable_entity
        end
      end

      private

      def author_params
        params.permit(:name, :role, :avatar, :location)
      end
    end
  end
end
