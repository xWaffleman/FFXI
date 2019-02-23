include('organizer-lib')

function get_sets()
   mote_include_version = 2
    
    -- Load and initialize the include file.
   include('Mote-Include.lua')	
 
end



function init_gear_sets()

----------------------------------------------------------------------------------------
---------------------             WEAPON SETS                ---------------------------
----------------------------------------------------------------------------------------
	sets.Swords ={
		main="Tanmogayi",
		sub="Colada",
	}
	
	sets.FCSwords={
		main="Iris",
		sub="Vampirism",
	}
	
	sets.BluSkill={
		main="Iris",
		sub="Iris",
	}
	
	sets.Clubs ={
		main="Nibiru Cudgel",
		sub="Nibiru Cudgel",
	}
	
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------

--///////////////////////////////////////////////////////////////////////////////////////

----------------------------------------------------------------------------------------
---------------------             FAST CAST                  ---------------------------
----------------------------------------------------------------------------------------
	
	sets.precast.FC = {}
	
	sets.precast.FC ={
		ammo="Impatiens",
		head="Carmine Mask",
		body="Taeon Tabard",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet="Carmine Greaves",
		neck="Stoicheion Medal",
		waist="Witful Belt",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10',}},
		left_ring="Acumen Ring",
		right_ring="Prolix Ring",
	}
	
	sets.precast.FC.Cleave={
		main={ name="Iris", augments={'DMG:+15','STR+15','Accuracy+15',}},
		sub= { name="Vampirism", augments={'STR+1','DMG:+13',}},
		ammo="Impatiens",
		head="Carmine Mask", 
		body="Taeon Tabard",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet="Carmine Greaves",
		neck="Stoicheion Medal",
		waist="Witful Belt",
		back={ name="Rosmerta's Cape", augments={'"Fast Cast"+10',}},
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Acumen Ring",
		right_ring="Prolix Ring",
	}
	
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------
	
--///////////////////////////////////////////////////////////////////////////////////////

----------------------------------------------------------------------------------------
---------------------             ENGAGED SETS               ---------------------------
----------------------------------------------------------------------------------------	
	
	sets.engaged = {}
	
	sets.engaged = {
		ammo="Ginsen",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','STR+14','Accuracy+10',}},
		neck="Mirage Stole +1",
		waist="Sarissapho. Belt",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring="Rajas Ring",
		right_ring="Petrov Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Magic dmg. taken-10%',}},
	}

	sets.engaged.Acc = {
		ammo="Ginsen",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','STR+14','Accuracy+10',}},
		neck="Mirage Stole +1",
		waist="Kentarch Belt +1",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring="Rajas Ring",
		right_ring="Petrov Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Magic dmg. taken-10%',}},
	}
	
	sets.engaged.DT = {
		ammo="Ginsen",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Ayanmo Corazza +2",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Aya. Cosciales +2",
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','STR+14','Accuracy+10',}},
		neck="Mirage Stole +1",
		waist="Kentarch Belt +1",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring="Gelatinous Ring",
		right_ring="Petrov Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Magic dmg. taken-10%',}},
	}
	
	sets.engaged.CP = set_combine( sets.engaged,{back="Mecisto. Mantle",})
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------
	
--///////////////////////////////////////////////////////////////////////////////////////

----------------------------------------------------------------------------------------
---------------------             WEAPON SKILL               ---------------------------
----------------------------------------------------------------------------------------	
	
	sets.precast.WS = {}
	
	sets.precast.WS['Chant du Cygne'] = {
		left_ear="Mache Earring +1",
		right_ear="Mache Earring +1",
		ammo="Jukukik feather",
		head="Adhemar Bonnet +1",
		neck="Mirage Stole +1",
		body="Herculean Vest",		
		waist="Fotia Belt",
		legs="Samnuha Tights",
		hands="Adhemar Wristbands +1",
		left_ring="Apate Ring",
		right_ring="Petrov Ring",
		feet={ name="Herculean Boots", augments={'Attack+23','Crit. hit damage +4%','DEX+10','Accuracy+15',}},
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	}
	
	sets.precast.WS['Savage Blade'] = {
		ammo="Ginsen",
		head={ name="Herculean Helm", augments={'Accuracy+8','Weapon skill damage +2%','STR+12',}},
		body="Assim. Jubbah +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','STR+14','Accuracy+10',}},
		neck="Mirage Stole +1",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear="Ishvara Earring",
		left_ring="Apate Ring",
		right_ring="Karieyh Ring",
		back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
	sets.precast.WS['Requiescat'] = {
		ammo="Ginsen",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Fotia Gorget",
		waist="Fotia belt",
		left_ear="Brutal Earring",
		right_ear="Ishvara Earring",
		left_ring="Vertigo Ring",
		right_ring="Karieyh Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	}
		
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------
	
--///////////////////////////////////////////////////////////////////////////////////////
	
----------------------------------------------------------------------------------------
---------------------             SPELL SETS                 ---------------------------
----------------------------------------------------------------------------------------	
 	
	sets.midcast['Blue Magic'] = {}
	
	--sets.midcast.FastRecast = sets.precast.FC
		
	sets.midcast['Blue Magic'].BuffSkills = {
		body="Assimilator's Jubbah +2",
		neck="Mirage Stole +1",
		feet="Luhlaza Charuqs",
		hands="Rawhide Gloves",
		ammo="Mavi Tathlum",
	}	
	
	sets.midcast['Blue Magic'].AOESkills = {
		main="Nibiru Cudgel",
		sub="Nibiru Cudgel",
		ammo="Ghastly Tathlum",
		head="Jhakri Coronal +1",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Deviant Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Acumen Ring",
		right_ring="Strendu Ring",
		back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
	
	sets.midcast['Tenebral Crush'] = {
		main="Nibiru Cudgel",
		sub="Nibiru Cudgel",
		ammo="Ghastly Tathlum",
		head="Pixie Hairpin +1", 
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Deviant Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate's earring",
		left_ring="Acumen Ring",
		right_ring="Strendu Ring",
		back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
	
	sets.midcast['Blue Magic'].Physical = {
		ammo="Ginsen",
		head="Adhemar Bonnet +1",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','STR+14','Accuracy+10',}},
		neck="Asperity Necklace",
		waist="Grunfeld Rope",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring="Rajas Ring",
		right_ring="Petrov Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
	}

----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------
	
--///////////////////////////////////////////////////////////////////////////////////////	
		
	
----------------------------------------------------------------------------------------
---------------------             IDLE                 ---------------------------
----------------------------------------------------------------------------------------
	
	sets.idle = {}
	
	sets.idle ={
		head={ name="Rawhide Mask", augments={'HP+28','Accuracy+7','Evasion+12',}},
		body="Jhakri Robe +2",
		back="Mecisto. Mantle",
		legs="Carmine Cuisses +1",
		hands="Adhemar Wristbands +1",
		feet="Herculean boots",
		neck="Asperity Necklace",
		waist="Sarissaphoroi Belt",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring="Rajas Ring",
		right_ring="Petrov Ring",
	}
	
	sets.idle.Craft={
		head="Midras's Helm +1",
		left_ring="Craftkeeper's Ring",
		right_ring="Artificer's Ring",
	}
	
	sets.idle.Cleave={
		ammo="Ginsen",
		head={ name="Rawhide Mask", augments={'HP+28','Accuracy+7','Evasion+12',}},
		body="Assimilator's Jubbah +2",
		hands={ name="Herculean Gloves", augments={'Accuracy+10','Weapon skill damage +2%','DEX+14',}},
		legs="Carmine Cuisses +1",
		feet="Hippomenes Socks",
		neck="Wiglen Gorget",
		waist="Flume Belt",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring="Patricius Ring",
		right_ring="Gelatinous Ring",
		back="Xucau Mantle",
	}
	
	sets.idle.DT = {
		ammo="Ginsen",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands={ name="Herculean Gloves", augments={'Accuracy+10','Weapon skill damage +2%','DEX+14',}},
		legs="Aya. Cosciales +2",
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+2','STR+14','Accuracy+10',}},
		neck="Mirage Stole +1",
		waist="Flume Belt",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring="Patricius Ring",
		right_ring="Vertigo Ring",
		back="Xucau Mantle",
	}
	
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------
	
--///////////////////////////////////////////////////////////////////////////////////////	
	
	sets.capfarm={
		back="Mecisto. Mantle",
		ammo="Ginsen",
		head="Adhemar Bonnet +1",
		body="Ayanmo Corazza +2",
		hands="Adhemar Wristbands +1",
 		legs="Samnuha Tights",
		feet="Herculean boots",
		neck="Asperity Necklace",
		waist="Sarissaphoroi Belt",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring="Rajas Ring",
		right_ring="Petrov Ring",
	}
	
	sets.Hachirin = {waist="Hachirin-no-Obi"}
	
end


texts = require('texts')
displaybox = texts.new('')


function customdisplaysetup()

    local settings = windower.get_windower_settings()
    local x,y = settings["ui_x_res"]-135, 22

    displaybox:pos(x,y)
    displaybox:font('Arial')
    displaybox:size(12)
    displaybox:bold(false)
    displaybox:bg_alpha(0)
    displaybox:right_justified(true)
    displaybox:stroke_width(2)
    displaybox:stroke_transparency(192)

end

function customdisplay(displayStr)
    displaybox:hide()
    displaybox:text(displayStr)
    displaybox:show()
end

function job_setup()

	customdisplaysetup()
	
	blue_magic_maps = {}
	
	blue_magic_maps.BuffSkills = S{
		'Occultation',
		'Frightful Roar',
		'Blank Gaze',
		'Erratic Flutter',
		'Cocoon',
		'Barrier Tusk',
		'Mighty Guard',
		'Battery Charge',
		'Nat. Meditation',
		'Regeneration',	
		'Magic Fruit',
		'Metallic Body',
		'Magic Barrier',
		'White Wind'	
	}
	
	blue_magic_maps.AOESkills = S{
		'Subduction',
		'Spectral Floe',
		'Charged Whisker',
		'Carcharian Verve',
		'Entomb',
		'Anvil Lightning',
		'Tenebral Crush',
		'Magic Hammer',
		'Dream Flower'
	}
	
	blue_magic_maps.Physical = S{
		'Sinker Drill',
		'Thrashing Assault',
		'Heavy Strike',
		'Quad. Continuum',
		'Barbed Crescent',
		'Delta Thrust',
		'Empty Trash',
		'Vanity Dive',
		'Sudden Lunge',
		'Tail Slap',
		'Sickle Slash',
		'Sweeping Gouge'
	}
	
	
end


function job_get_spell_map(spell, default_spell_map)
	if spell.skill == 'Blue Magic' then
        for category,spell_list in pairs(blue_magic_maps) do
            if spell_list:contains(spell.english) then
                return category
            end
        end
    end
end


function user_setup()
    state.OffenseMode:options('Normal', 'Acc', 'DT' ,'CP')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.CastingMode:options('Normal', 'Cleave')
    state.IdleMode:options('Normal','Cleave','DT','Craft')
	state.Cleave = M('Off', 'On')
	state.Diffusion = M(false,"Diff")


	--! = alt  @ = windows    ^ = ctrl
    -- Additional local binds
    send_command('bind ^; gs c cycle IdleMode')
    send_command('bind !` gs c cycle OffenseMode')
    send_command('bind @` gs c cycle CastingMode')
	

	
    select_default_macro_book()
	job_state_change(state.OffenseMode, "Normal", "CP")
end


function user_unload()
    send_command('unbind ^`')
    send_command('unbind !`')
    send_command('unbind @`')
end


function job_status_change(new, old)
end


function job_precast(spell, action, spellMap, eventArgs)
end


function job_post_midcast(spell, action, spellMap, eventArgs)
	if player.status == 'Idle' and spellMap == 'BuffSkills' then
		equip(sets.BluSkill)
	elseif spellMap == 'AOESkills' then
		if(spell.element == world.weather_element or spell.element == world.day_element) then
			equip(sets.Hachirin)
		end
	end
end

function job_aftercast(spell, action, spellMap, eventArgs)
	if state.CastingMode.value ~= 'Cleave' then
		equip(sets.Swords)
	end
end

function select_default_macro_book()
    -- Default macro set/book
	set_macro_page(9, 6)
end

function job_state_change(stateField, newValue, oldValue)
	local stateString
	stateString = "Offensive: "
	stateString = stateString .. state.OffenseMode.value
	stateString = stateString .. "   "
	stateString = stateString .. "Casting: "
	stateString = stateString .. state.CastingMode.value
	stateString = stateString .. "   "
	stateString = stateString .. "Idle: "
	stateString = stateString .. state.IdleMode.value
	customdisplay(stateString)
end

function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end