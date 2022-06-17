json.results @users do |user|
    json.name "#{user.full_name}"
    json.value user.uid
    json.image user.picture
end