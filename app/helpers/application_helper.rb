module ApplicationHelper
    def current_time
        d = DateTime.now
        d.strftime('%I:%M:%S %p')
    end
end
