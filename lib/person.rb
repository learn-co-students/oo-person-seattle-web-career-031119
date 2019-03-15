class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(change_happ)
    @happiness = change_happ
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
  end
    @happiness
  end

  def hygiene=(change_hygiene)
    @hygiene = change_hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
  end
    @hygiene
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene = hygiene
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -=3
    self.happiness +=2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    person.happiness += 3
    self.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(receiver, topic)
    if topic == "politics"
      self.happiness -= 2
      receiver.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      receiver.happiness += 1
      "blah blah sun blah rain"
    else topic == "other"
      "blah blah blah blah blah"
    end
  end

end# your code goes here
