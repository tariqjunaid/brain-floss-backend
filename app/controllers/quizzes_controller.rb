class QuizzesController < ApplicationController
   def index
      quizzes = Quiz.all
      render json: quizzes
   end

   def show
      quiz = Quiz.find(params[:id])
      render json: quiz
   end

   def create
      quiz = Quiz.create(quiz_params)
      if quiz.valid?
         render json: quiz
      else 
         render json: {message: "not complete"}
      end
   end

   def update
      quiz = Quiz.find(params[:id])
      quiz.update(quiz_params)
      render json: quiz
   end

   def destroy
      quiz = Quiz.find(params[:id])
      quiz.destroy
      render json: quiz
   end

   private

   def quiz_params
      params.require(:quiz).permit(:id, :points, :difficulty, :player_id)
   end
end
