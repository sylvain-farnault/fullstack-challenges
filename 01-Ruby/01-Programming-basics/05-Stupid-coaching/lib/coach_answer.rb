def coach_answer(your_message)
  # TODO: return coach answer to your_message
  return "Silly question, get dressed and go to work!" if your_message[-1] == '?'
  return "" if your_message.include?("I am going to work right now!")
  return "I don't care, get dressed and go to work!"
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
end

