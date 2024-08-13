class MetaTagService
  def self.defaults
    {
      site: "Music-Tab",
      image: ActionController::Base.helpers.asset_url('metatag.png'),
      description: "Music Tab is a user-friendly application designed to manage song tabs efficiently.",
      og: {
        title: "Music-Tab",
        image: ActionController::Base.helpers.asset_url('metatag.png'),
        description: "Music Tab is a user-friendly application designed to manage song tabs efficiently.",
        site_name: "Music-Tab"
      }
    }
  end
end
