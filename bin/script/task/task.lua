-- lua script
module (..., package.seeall)

function AcceptTask(role, taskid, ret)
    print("==================================")
    print("Player Name = " .. role:GetName())
    print("AcceptTask taskid = " .. taskid)

    if role:AcceptTask(taskid) then
        ret.value = 0
    	print("AcceptTask ret = " .. ret.value)

    else
        ret.value = -1
    	print("AcceptTask ret = " .. ret.value)
    end

    print("###################################")
end

function FinishTask(role, taskid)
    print("==================================")
    print("Player Name = " .. role:GetName())
    print("FinishTask taskid = " .. taskid)
    print("==================================")
    role:FinishTask(taskid)
end
