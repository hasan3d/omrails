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

ActiveRecord::Schema.define(version: 20151109213022) do

  create_table "columns_priv", id: false, force: :cascade do |t|
    t.string   "Host",        limit: 60, default: "", null: false
    t.string   "Db",          limit: 64, default: "", null: false
    t.string   "User",        limit: 16, default: "", null: false
    t.string   "Table_name",  limit: 64, default: "", null: false
    t.string   "Column_name", limit: 64, default: "", null: false
    t.datetime "Timestamp",                           null: false
    t.date     "Column_priv", limit: 0,               null: false
  end

  create_table "db", id: false, force: :cascade do |t|
    t.string "Host",                  limit: 60, default: "",  null: false
    t.string "Db",                    limit: 64, default: "",  null: false
    t.string "User",                  limit: 16, default: "",  null: false
    t.string "Select_priv",           limit: 1,  default: "N", null: false
    t.string "Insert_priv",           limit: 1,  default: "N", null: false
    t.string "Update_priv",           limit: 1,  default: "N", null: false
    t.string "Delete_priv",           limit: 1,  default: "N", null: false
    t.string "Create_priv",           limit: 1,  default: "N", null: false
    t.string "Drop_priv",             limit: 1,  default: "N", null: false
    t.string "Grant_priv",            limit: 1,  default: "N", null: false
    t.string "References_priv",       limit: 1,  default: "N", null: false
    t.string "Index_priv",            limit: 1,  default: "N", null: false
    t.string "Alter_priv",            limit: 1,  default: "N", null: false
    t.string "Create_tmp_table_priv", limit: 1,  default: "N", null: false
    t.string "Lock_tables_priv",      limit: 1,  default: "N", null: false
    t.string "Create_view_priv",      limit: 1,  default: "N", null: false
    t.string "Show_view_priv",        limit: 1,  default: "N", null: false
    t.string "Create_routine_priv",   limit: 1,  default: "N", null: false
    t.string "Alter_routine_priv",    limit: 1,  default: "N", null: false
    t.string "Execute_priv",          limit: 1,  default: "N", null: false
    t.string "Event_priv",            limit: 1,  default: "N", null: false
    t.string "Trigger_priv",          limit: 1,  default: "N", null: false
  end

  add_index "db", ["User"], name: "User", using: :btree

  create_table "event", id: false, force: :cascade do |t|
    t.string   "db",                   limit: 64,         default: "",        null: false
    t.string   "name",                 limit: 64,         default: "",        null: false
    t.binary   "body",                 limit: 4294967295,                     null: false
    t.string   "definer",              limit: 77,         default: "",        null: false
    t.datetime "execute_at"
    t.integer  "interval_value",       limit: 4
    t.string   "interval_field",       limit: 18
    t.datetime "created",                                                     null: false
    t.datetime "modified",                                                    null: false
    t.datetime "last_executed"
    t.datetime "starts"
    t.datetime "ends"
    t.string   "status",               limit: 18,         default: "ENABLED", null: false
    t.string   "on_completion",        limit: 8,          default: "DROP",    null: false
    t.float    "sql_mode",             limit: 0,                              null: false
    t.string   "comment",              limit: 64,         default: "",        null: false
    t.integer  "originator",           limit: 4,                              null: false
    t.string   "time_zone",            limit: 64,         default: "SYSTEM",  null: false
    t.string   "character_set_client", limit: 32
    t.string   "collation_connection", limit: 32
    t.string   "db_collation",         limit: 32
    t.binary   "body_utf8",            limit: 4294967295
  end

  create_table "func", primary_key: "name", force: :cascade do |t|
    t.boolean "ret",              default: false, null: false
    t.string  "dl",   limit: 128, default: "",    null: false
    t.string  "type", limit: 9,                   null: false
  end

  create_table "general_log", id: false, force: :cascade do |t|
    t.datetime "event_time",                    null: false
    t.text     "user_host",    limit: 16777215, null: false
    t.integer  "thread_id",    limit: 4,        null: false
    t.integer  "server_id",    limit: 4,        null: false
    t.string   "command_type", limit: 64,       null: false
    t.text     "argument",     limit: 16777215, null: false
  end

  create_table "help_category", primary_key: "help_category_id", force: :cascade do |t|
    t.string  "name",               limit: 64,    null: false
    t.integer "parent_category_id", limit: 2
    t.text    "url",                limit: 65535, null: false
  end

  add_index "help_category", ["name"], name: "name", unique: true, using: :btree

  create_table "help_keyword", primary_key: "help_keyword_id", force: :cascade do |t|
    t.string "name", limit: 64, null: false
  end

  add_index "help_keyword", ["name"], name: "name", unique: true, using: :btree

  create_table "help_relation", id: false, force: :cascade do |t|
    t.integer "help_topic_id",   limit: 4, null: false
    t.integer "help_keyword_id", limit: 4, null: false
  end

  create_table "help_topic", primary_key: "help_topic_id", force: :cascade do |t|
    t.string  "name",             limit: 64,    null: false
    t.integer "help_category_id", limit: 2,     null: false
    t.text    "description",      limit: 65535, null: false
    t.text    "example",          limit: 65535, null: false
    t.text    "url",              limit: 65535, null: false
  end

  add_index "help_topic", ["name"], name: "name", unique: true, using: :btree

  create_table "host", id: false, force: :cascade do |t|
    t.string "Host",                  limit: 60, default: "",  null: false
    t.string "Db",                    limit: 64, default: "",  null: false
    t.string "Select_priv",           limit: 1,  default: "N", null: false
    t.string "Insert_priv",           limit: 1,  default: "N", null: false
    t.string "Update_priv",           limit: 1,  default: "N", null: false
    t.string "Delete_priv",           limit: 1,  default: "N", null: false
    t.string "Create_priv",           limit: 1,  default: "N", null: false
    t.string "Drop_priv",             limit: 1,  default: "N", null: false
    t.string "Grant_priv",            limit: 1,  default: "N", null: false
    t.string "References_priv",       limit: 1,  default: "N", null: false
    t.string "Index_priv",            limit: 1,  default: "N", null: false
    t.string "Alter_priv",            limit: 1,  default: "N", null: false
    t.string "Create_tmp_table_priv", limit: 1,  default: "N", null: false
    t.string "Lock_tables_priv",      limit: 1,  default: "N", null: false
    t.string "Create_view_priv",      limit: 1,  default: "N", null: false
    t.string "Show_view_priv",        limit: 1,  default: "N", null: false
    t.string "Create_routine_priv",   limit: 1,  default: "N", null: false
    t.string "Alter_routine_priv",    limit: 1,  default: "N", null: false
    t.string "Execute_priv",          limit: 1,  default: "N", null: false
    t.string "Trigger_priv",          limit: 1,  default: "N", null: false
  end

  create_table "ndb_binlog_index", primary_key: "epoch", force: :cascade do |t|
    t.integer "Position",  limit: 8,   null: false
    t.string  "File",      limit: 255, null: false
    t.integer "inserts",   limit: 8,   null: false
    t.integer "updates",   limit: 8,   null: false
    t.integer "deletes",   limit: 8,   null: false
    t.integer "schemaops", limit: 8,   null: false
  end

  create_table "pins", force: :cascade do |t|
    t.string   "description",        limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id",            limit: 4
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  add_index "pins", ["user_id"], name: "index_pins_on_user_id", using: :btree

  create_table "plugin", primary_key: "name", force: :cascade do |t|
    t.string "dl", limit: 128, default: "", null: false
  end

  create_table "proc", id: false, force: :cascade do |t|
    t.string   "db",                   limit: 64,         default: "",             null: false
    t.string   "name",                 limit: 64,         default: "",             null: false
    t.string   "type",                 limit: 9,                                   null: false
    t.string   "specific_name",        limit: 64,         default: "",             null: false
    t.string   "language",             limit: 3,          default: "SQL",          null: false
    t.string   "sql_data_access",      limit: 17,         default: "CONTAINS_SQL", null: false
    t.string   "is_deterministic",     limit: 3,          default: "NO",           null: false
    t.string   "security_type",        limit: 7,          default: "DEFINER",      null: false
    t.binary   "param_list",           limit: 65535,                               null: false
    t.binary   "returns",              limit: 4294967295,                          null: false
    t.binary   "body",                 limit: 4294967295,                          null: false
    t.string   "definer",              limit: 77,         default: "",             null: false
    t.datetime "created",                                                          null: false
    t.datetime "modified",                                                         null: false
    t.float    "sql_mode",             limit: 0,                                   null: false
    t.text     "comment",              limit: 65535,                               null: false
    t.string   "character_set_client", limit: 32
    t.string   "collation_connection", limit: 32
    t.string   "db_collation",         limit: 32
    t.binary   "body_utf8",            limit: 4294967295
  end

  create_table "procs_priv", id: false, force: :cascade do |t|
    t.string   "Host",         limit: 60, default: "", null: false
    t.string   "Db",           limit: 64, default: "", null: false
    t.string   "User",         limit: 16, default: "", null: false
    t.string   "Routine_name", limit: 64, default: "", null: false
    t.string   "Routine_type", limit: 9,               null: false
    t.string   "Grantor",      limit: 77, default: "", null: false
    t.string   "Proc_priv",    limit: 0,  default: "", null: false
    t.datetime "Timestamp",                            null: false
  end

  add_index "procs_priv", ["Grantor"], name: "Grantor", using: :btree

  create_table "proxies_priv", id: false, force: :cascade do |t|
    t.string   "Host",         limit: 60, default: "",    null: false
    t.string   "User",         limit: 16, default: "",    null: false
    t.string   "Proxied_host", limit: 60, default: "",    null: false
    t.string   "Proxied_user", limit: 16, default: "",    null: false
    t.boolean  "With_grant",              default: false, null: false
    t.string   "Grantor",      limit: 77, default: "",    null: false
    t.datetime "Timestamp",                               null: false
  end

  add_index "proxies_priv", ["Grantor"], name: "Grantor", using: :btree

  create_table "servers", primary_key: "Server_name", force: :cascade do |t|
    t.string  "Host",     limit: 64, default: "", null: false
    t.string  "Db",       limit: 64, default: "", null: false
    t.string  "Username", limit: 64, default: "", null: false
    t.string  "Password", limit: 64, default: "", null: false
    t.integer "Port",     limit: 4,  default: 0,  null: false
    t.string  "Socket",   limit: 64, default: "", null: false
    t.string  "Wrapper",  limit: 64, default: "", null: false
    t.string  "Owner",    limit: 64, default: "", null: false
  end

  create_table "slow_log", id: false, force: :cascade do |t|
    t.datetime "start_time",                      null: false
    t.text     "user_host",      limit: 16777215, null: false
    t.time     "query_time",                      null: false
    t.time     "lock_time",                       null: false
    t.integer  "rows_sent",      limit: 4,        null: false
    t.integer  "rows_examined",  limit: 4,        null: false
    t.string   "db",             limit: 512,      null: false
    t.integer  "last_insert_id", limit: 4,        null: false
    t.integer  "insert_id",      limit: 4,        null: false
    t.integer  "server_id",      limit: 4,        null: false
    t.text     "sql_text",       limit: 16777215, null: false
  end

  create_table "tables_priv", id: false, force: :cascade do |t|
    t.string   "Host",        limit: 60, default: "", null: false
    t.string   "Db",          limit: 64, default: "", null: false
    t.string   "User",        limit: 16, default: "", null: false
    t.string   "Table_name",  limit: 64, default: "", null: false
    t.string   "Grantor",     limit: 77, default: "", null: false
    t.datetime "Timestamp",                           null: false
    t.date     "Table_priv",  limit: 0,               null: false
    t.date     "Column_priv", limit: 0,               null: false
  end

  add_index "tables_priv", ["Grantor"], name: "Grantor", using: :btree

  create_table "time_zone", primary_key: "Time_zone_id", force: :cascade do |t|
    t.string "Use_leap_seconds", limit: 1, default: "N", null: false
  end

  create_table "time_zone_leap_second", primary_key: "Transition_time", force: :cascade do |t|
    t.integer "Correction", limit: 4, null: false
  end

  create_table "time_zone_name", primary_key: "Name", force: :cascade do |t|
    t.integer "Time_zone_id", limit: 4, null: false
  end

  create_table "time_zone_transition", id: false, force: :cascade do |t|
    t.integer "Time_zone_id",       limit: 4, null: false
    t.integer "Transition_time",    limit: 8, null: false
    t.integer "Transition_type_id", limit: 4, null: false
  end

  create_table "time_zone_transition_type", id: false, force: :cascade do |t|
    t.integer "Time_zone_id",       limit: 4,              null: false
    t.integer "Transition_type_id", limit: 4,              null: false
    t.integer "Offset",             limit: 4, default: 0,  null: false
    t.integer "Is_DST",             limit: 1, default: 0,  null: false
    t.string  "Abbreviation",       limit: 8, default: "", null: false
  end

  create_table "user", id: false, force: :cascade do |t|
    t.string  "Host",                   limit: 60,    default: "",  null: false
    t.string  "User",                   limit: 16,    default: "",  null: false
    t.string  "Password",               limit: 41,    default: "",  null: false
    t.string  "Select_priv",            limit: 1,     default: "N", null: false
    t.string  "Insert_priv",            limit: 1,     default: "N", null: false
    t.string  "Update_priv",            limit: 1,     default: "N", null: false
    t.string  "Delete_priv",            limit: 1,     default: "N", null: false
    t.string  "Create_priv",            limit: 1,     default: "N", null: false
    t.string  "Drop_priv",              limit: 1,     default: "N", null: false
    t.string  "Reload_priv",            limit: 1,     default: "N", null: false
    t.string  "Shutdown_priv",          limit: 1,     default: "N", null: false
    t.string  "Process_priv",           limit: 1,     default: "N", null: false
    t.string  "File_priv",              limit: 1,     default: "N", null: false
    t.string  "Grant_priv",             limit: 1,     default: "N", null: false
    t.string  "References_priv",        limit: 1,     default: "N", null: false
    t.string  "Index_priv",             limit: 1,     default: "N", null: false
    t.string  "Alter_priv",             limit: 1,     default: "N", null: false
    t.string  "Show_db_priv",           limit: 1,     default: "N", null: false
    t.string  "Super_priv",             limit: 1,     default: "N", null: false
    t.string  "Create_tmp_table_priv",  limit: 1,     default: "N", null: false
    t.string  "Lock_tables_priv",       limit: 1,     default: "N", null: false
    t.string  "Execute_priv",           limit: 1,     default: "N", null: false
    t.string  "Repl_slave_priv",        limit: 1,     default: "N", null: false
    t.string  "Repl_client_priv",       limit: 1,     default: "N", null: false
    t.string  "Create_view_priv",       limit: 1,     default: "N", null: false
    t.string  "Show_view_priv",         limit: 1,     default: "N", null: false
    t.string  "Create_routine_priv",    limit: 1,     default: "N", null: false
    t.string  "Alter_routine_priv",     limit: 1,     default: "N", null: false
    t.string  "Create_user_priv",       limit: 1,     default: "N", null: false
    t.string  "Event_priv",             limit: 1,     default: "N", null: false
    t.string  "Trigger_priv",           limit: 1,     default: "N", null: false
    t.string  "Create_tablespace_priv", limit: 1,     default: "N", null: false
    t.string  "ssl_type",               limit: 9,     default: "",  null: false
    t.binary  "ssl_cipher",             limit: 65535,               null: false
    t.binary  "x509_issuer",            limit: 65535,               null: false
    t.binary  "x509_subject",           limit: 65535,               null: false
    t.integer "max_questions",          limit: 4,     default: 0,   null: false
    t.integer "max_updates",            limit: 4,     default: 0,   null: false
    t.integer "max_connections",        limit: 4,     default: 0,   null: false
    t.integer "max_user_connections",   limit: 4,     default: 0,   null: false
    t.string  "plugin",                 limit: 64,    default: ""
    t.text    "authentication_string",  limit: 65535
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id",   limit: 4
    t.string   "votable_type", limit: 255
    t.integer  "voter_id",     limit: 4
    t.string   "voter_type",   limit: 255
    t.boolean  "vote_flag"
    t.string   "vote_scope",   limit: 255
    t.integer  "vote_weight",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
