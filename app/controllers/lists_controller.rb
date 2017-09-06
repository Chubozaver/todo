class ListsController < ApplicationController

	def index
		@lists = current_user.lists.order(created_at: :asc)
		@new_list = current_user.lists.new
	end

	def create
		@list = current_user.lists.new create_params
		@list.save
		respond_to do |format|
			format.html { redirect_to root_path }
			format.js { }
		end
	end

	def update
		@list = current_user.lists.find(params[:id])
		@list.update create_params
		respond_to do |format|
			format.html { redirect_to root_path }
			format.js { }
		end
	end

	def destroy
		@list = current_user.lists.find(params[:id])
		@list.destroy
		respond_to do |format|
			format.html { redirect_to root_path }
			format.js { }
		end
	end

	private

	def create_params
		params.require(:list).permit(:name)
	end

end

