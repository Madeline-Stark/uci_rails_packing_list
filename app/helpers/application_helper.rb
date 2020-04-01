module ApplicationHelper
    def current_time
        d = DateTime.now
        d.strftime('%I:%M:%S %p')
    end

    def navbar
        if logged_in?
            button_to "logout", "/logout", method: :delete
            # link_to "All lists", lists_path
            # link_to "New List", new_list_path 
        else
            link_to "Sign In", login_path
           
        end
        

    end

    
end
