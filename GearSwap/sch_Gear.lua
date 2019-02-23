	sets.Hachirin = {waist="Hachirin-no-Obi"}
	sets.buff['Perpetuance'] = {hands="Arbatel Bracers",
		back="Lugh's Cape",
	}
    sets.buff['Immanence'] = {hands="Arbatel Bracers"}
	sets.buff['Klimaform'] = {feet="Arbatel Loafers +1"}

----------------------------------------------------------------------------------------
---------------------             WEAPON SETS                ---------------------------
----------------------------------------------------------------------------------------

	
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------

--///////////////////////////////////////////////////////////////////////////////////////

----------------------------------------------------------------------------------------
---------------------             FAST CAST                  ---------------------------
----------------------------------------------------------------------------------------
	
	sets.precast.FC = {}
	
	sets.precast.FC ={
		ammo="Ghastly Tathlum",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+4','"Fast Cast"+4',}},
		body="Anhur Robe",
		hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+7','MND+8','"Mag.Atk.Bns."+6',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Merlinic Crackows", augments={'"Fast Cast"+5','CHR+3',}},
		neck="Stoicheion Medal",
		waist="Witful Belt",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Prolix Ring",
		right_ring="Gelatinous Ring",
		back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
	}
	
	
	
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------
	
--///////////////////////////////////////////////////////////////////////////////////////

----------------------------------------------------------------------------------------
---------------------             ENGAGED SETS               ---------------------------
----------------------------------------------------------------------------------------	
	
	sets.engaged = {}
	
	
	
	sets.engaged.CP = set_combine( sets.engaged,{back="Mecisto. Mantle",})
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------
	
--///////////////////////////////////////////////////////////////////////////////////////

----------------------------------------------------------------------------------------
---------------------             WEAPON SKILL               ---------------------------
----------------------------------------------------------------------------------------	
	
	sets.precast.WS['Myrkr'] = {
		ammo="Ghastly Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands="Arbatel Bracers",
		legs="Gyve Trousers",
		feet="Arbatel Loafers +1",
		neck="Mizu. Kubikazari",
		waist="Refoccilation Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Prolix Ring",
		right_ring="Gelatinous Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','INT+1','Accuracy+2','DEF+3',}},
	}
	
	
		
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------
	
--///////////////////////////////////////////////////////////////////////////////////////
	
----------------------------------------------------------------------------------------
---------------------             SPELL SETS                 ---------------------------
----------------------------------------------------------------------------------------	
	
	
	sets.midcast.Normal = {
		ammo="Ghastly Tathlum",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+4 "Mag.Atk.Bns."+4','Magic burst dmg.+10%','INT+2','Mag. Acc.+12','"Mag.Atk.Bns."+15',}},
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Mizu. Kubikazari",
		waist="Refoccilation Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Acumen Ring",
		right_ring="Strendu Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','INT+1','Accuracy+2','DEF+3',}},
	}
	
	sets.midcast.Burst = {
		ammo="Impatiens",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+4','"Fast Cast"+4',}},
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+15','Magic burst dmg.+10%','INT+9',}},
		neck="Mizu. Kubikazari",
		waist="Refoccilation Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Jhakri Ring",
		right_ring="Mujin Band",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','INT+1','Accuracy+2','DEF+3',}},
	}
	
	sets.midcast['Drain'] ={
		ammo="Ghastly Tathlum",
		head="Pixie Hairpin +1",
		body="Jhakri Robe +2",
		hands="Amalric Gages +1",
		legs="Jhakri Slops +2",
		feet={name="Merlinic Crackows", augments={'INT+9','"Mag.Atk.Bns."+15','Magic burst dmg.+10%',}},
		neck="Stoicheion Medal",
		waist="Refoccilation Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Acumen Ring",
		right_ring="Strendu Ring",
	}
	
	sets.midcast['Aspir'] = sets.midcast.Drain
	
	sets.midcast['Enfeebling Magic'] = {
		ammo="Ghastly Tathlum",
		head="Jhakri Coronal +1",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet="Jhakri Pigaches +2",
		neck="Mizu. Kubikazari",
		waist="Refoccilation Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Jhakri Ring",
		right_ring="Strendu Ring",
	}
	
	sets.midcast['Dark Magic'] = {
		ammo="Ghastly Tathlum",
		head="Jhakri Coronal +1",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Mizu. Kubikazari",
		waist="Refoccilation Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Jhakri Ring",
		right_ring="Strendu Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','INT+1','Accuracy+2','DEF+3',}},
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
		ammo="Ghastly Tathlum",
		head="Chironic Hat",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Gyve Trousers",
		feet="Herald's Gaiters",
		neck="Mizu. Kubikazari",
		waist="Refoccilation Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Acumen Ring",
		right_ring="Warp Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','INT+1','Accuracy+2','DEF+3',}},
	}
	
	sets.idle.Combat ={
		ammo="Ghastly Tathlum",
		head="Chironic Hat",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Gyve Trousers",
		feet="Herald's Gaiters",
		neck="Mizu. Kubikazari",
		waist="Refoccilation Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Patricius Ring",
		right_ring="Gelatinous Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','INT+1','Accuracy+2','DEF+3',}},
	}

	


	
----------------------------------------------------------------------------------------
---------------------             		END	                 ---------------------------
----------------------------------------------------------------------------------------
	
--///////////////////////////////////////////////////////////////////////////////////////	