module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Lesson"      
    end
  end
end
