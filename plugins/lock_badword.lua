local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['antifosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['antifosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
        send_large_msg(chat, 'ÈÏáíá ÚÏã ˜ÓÈ ÊÑÈíÊ ÕÍíÍ ÇÒ Ñæå ÇÎÑÇÌ ÔÏíÏ')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "˜Ó(.*)",
    "˜æä(.*)",
    "˜íÑ(.*)",
    "ããå(.*)",
    "Ó˜Ó(.*)",
    "Óí˜ÊíÑ(.*)",
    "ŞåÈå(.*)",
    "ÈÓí˜(.*)",
    "ÈíäÇãæÓ(.*)",
    "ÇæÈí(.*)",
    "˜æäí(.*)",
    "ÈíÔÑİ(.*)",
    "˜Ó ääå(.*)",
    "ÓÇ˜(.*)",
    "˜íÑí(.*)",
    "ÎÇÑ ˜æÓå(.*)",
    "ääå(.*)",
    "ÎæÇåÑÊæ(.*)",
    "Ó˜Óí(.*)",
    "˜Ó˜Ô(.*)",
    "Óí˜ ÊíÑ(.*)",
    "ÇííÏã(.*)",
    "ãíÇã(.*)",
    "ãíÇãÊ(.*)",
    "ÈÓí˜(.*)",
    "ÎæÇåÑÊ(.*)",
    "ÎÇÑÊæ(.*)",
    "˜æäÊ(.*)",
    "˜æÓÊ(.*)",
    "ÔæÑÊ(.*)",
    "Ó(.*)",
    "˜íÑí(.*)",
    "ÏÒÏ(.*)",
    "ääÊ(.*)",
    "ÇÈãæ(.*)",
    "ÌŞ(.*)",
	"kir(.*)",
	"kos(.*)",
	"koon(.*)",
  },
  run = run
}