# singlyLinkedList.rb
# splashinn

class RubyDataStructures::SinglyLinkedList
  # Initialize singly linked list
  def initialize
    @sentinel = RubyDataStructures::SinglyLinkedList::Element.new(self, nil)
    self.reset
  end

  def head
    @sentinel.next
  end

  def empty?
    self.head == @sentinel
  end

  def reset
    @sentinel.next = @sentinel
  end

  # Splices an element onto the front of the linked list
  def insert(item)
    element = RubyDataStructures::SinglyLinkedList::Element.new(self, item)
    element.next = @sentinel.next
    @sentinel.next = element
  end

  # Returns the first element with a given key
  def search(key)
    element = self.head
    while (element != @sentinel) && (element.key != key)
      element = element.next
    end

    return element
  end

  # Removes the first element with a given key from the linked list
  def delete(key)
    element = self.head
    prev_element = @sentinel

    while (element != @sentinel) && (element.key != key)
      prev_element = element
      element = element.next
    end

    if element == @sentinel
      raise "Argument Error - No element with the key found"
    else
      prev_element.next = element.next
    end
  end
end
