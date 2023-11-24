---@param content string | number
---@param options? table
local function notify(content, options)
    SendNUIMessage({
        action = "notify",
        payload = {
            content = content,
            options = {
                type = options?.type,
                position = options?.position,
                autoClose = options?.autoClose,
                hideProgressBar = options?.hideProgressBar,
                theme = options?.theme,
            }
        }
    })
end

RegisterCommand('notify', function()
    notify('This is a test notification')
end, false)
