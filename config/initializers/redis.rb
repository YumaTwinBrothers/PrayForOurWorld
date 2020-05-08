# $redis = Redis.new(url: ENV["REDIS_URL"]) if Rails.env.production?
REDIS = Redis.new(host: ENV.fetch("REDIS_HOST") { "cache" }, port: ENV.fetch("REDIS_PORT") { "6379" }, db: ENV.fetch("REDIS_DB") { "0" })
