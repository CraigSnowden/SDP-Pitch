ActiveAdmin.register Slot do
  permit_params :start_time, :end_time, :group

  index do |i|
    id_column
    column :start_time
    column :end_time
    column :group
    actions
  end
  
  form do |f|
    inputs "Slot" do
      input :start_time, as: :datetime_picker
      input :end_time, as: :datetime_picker
      input :group
    end
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
