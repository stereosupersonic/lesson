module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Lesson"
    end

  end

  def paginate(model)
    will_paginate(model)
  end

  def page_header(text)
    title text
    content_tag(:h1, text, :class => "page-header" )
  end

   def error_messages_for symbol
    model_object = instance_variable_get "@#{symbol}"
    if model_object && model_object.errors.any?
      lines = model_object.errors.full_messages.collect { |msg| "<li>#{h(msg)}</li>" }.join
      "<div id='error_explanation'><ul>#{lines}</ul> </div>".html_safe
    end
  end
end
