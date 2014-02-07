SimpleForm.setup do |config|

  config.wrappers :bootstrap, :tag => 'div', :class => 'form-group', :error_class => 'has-error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, :wrap_with => { :tag => 'div',  :class => 'col-xs2 col-sm-2 col-md-2 col-lg-2 control-label text-right' }
    b.use :input, :wrap_with => { :tag => 'div',  :class => 'col-xs-6 col-sm-6 col-md-6 col-lg-6 controls' }
    b.use :error, :wrap_with => { :tag => 'span', :class => 'help-block' }
    b.use :hint,  :wrap_with => { :tag => 'span', :class => 'help-block' }
  end

  config.form_class      = "form-horizontal"
  config.input_class     = "form-control"
  config.default_wrapper = :bootstrap
end
