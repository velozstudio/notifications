---@param content string | number
---@param options? table
local function notify(content, options)
    SendNUIMessage({
        action = "notify",
        payload = {
            content = content,
            options = {
                type = options?.type,                                -- success | error | warning | info | default (default)
                position = options?.position,                        -- bottom-left | bottom-center | bottom-right | top-left | bottom-center | bottom-right (default)
                autoClose = options?.autoClose,
                hideProgressBar = not options?.progressBar or false, -- true | false (default)
                theme = options?.theme or 'dark',                    -- dark | light (default)
                closeButton = options?.closeButton or false          -- fasle | true (default)
            }
        }
    })
end

RegisterNetEvent('veloz:notifications:client:notify', function(content, options)
    notify(content, options)
end)

-- RegisterCommand('dev_notify', function()
--     notify('This is a default notification')
--     notify('This is a success notification', { type = 'success' })
--     notify('This is a error notification', { type = 'error' })
--     notify('This is a warn notification', { type = 'warning' })
--     notify('This is a info notification', { type = 'info' })
--     notify('This is a info notification on the bottom left', { position = 'bottom-left' })
--     notify('This is a info notification on the bottom center', { position = 'bottom-center' })
--     notify('This is a info notification on the bottom right', { position = 'bottom-right' })
--     notify('This is a info notification on the top left', { position = 'top-left' })
--     notify('This is a info notification on the top center', { position = 'top-center' })
--     notify('This is a info notification on the top right', { position = 'top-right' })
--     notify('This is a notification with progress bar', { progressBar = true })
--     notify('This is a notification without progress bar', { progressBar = false })
--     notify('This is a light theme notification', { theme = 'light' })
-- end, false)
-- RegisterKeyMapping('dev_notify', 'Testing', 'keyboard', 'E')
