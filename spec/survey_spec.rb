require("spec_helper")

describe(Survey) do

  describe("#question") do
    it("returns an array of questions for that survey") do
      test_survey = Survey.create({:name => "Epicodus survey"})
      test_question1 = Question.create({:description => "question1", :survey_id => test_survey.id()})
      test_question2 = Question.create({:description => "question2", :survey_id => test_survey.id()})
      expect(test_survey.questions()).to(eq([test_question1, test_question2]))
    end
  end

  describe("#update") do
    it("lets you update surveys in the database") do
      survey = Survey.create({:name => "Epicodus survey"})
      survey.update({:name => "Homework survey"})
      expect(survey.name()).to(eq("Homework survey"))
    end
  end
end
