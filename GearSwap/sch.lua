include('organizer-lib')

function get_sets()
   
   mote_include_version = 2
    -- Load and initialize the include file.
   include('Mote-Include.lua')	
   include('sch_Gear.lua')
   
end

----------------------------------------------------------------------------------------
---------------------             		Variables            ---------------------------
----------------------------------------------------------------------------------------

Buff = 
    {
        ['Ebullience'] = false, 
        ['Rapture'] = false, 
        ['Perpetuance'] = false,
        ['Immanence'] = false,
        ['Penury'] = false,
        ['Parsimony'] = false,
        ['Celerity'] = false,
        ['Alacrity'] = false,
        ['Klimaform'] = false,
        ['Sublimation: Activated'] = false
    }

function init_gear_sets()
end

eleWheel = {'Fire', 'Ice', 'Air', 'Earth','Lightning','Water'}
eleID = 0
displaybox = ''
myValues = {'Off', 'Normal',eleWheel[eleID+1],eleWheel[((eleID-1) % 6)+1], eleWheel[((eleID+1) % 6) +1]}
nukes = {}
nukes.I = {['Earth']="Stone",      ['Water']="Water",      ['Air']="Aero",     ['Fire']="Fire",    ['Ice']="Blizzard",     ['Lightning']="Thunder", ['Light']="Thunder", ['Dark']="Blizzard"}
nukes.II = {['Earth']="Stone II",   ['Water']="Water II",   ['Air']="Aero II",  ['Fire']="Fire II", ['Ice']="Blizzard II",  ['Lightning']="Thunder II", ['Light']="Thunder II", ['Dark']="Blizzard II"}
nukes.III = {['Earth']="Stone III",  ['Water']="Water III",  ['Air']="Aero III", ['Fire']="Fire III",['Ice']="Blizzard III", ['Lightning']="Thunder III", ['Light']="Thunder III", ['Dark']="Blizzard III"}
nukes.IV = {['Earth']="Stone IV",   ['Water']="Water IV",   ['Air']="Aero IV",  ['Fire']="Fire IV", ['Ice']="Blizzard IV",  ['Lightning']="Thunder IV", ['Light']="Thunder IV", ['Dark']="Blizzard IV"}
nukes.V = {['Earth']="Stone V",    ['Water']="Water V",    ['Air']="Aero V",   ['Fire']="Fire V",  ['Ice']="Blizzard V",   ['Lightning']="Thunder V", ['Light']="Thunder V", ['Dark']="Blizzard V"}
nukes.VI = {['Earth']="Stone VI",    ['Water']="Water VI",    ['Air']="Aero VI",   ['Fire']="Fire VI",  ['Ice']="Blizzard VI",   ['Lightning']="Thunder VI", ['Light']="Thunder VI", ['Dark']="Blizzard V"}


function job_setup()
	displaybox = setupDefaultBox({'Burst', 'Idle','Element', 'Weak','Strong'})
	updateDisplay(myValues,displaybox, 1)
end



function job_get_spell_map(spell, default_spell_map)
end


function user_setup()
	
    state.OffenseMode:options('Normal')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal', 'Burst')
    state.IdleMode:options('Normal','Combat')
	


	--! = alt  @ = windows    ^ = ctrl
    -- Additional local binds
    send_command('bind ^; gs c cycle IdleMode')
    send_command('bind !` gs c cycle OffenseMode')
    send_command('bind @` gs c cycle CastingMode')
	send_command('bind delete gs c nuke left')
	send_command('bind pagedown gs c nuke right')

	
    select_default_macro_book()
	job_state_change(state.OffenseMode, "Normal")
end


function user_unload()
    send_command('unbind ^`')
    send_command('unbind !`')
    send_command('unbind @`')
	send_command('unbind delete')
	send_command('unbind pagedown')
end


function job_status_change(new, old)
	
end

function job_buff_change(buff, gain)
	-- for key, value in pairs(Buff) do
		-- print(tostring(key) .. ' : ' .. tostring(value))
	-- end 
	isFound = findBuff(buff)
	if(isFound) then
		Buff[buff] = not Buff[buff]
	end
end

function findBuff(buff)
	return Buff[buff] ~= nil
end


function job_precast(spell, action, spellMap, eventArgs)
end

function job_post_precast(spell, action, spellMap, eventArgs)
	
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	--Handles Hachirin
	if(spell.skill == 'Elemental Magic') then
		if(spell.element == world.weather_element or spell.element == world.day_element) then
			equip(sets.Hachirin)
			if(Buff['Klimaform'] == true) then 
				equip(sets.buff['Klimaform'])
			end
		end
	end
	if(spell.skill == 'Enhancing Magic' and Buff['Perpetuance'] == true) then
		equip(sets.buff['Perpetuance'])
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)	

end

function select_default_macro_book()
    -- Default macro set/book
	set_macro_page(1, 13)
end


function checkBurst()
	if skillchain == 'None' then
		equip(sets.midcast.Norm)
	elseif skillchain_elements[skillchain]:contains(sElement) then
		equip(sets.midcast.MB)
	else
		equip(sets.midcast.Norm)
	end
end

sElement = 'None'
skillchain = 'None'
function job_self_command(cmdParams, eventArgs)   
	if cmdParams[1]:lower() == 'skillchain' then
		skillchain = cmdParams[2]
	end
	if cmdParams[1]:lower() == 'nuke' then
		local param = cmdParams[2]:lower()
		if param == 'right' then
			eleID = (eleID + 1) % 6
			updateDisplay(getDisplayValues(),displaybox, 1)
		elseif param == 'left' then
			eleID = (eleID - 1) % 6
			updateDisplay(getDisplayValues(),displaybox, 1)
		else
			param = param:upper()
			windower.add_to_chat(211, 'Casting the spell ' .. nukes[param][eleWheel[eleID+1]])
			send_command('@input /ma "'..nukes[param][eleWheel[eleID+1]]..'"')			
		end
	end
end


function job_state_change(stateField, newValue, oldValue)
	updateDisplay(getDisplayValues(),displaybox, 1)
end

function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end


function getDisplayValues()
	local burst = TogColor['Off'].. 'Off'
	if(state.CastingMode.value == 'Burst') then
		burst = TogColor['On']..'On'
	end
	local myValues = {burst, state.IdleMode.value,Colors[eleWheel[eleID+1]]..eleWheel[eleID+1],
	Colors[eleWheel[((eleID-1) % 6)+1]]..eleWheel[((eleID-1) % 6)+1], Colors[eleWheel[((eleID+1) % 6) +1]]..eleWheel[((eleID+1) % 6) +1]}	
	return myValues
end
	