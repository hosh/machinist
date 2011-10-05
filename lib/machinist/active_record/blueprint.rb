module Machinist::ActiveRecord
  class Blueprint < Machinist::Blueprint

    # Make and save an object.
    def make!(attributes = {})
      make(attributes).tap do |object|
        object.save!
        object.reload
      end
    end

    def lathe_class #:nodoc:
      Machinist::ActiveRecord::Lathe
    end

  end
end
