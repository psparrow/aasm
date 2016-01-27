class SimpleExampleWithStateBlocks
  include AASM

  def foo
    'bar'
  end

  aasm do
    state :initialised, :initial => true

    state :filled_out do
      def foo
        'baz'
      end
    end

    event :fill_out do
      transitions :from => :initialised, :to => :filled_out
    end
  end
end
