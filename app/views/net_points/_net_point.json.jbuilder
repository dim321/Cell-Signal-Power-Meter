json.extract! net_point, :id, :latitude, :longitude, :dbm, :asu, :mcc, :operator_id, :mnc, :net_type, :user_id, :created_at, :updated_at
json.url net_point_url(net_point, format: :json)
