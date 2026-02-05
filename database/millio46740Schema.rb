# This file is auto-generated and optimized for Rails standard.
ActiveRecord::Schema[8.0].define(version: 2025_01_01_000000) do
  enable_extension "plpgsql"

  create_table "Paymentaddtional", force: :cascade do |t|
    t.string "additional_payment_id"
    t.string "additonalpaymentstatus_option_paymentadditionalstatus"
    t.decimal "amount"
    t.text "charge_description"
    t.string "charge_title"
    t.bigint "fk_order_custom_order1"
    t.datetime "payment_date"
    t.string "payment_status_option_orderstatus"
    t.string "paymentlink1"
    t.string "paypal_captured_id"
    t.datetime "priority"
    t.datetime "requested_date"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Bannerimage", force: :cascade do |t|
    t.string "image"
    t.integer "index"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Category", force: :cascade do |t|
    t.text "content"
    t.string "image"
    t.string "location_option_envpage"
    t.decimal "sortnumber"
    t.string "title"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Country", force: :cascade do |t|
    t.string "countyname"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Custominterest", force: :cascade do |t|
    t.text "content"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Indexpage_video", force: :cascade do |t|
    t.text "description"
    t.integer "index"
    t.string "link"
    t.string "title"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Interest", force: :cascade do |t|
    t.string "category_option_interestcategoryicon"
    t.text "customcontent"
    t.string "customname"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Loacation", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.decimal "longtitude"
    t.string "role_option_locationcategory"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Log", force: :cascade do |t|
    t.string "actionname"
    t.text "content"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Order", force: :cascade do |t|
    t.decimal "additionalpayfee"
    t.decimal "amount"
    t.bigint "fk_orderitem_custom_orderitem"
    t.bigint "fk_paymentaddionaltransaction_list_custom_additional_harge", array: true, default: []
    t.bigint "fk_paymenttransaction_custom_paymenttransaction"
    t.bigint "fk_user_user"
    t.decimal "initialpayfee"
    t.string "status_option_orderstatus0"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Orderitem", force: :cascade do |t|
    t.bigint "fk_reservationuserregist_custom_reservationuserregist"
    t.bigint "fk_scheduleuserregist_custom_scheduleuserregist"
    t.bigint "fk_user_user"
    t.string "orderitemtype_option_orderitemtypecategory"
    t.string "orderstatus_option_orderstatus0"
    t.string "paymentstatus_option_orderstatus"
    t.string "title"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Paymentmain", force: :cascade do |t|
    t.decimal "amount1"
    t.text "description"
    t.bigint "fk_addtionalpayment_list_custom_additional_harge", array: true, default: []
    t.bigint "fk_order1_custom_order1"
    t.bigint "fk_user1_user"
    t.string "main_payment_id"
    t.string "orderstatus_option_orderstatus"
    t.datetime "payment_date"
    t.string "paymenttitle"
    t.string "paypal_captured_id2"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Reservation", force: :cascade do |t|
    t.string "explain"
    t.integer "index"
    t.text "list_reservationdetail_list", array: true, default: []
    t.string "reservationcategory_option_schedulecategory"
    t.text "reservationdetail"
    t.decimal "servicefee"
    t.string "steptwosubtitle"
    t.string "title"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Reservationschedulebook", force: :cascade do |t|
    t.bigint "fk_reservation_custom_reservation"
    t.string "schedulebooklocation"
    t.string "schedulebookreservationname"
    t.decimal "schedulebookservicefee"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Reservationuserregist", force: :cascade do |t|
    t.decimal "amount"
    t.string "confirmation_number"
    t.bigint "fk_order_custom_order1"
    t.bigint "fk_reservation_custom_reservation"
    t.bigint "fk_reservationuserregistdetail_custom_reservationuserregistdetail"
    t.bigint "fk_userid_user"
    t.string "reservationcategory_option_schedulecategory"
    t.string "statusre_option_reservationstatus"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Reservationuserregistdetail", force: :cascade do |t|
    t.datetime "common_date"
    t.string "common_email"
    t.string "common_location"
    t.string "common_name"
    t.string "common_phonenumber"
    t.string "custom_reservationname"
    t.decimal "numberofpeople"
    t.decimal "reservationamount"
    t.decimal "servicefee"
    t.string "specialrequest"
    t.string "texi__departurelocation"
    t.string "texi__destination"
    t.decimal "texi_amountoflunggage"
    t.string "texi_flightnumber"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Review", force: :cascade do |t|
    t.text "content"
    t.string "country"
    t.string "name"
    t.string "profileimage"
    t.decimal "rating"
    t.string "servicecategory_option_reviewcategory"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Scheduleactivity", force: :cascade do |t|
    t.string "address"
    t.boolean "canbook_boolean"
    t.string "category_option_schedulecategory0"
    t.text "content"
    t.integer "day"
    t.bigint "fk_reservationschedulebook_custom_reservationschedulebook"
    t.integer "index"
    t.float "latitude"
    t.decimal "longtitude"
    t.integer "programindex"
    t.string "title"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Scheduleday", force: :cascade do |t|
    t.string "category_option_schedulecategory0"
    t.datetime "date"
    t.integer "day"
    t.bigint "fk_scheduleactivity_list_custom_schedule_activity", array: true, default: []
    t.string "location"
    t.integer "programindex"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Schedulepermission", force: :cascade do |t|
    t.bigint "fk_scheduleprogram_custom_schedulesample"
    t.bigint "fk_user_user"
    t.string "permission_option_schedulepermission"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Scheduleprogram", force: :cascade do |t|
    t.text "content"
    t.string "duration"
    t.bigint "fk_scedule_day_list_custom_scheduledetail", array: true, default: []
    t.integer "index"
    t.string "locations"
    t.decimal "price"
    t.string "schedulecategory_option_schedulecategory0"
    t.string "subtitle"
    t.string "title"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Scheduleuserregist", force: :cascade do |t|
    t.integer "days"
    t.bigint "fk_scheduleprogram_custom_schedulesample"
    t.bigint "fk_userid_user"
    t.decimal "place"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Signuptmp", force: :cascade do |t|
    t.datetime "atsendverfiycode"
    t.datetime "atverify"
    t.string "email"
    t.datetime "expired"
    t.boolean "is_verify_boolean"
    t.string "token"
    t.string "verfystauts_option_verifystatus"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Video", force: :cascade do |t|
    t.text "description"
    t.integer "index"
    t.string "title"
    t.string "video_url"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.bigint "CreatedBy"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "User", force: :cascade do |t|
    t.string "country"
    t.string "custom_email"
    t.bigint "fk_custominterest_custom_custominterest"
    t.string "id"
    t.string "image"
    t.text "interestlist_list_option_interestcategoryicon", array: true, default: []
    t.string "lineuserid"
    t.string "logintype_option_logincategory"
    t.string "name"
    t.string "own_password"
    t.string "phonenumber"
    t.datetime "CreatedDate"
    t.datetime "ModifiedDate"
    t.string "_id"
    t.string "Slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "Paymentaddtional", "Order", column: "fk_order_custom_order1"
  add_foreign_key "Paymentaddtional", "User", column: "CreatedBy"
  add_foreign_key "Bannerimage", "User", column: "CreatedBy"
  add_foreign_key "Category", "User", column: "CreatedBy"
  add_foreign_key "Country", "User", column: "CreatedBy"
  add_foreign_key "Custominterest", "User", column: "CreatedBy"
  add_foreign_key "Indexpage_video", "User", column: "CreatedBy"
  add_foreign_key "Interest", "User", column: "CreatedBy"
  add_foreign_key "Loacation", "User", column: "CreatedBy"
  add_foreign_key "Log", "User", column: "CreatedBy"
  add_foreign_key "Order", "Orderitem", column: "fk_orderitem_custom_orderitem"
  add_foreign_key "Order", "Paymentmain", column: "fk_paymenttransaction_custom_paymenttransaction"
  add_foreign_key "Order", "User", column: "fk_user_user"
  add_foreign_key "Order", "User", column: "CreatedBy"
  add_foreign_key "Orderitem", "Reservationuserregist", column: "fk_reservationuserregist_custom_reservationuserregist"
  add_foreign_key "Orderitem", "Scheduleuserregist", column: "fk_scheduleuserregist_custom_scheduleuserregist"
  add_foreign_key "Orderitem", "User", column: "fk_user_user"
  add_foreign_key "Orderitem", "User", column: "CreatedBy"
  add_foreign_key "Paymentmain", "Order", column: "fk_order1_custom_order1"
  add_foreign_key "Paymentmain", "User", column: "fk_user1_user"
  add_foreign_key "Paymentmain", "User", column: "CreatedBy"
  add_foreign_key "Reservation", "User", column: "CreatedBy"
  add_foreign_key "Reservationschedulebook", "Reservation", column: "fk_reservation_custom_reservation"
  add_foreign_key "Reservationschedulebook", "User", column: "CreatedBy"
  add_foreign_key "Reservationuserregist", "Order", column: "fk_order_custom_order1"
  add_foreign_key "Reservationuserregist", "Reservation", column: "fk_reservation_custom_reservation"
  add_foreign_key "Reservationuserregist", "Reservationuserregistdetail", column: "fk_reservationuserregistdetail_custom_reservationuserregistdetail"
  add_foreign_key "Reservationuserregist", "User", column: "fk_userid_user"
  add_foreign_key "Reservationuserregist", "User", column: "CreatedBy"
  add_foreign_key "Reservationuserregistdetail", "User", column: "CreatedBy"
  add_foreign_key "Review", "User", column: "CreatedBy"
  add_foreign_key "Scheduleactivity", "Reservationschedulebook", column: "fk_reservationschedulebook_custom_reservationschedulebook"
  add_foreign_key "Scheduleactivity", "User", column: "CreatedBy"
  add_foreign_key "Scheduleday", "User", column: "CreatedBy"
  add_foreign_key "Schedulepermission", "Scheduleprogram", column: "fk_scheduleprogram_custom_schedulesample"
  add_foreign_key "Schedulepermission", "User", column: "fk_user_user"
  add_foreign_key "Schedulepermission", "User", column: "CreatedBy"
  add_foreign_key "Scheduleprogram", "User", column: "CreatedBy"
  add_foreign_key "Scheduleuserregist", "Scheduleprogram", column: "fk_scheduleprogram_custom_schedulesample"
  add_foreign_key "Scheduleuserregist", "User", column: "fk_userid_user"
  add_foreign_key "Scheduleuserregist", "User", column: "CreatedBy"
  add_foreign_key "Signuptmp", "User", column: "CreatedBy"
  add_foreign_key "Video", "User", column: "CreatedBy"
  add_foreign_key "User", "Custominterest", column: "fk_custominterest_custom_custominterest"
end
