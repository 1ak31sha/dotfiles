#!/usr/bin/env ruby
require 'rest-client'
(1000*1000).times.each do
  headers = {
    'Cookie' => 'jive.security.context="I41rUQFC4ziG+3Q8+LdDcAAAAAAEvg+ENwn4e41WSJ05M+caK43r1aiGhwgbai517I9Iz8kAAX/GRvqNhQVnN8qlkFc="; Version=1; Path=/; HttpOnly;HttpOnly'
  }
  url = 'https://thehub.thomsonreuters.com/videos/85040'
  RestClient.get url, headers
end

