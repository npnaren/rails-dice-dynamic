class DiceController < ApplicationController
  def roll
    @num_dice = params.fetch("num_dice").to_i

    @sides = params.fetch("num_sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end

    render( :template => "/templates/diceroll")
  end
end
