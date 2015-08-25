require("spec_helper")

describe(Question) do

  # describe(".not_done") do
  #   it("returns the not done questions") do
  #     not_done_question1 = Question.create({:description => "do you like cats?", :done => false})
  #     not_done_question2 = Question.create({:description => "do you like dogs?", :done => false})
  #     not_done_questions = [not_done_question1, not_done_question2]
  #     done_question = Question.create({:description => "done question", :done => true})
  #     expect(Question.not_done()).to(eq(not_done_questions))
  #   end
  # end

  describe("#survey_id") do
    it("lets you read the survey ID out") do
      test_question = Question.new({:description => "Do you like coffee?", :survey_id => 1})
      expect(test_question.survey_id()).to(eq(1))
    end
  end

  describe("#survey") do
    it("tells which survey the question belongs to") do
      test_survey = Survey.create({:name => "survey"})
      test_question = Question.create({:description => "question", :survey_id => test_survey.id})
      expect(test_question.survey()).to(eq(test_survey))
    end
  end
end
