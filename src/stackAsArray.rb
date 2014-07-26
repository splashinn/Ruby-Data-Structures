# stackAsArray.rb
# splashinn

class RubyDataStructures::StackAsArray
  attr_reader :length, :top

  # Initializes a stack of size +size+
  #The value of +top+ for an empty stack is +nil+
  def initialize(size = 1)
    @length = size
    self.reset
  end

  # Returns true if stack is empty
  def empty?
    @top.nil?
  end

  # Returns true if stack is full
  def full?
    @top == @length - 1
  end

  def singleton?
    @top == 0
  end

  # Pushes element into stack
  def push(element)
    raise "The stack is full" if self.full?

    if self.empty?
      @top = 0
    else
      @top = @top + 1
    end

    @array[@top] = element
  end

  # Pops the stack
