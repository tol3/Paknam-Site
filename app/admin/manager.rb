ActiveAdmin.register Manager do
menu false
actions :all, :except => [:new, :destroy]
end
