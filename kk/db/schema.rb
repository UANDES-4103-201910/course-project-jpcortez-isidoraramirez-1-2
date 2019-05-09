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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_09_170558) do

  create_table "administrators", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "mail"
    t.string "geoference"
    t.integer "super_admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["super_admin_id"], name: "index_administrators_on_super_admin_id"
  end

  create_table "attachments", force: :cascade do |t|
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_attachments_on_post_id"
  end

  create_table "blacklists", force: :cascade do |t|
    t.integer "super_admin_id"
    t.integer "administrator_id"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_blacklists_on_administrator_id"
    t.index ["super_admin_id"], name: "index_blacklists_on_super_admin_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "dumpsters", force: :cascade do |t|
    t.integer "super_admin_id"
    t.integer "administrator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_dumpsters_on_administrator_id"
    t.index ["super_admin_id"], name: "index_dumpsters_on_super_admin_id"
  end

  create_table "flags", force: :cascade do |t|
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_flags_on_post_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_likes_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "image"
    t.integer "user_id"
    t.integer "dumpster_id"
    t.integer "super_admin_id"
    t.integer "administrator_id"
    t.integer "wall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_posts_on_administrator_id"
    t.index ["dumpster_id"], name: "index_posts_on_dumpster_id"
    t.index ["super_admin_id"], name: "index_posts_on_super_admin_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
    t.index ["wall_id"], name: "index_posts_on_wall_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "bio"
    t.string "country"
    t.string "socation"
    t.string "city"
    t.string "picture"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "super_admins", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "mail"
    t.string "name"
    t.string "password"
    t.integer "blacklist_id"
    t.integer "super_admin_id"
    t.integer "administrator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_users_on_administrator_id"
    t.index ["blacklist_id"], name: "index_users_on_blacklist_id"
    t.index ["super_admin_id"], name: "index_users_on_super_admin_id"
  end

  create_table "walls", force: :cascade do |t|
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_walls_on_profile_id"
  end

end
