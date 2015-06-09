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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150414121220) do

  create_table "agendas", force: :cascade do |t|
    t.string  "title"
    t.string  "color"
    t.integer "user_id"
  end

  create_table "answers", force: :cascade do |t|
    t.text     "body"
    t.integer  "question_id"
    t.datetime "created_at"
    t.integer  "user_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.string  "title"
    t.text    "body"
    t.string  "location"
    t.date    "date"
    t.time    "start_time"
    t.time    "end_time"
    t.integer "agenda_id"
    t.integer "user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.integer  "user_id"
  end

  create_table "test_answers", force: :cascade do |t|
    t.string  "value"
    t.integer "test_question_id"
    t.boolean "correct_answer"
  end

  create_table "test_questions", force: :cascade do |t|
    t.string  "title"
    t.integer "test_id"
    t.integer "correct_answer_id"
  end

  create_table "test_session_answers", force: :cascade do |t|
    t.integer "test_session_id"
    t.integer "test_answer_id"
  end

  create_table "test_session_questions", force: :cascade do |t|
    t.integer "test_session_id"
    t.integer "test_answer_id"
  end

  create_table "test_sessions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "test_id"
    t.integer  "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: :cascade do |t|
    t.string  "title"
    t.text    "body"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "teacher"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
