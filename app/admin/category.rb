ActiveAdmin.register Category do

  permit_params :name, :group_id, :photo
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  index do
    column :name
    column :group
    actions
  end

  form do |f|
    f.inputs "Detail" do
      f.input :name
      f.input :group
      f.input :photo, :as => :file
    end
    f.actions
  end

  show do |s|
    attributes_table do
      row :name
      row :group
      row :photo do
        image_tag(s.photo.url(:thumbs))
      end
    end
  end
end
