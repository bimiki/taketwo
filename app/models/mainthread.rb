class Mainthread < ApplicationRecord

  after_create_commit { broadcast_prepend_to "mainthreads" }
  after_update_commit { broadcast_replace_to "mainthreads" }
  after_destroy_commit { broadcast_remove_to "mainthreads" }

end
