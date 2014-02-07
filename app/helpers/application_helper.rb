module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Lesson"
    end
  end

  def paginate(model)
    will_paginate(model)
  end
end
