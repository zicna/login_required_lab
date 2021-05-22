module SessionsHelper
    def currrent_user
        return head(:forbidden) unless session.include? :user_name
      end
end
