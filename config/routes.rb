Rails.application.routes.draw do
  get("/directors/:an_id", {:controller => "directors", :action => "index" })
  get("/directors/eldest", {:controller => "directors", :action => "wisest" })
  get("/directors/youngest", {:controller => "directors", :action => "youngest_director" })


  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index" })
end
