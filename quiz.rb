class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

p1 = "What colour are apples"
p2 = "What colour are bananas?"
p3 = "What colour are pears?"

questions = [
    Question.new(p1, "red"),
    Question.new(p2, "yellow"),
    Question.new(p3, "green")
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp
        if answer == question.answer
            score += 1
        end
    end
    puts ("You got " + score.to_s + "/" + questions.length.to_s())
end

run_test(questions)