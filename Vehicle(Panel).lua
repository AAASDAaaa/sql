
local mysql = exports.mysql


local connection = mysql:createConnection("localhost", "username", "password", "database_name")


function showAccountsInChat(player)
    local query = "SELECT * FROM accounts"
    local result = mysql:query(connection, query)
    
    for i, row in ipairs(result) do
        local username = row.username
        local password = row.password

        outputChatBox("Account Info - Username: " .. username .. ", Password: " .. password, player, 255, 0, 0)
    end
end

addCommandHandler("showaccounts", function(player)
    showAccountsInChat(player)
end)
