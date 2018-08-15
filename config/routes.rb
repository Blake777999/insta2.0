Rails.application.routes.draw do
  get("/photos/:id", {:controller=>"photos", :action=>"show"})
  get("/new_photo", {:controller=>"photos", :action=>"new"})
  get("/create_photo", {:controller=>"photos", :action=>"create"})
  get("/edit_photo/:id", {:controller=>"photos", :action=>"edit"})
  get("/update_photo/:id", {:controller=>"photos", :action=>"update"})
  get("/", {:controller=>"photos", :action=>"index"})
  get("/remove_photo/:id", {:controller=>"photos", :action=>"destroy"})
  get("/new_comments", {:controller=>"comments", :action=>"new"})
  get("/create_comments", {:controller=>"comments", :action=>"create"})
end
