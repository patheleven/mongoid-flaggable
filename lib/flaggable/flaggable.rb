require_relative 'flag'

module Mongoid
  module Flaggable

    def self.included includer
      add_flaggable_to includer
      add_user_to_flag_relation includer
    end

    private
    def self.add_flaggable_to klass
      klass.send :has_many, :flags, as: :flaggable
      klass.send(:define_method, :flag_with_reason) do |reason| 
        self.flags.create reason: reason
      end
    end

    def self.add_user_to_flag_relation klass
      begin
        user_class = Module.const_get('User')
        if user_class.is_a? Class
          Flag.send :belongs_to, :user
          user_class.send :has_many, :flag
          klass.send(:define_method, :flag_for_user_with_reason) do |user, reason|
            self.flags.create user: user, reason: reason
          end
        end
      rescue
        puts 'Leaving Flag untouched as no user class is present'
      end
    end
  end
end
