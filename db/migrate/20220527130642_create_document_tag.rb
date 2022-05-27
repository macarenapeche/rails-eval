class CreateDocumentTag < ActiveRecord::Migration[7.0]
  def change
    create_table :documents_tags do |t|

      t.belongs_to :document
      t.belongs_to :tag

      t.timestamps
    end
  end
end
