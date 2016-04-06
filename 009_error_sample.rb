
begin
  puts '行くよー'

  begin
    puts '1弾nestした中で例外飛ばすよー'
    raise ApiError.new(Settings[:invalid_params], 'user_id is invalid.')
  rescue

  end


rescue
  puts '1段目のrescue入ってきたよー'
ensure
  puts '1段目のensure入ってきたよー'
end
