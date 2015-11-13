class CreaturesController < ApplicationController

	def allcreatures
		@Creatures = Creature.all
	end

	def create
		Creature.create(name: '', description: '')
	end

	def show
		@Creature = Creature.find(params[:id])
	end

	def edit
		@Creature = params[:id]
	end

	def update
		@Creature = Creature.find_by(id: params[:id]);
		@Creature.name = params[:name]
		@Creature.description = params[:description]
		@Creature.save
		redirect_to creatures_path
	end

	def delete
		@Creature = Creature.find_by(id: params[:id])
		@Creature.destroy
		redirect_to creatures_path
	end

end
