json.results @users do |user|
    json.name "#{user.profile.real_name}"
    json.value user.id
    json.image user.profile.image_192
end