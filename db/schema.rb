# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141005100457) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "announcements", :force => true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "file"
    t.text     "content"
    t.boolean  "publish"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "assets", :force => true do |t|
    t.string   "storage_uid"
    t.string   "storage_name"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "storage_width"
    t.integer  "storage_height"
    t.float    "storage_aspect_ratio"
    t.integer  "storage_depth"
    t.string   "storage_format"
    t.string   "storage_mime_type"
    t.string   "storage_size"
  end

  create_table "clerks", :force => true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "officer"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "councillors", :force => true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "officer"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "file"
    t.boolean  "publish"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "event_images", :force => true do |t|
    t.string   "image"
    t.integer  "event_id"
    t.datetime "updated_at"
    t.datetime "created_at"
    t.integer  "product_id"
  end

  add_index "event_images", ["product_id"], :name => "index_event_images_on_product_id"

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "cover"
    t.text     "content"
    t.boolean  "publish"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "manager_hierarchies", :id => false, :force => true do |t|
    t.integer "ancestor_id",   :null => false
    t.integer "descendant_id", :null => false
    t.integer "generations",   :null => false
  end

  add_index "manager_hierarchies", ["ancestor_id", "descendant_id", "generations"], :name => "manager_anc_desc_udx", :unique => true
  add_index "manager_hierarchies", ["descendant_id"], :name => "manager_desc_idx"

  create_table "managers", :force => true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "officer"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "person1s", :force => true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "officer"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "person2s", :force => true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "officer"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "person3s", :force => true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "officer"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "person4s", :force => true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "officer"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "person5s", :force => true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "officer"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "personnels", :force => true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "officer"
    t.datetime "updated_at"
    t.datetime "created_at"
    t.string   "type"
  end

  create_table "settings", :force => true do |t|
    t.string   "slide1"
    t.string   "slide2"
    t.string   "slide3"
    t.string   "content"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

end
