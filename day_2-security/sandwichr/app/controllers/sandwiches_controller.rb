class SandwichesController < ApplicationController
	def index
	  sandwiches = Sandwich.all
	  render json: sandwiches
	end

	def create
	  sandwich = Sandwich.create(sandwich_params)
	  render json: sandwich
	end

	def show
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  render json: sandwich
	end

	def update
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  sandwich.update(sandwich_params)
	  render json: sandwich
	end

	def destroy
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  sandwich.destroy
	  render json: sandwich
	end

	def details
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: { error: "sandwich not found" }, status: 404
			return
		end
		ingredients = sandwich.ingredients
		render json: ingredients
	end

	def add_ingredient
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: { error: "sandwich not found" }, status: 404
			return		
		end
		ingredient = Ingredient.find_by(id: params[:ingredient_id])

		unless ingredient
			render json: { error: "ingredient not found" }, status: 404
			return	
		end
		sandwich.add(ingredient)

		render json: {sandwich: sandwich, ingredients: sandwich.ingredients}
	end


	private

	def sandwich_params
	  params.require(:sandwich)
	    .permit(:name, :bread_type)
	end
end
