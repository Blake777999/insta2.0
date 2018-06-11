Rails.application.routes.draw do
  get("/photos/:id", {:controller=>"photos", :action=>"show"})
  get("/new_photo", {:controller=>"photos", :action=>"new"})
  get("/create", {:controller=>"photos", :action=>"create"})
end
