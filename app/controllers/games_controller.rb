class GamesController < ApplicationController
  def prepare
    @genres = Genre.all
  end

  def play
    @category = params[:select_genre]
    @genre = Genre.find_by(id: @category)
    @questions = Question.where(genre_id: @category, playable: true).order("RANDOM()").limit(4)
  end

  def result
    @answer = params[:answer]
    @select0 = params[:select0]
    @select1 = params[:select1]
    @select2 = params[:select2]
    @select3 = params[:select3]

    @questiona = Question.find(@answer)
    @question0 = Question.find(@select0)
    @question1 = Question.find(@select1)
    @question2 = Question.find(@select2)
    @question3 = Question.find(@select3)

    @judgement = answer_check

    #ゲーム数の追加
    @player = Player.find(current_user.player.id)
    game_count = @player.game + 1
    @player.update_attribute(:game, game_count)
    if @judgement == true
      correct_count = @player.correct + 1
      @player.update_attribute(:correct, correct_count)
    end
  end

  private
  def answer_check
    if @questiona.year <= @question0.year
      unless @questiona.year == @question0.year && @questiona.month > @question0.month
        if @questiona.year <= @question1.year
          unless @questiona.year == @question1.year && @questiona.month > @question1.month
            if @questiona.year <= @question2.year
              unless @questiona.year == @question2.year && @questiona.month > @question2.month
                if @questiona.year <= @question3.year
                  unless @questiona.year == @question3.year && @questiona.month > @question3.month
                    return true
                  end
                end
              end
            end
          end
        end
      end
    end
    return false
  end
end
