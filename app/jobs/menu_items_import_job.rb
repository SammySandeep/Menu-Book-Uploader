class MenuItemsImportJob < ApplicationJob
  queue_as :default

  def perform(csv_file)
    MenuItem.import(csv_file)
  end
end
