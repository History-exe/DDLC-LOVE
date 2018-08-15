function event_draw_2()
	if event_type == 'm_glitch1' then
		love.graphics.draw(bgch)
		love.graphics.draw(ml,100)
	end
	
	if event_type == 'n_glitch1' then
		love.graphics.draw(bgch)
		drawMonika(m_Set.a,m_Set.b)
		drawYuri(y_Set.a,y_Set.b)
		love.graphics.draw(nl,200,n_Set.y)
	end
	
	if event_type == 'm_onlayer_front' then
		love.graphics.draw(bgch)
		drawYuri(y_Set.a,y_Set.b)
		drawNatsuki(n_Set.a,n_Set.b)
	end
	
	if event_type == 'n_rects_ghost' then
		love.graphics.draw(bgch)
		love.graphics.setColor(0,0,0)
		love.graphics.rectangle('fill',math.random(262,272),math.random(100,110),math.random(18,28),math.random(18,28))
		love.graphics.rectangle('fill',math.random(262,272),math.random(100,110),math.random(18,28),math.random(18,28))
		love.graphics.rectangle('fill',math.random(220,230),math.random(127,137),math.random(15,25),math.random(15,25))
		love.graphics.rectangle('fill',math.random(220,230),math.random(127,137),math.random(15,25),math.random(15,25))
		love.graphics.rectangle('fill',math.random(247,257),math.random(140,150),math.random(15,25),math.random(10,20))
		love.graphics.rectangle('fill',math.random(247,257),math.random(140,150),math.random(15,25),math.random(10,20))
		textbox_enabled = true
	end
	
	if event_type == 'n_blackeyes' then
		love.graphics.draw(bgch)
		if event_timer > 2 then
			love.graphics.draw(n_blackeyes, 80)
		else
			drawNatsuki(n_Set.a,n_Set.b)
		end
	end
	
	if event_type == 'ny_argument' then
		love.graphics.draw(bgch)
		drawYuri(y_Set.a,y_Set.b)
		drawNatsuki(n_Set.a,n_Set.b)
		if eventvar3 and eventvar4 then
			if event_timer > eventvar3[eventvar5] and event_timer < eventvar4[eventvar5] then
				love.graphics.draw(vignette)
			end
		end
		love.graphics.setColor(255,255,255,eventvar1)
		love.graphics.draw(vignette)
		love.graphics.setColor(255,255,255,eventvar2)
		drawanimframe()
	end
	
	if event_type == 'ny_argument2' then
		drawanimframe()
		if cl <= 1008 and ml then
			love.graphics.draw(ml)
		end
	end
	
	if event_type == 'yuri_glitch' then
		love.graphics.draw(bgch)
		drawMonika(m_Set.a,m_Set.b)
		drawanimframe(80)
	end
	
	if event_type == 'show_vignette' then
		love.graphics.draw(bgch)
		love.graphics.draw(vignette)
	elseif event_type == 'yuri_eyes' then
		love.graphics.draw(bgch)
		if eyes1 then love.graphics.draw(eyes1,-13) end
		if eyes2 then love.graphics.draw(eyes2,eventvar2,eventvar3) end
		if cl <= 701 then
			love.graphics.setColor(32,0,0,192)
		else
			love.graphics.setColor(0,0,0,192)
		end
		love.graphics.rectangle('fill',0,0,400,240)
		love.graphics.setColor(255,255,255)
		if poem_enabled then drawPoem()	end
	end
	
	if event_type == 'faint_effect' then
		love.graphics.setColor(255,255,255,alpha)
		if bgch then love.graphics.draw(bgch) end
		drawNatsuki(n_Set.a,n_Set.b)
		drawYuri(y_Set.a,y_Set.b)
		drawMonika(m_Set.a,m_Set.b)
		love.graphics.setColor(128,0,0,eventvar1)
		love.graphics.rectangle('fill',0,0,400,240)
	end
	
	if event_type == 'yuri_glitch_head' then
		if eventvar1 == 2 then
			drawanimframe(220,10)
		else
			drawanimframe(180)
		end
	end
	
	if event_type == 'show_darkred' then
		love.graphics.setColor(255,255,255,alpha)
		love.graphics.draw(bgch)
		drawYuri(y_Set.a,y_Set.b)
		love.graphics.setColor(32,0,0,eventvar2)
		love.graphics.rectangle('fill',0,0,400,240)
		if eventvar4 == 'show_noise' then
			love.graphics.setColor(255,255,255,eventvar2/8)
			drawanimframe()
		end
		love.graphics.setColor(255,255,255,alpha)
		drawMonika(m_Set.a,m_Set.b)
	end
	
	if event_type == 'yuri_ch23' then
		if event_timer >= 5.5 then
			love.graphics.draw(bg_glitch)
			drawanimframe(80)
		elseif event_timer >= 4.5 then
			love.graphics.draw(bgch)
			love.graphics.draw(eyes1,-13)
		end
	end
	
	if event_type == 'yuri_ch23_2' then
		love.graphics.draw(bgch,eventvar1)
		drawYuri(y_Set.a,y_Set.b)
		love.graphics.setColor(0,0,0,128+(eventvar1*4))
		love.graphics.rectangle('fill',0,0,400,240)
	end
	
	if event_type == 'm_ch23ex' then
		love.graphics.setColor(255,255,255,255)
		if event_timer > 1 then
			love.graphics.draw(ex3top)
		end
		if event_timer > 4 then
			drawMonika(m_Set.a,m_Set.b)
		end
	end
	
	if event_type == 'natsuki_ch22' then
		love.graphics.draw(bgch)
		if cl < 726 then
			drawNatsuki(n_Set.a,n_Set.b)
			if cl < 725 then
				love.graphics.setColor(255,255,255,eventvar3)
				love.graphics.draw(ghost_blood,80)
				love.graphics.setColor(0,0,0,eventvar2)
				love.graphics.rectangle('fill',math.random(176,180),math.random(80,84),math.random(6,10),math.random(6,10))
				love.graphics.rectangle('fill',math.random(176,180),math.random(80,84),math.random(6,10),math.random(6,10))
				love.graphics.rectangle('fill',math.random(196,200),math.random(80,84),math.random(6,10),math.random(6,10))
				love.graphics.rectangle('fill',math.random(196,200),math.random(80,84),math.random(6,10),math.random(6,10))
				love.graphics.rectangle('fill',math.random(186,190),math.random(100,104),math.random(5,9),math.random(5,9))
				love.graphics.rectangle('fill',math.random(186,190),math.random(100,104),math.random(5,9),math.random(5,9))
			end
		end
		love.graphics.setColor(32,0,0,eventvar1)
		love.graphics.rectangle('fill',0,0,400,240)
		love.graphics.setColor(255,255,255)
		if cl == 726 then
			if event_timer < 1 then
				love.graphics.draw(nl,80)
			elseif event_timer < 1.5 then
				love.graphics.draw(ghost3,80)
			elseif event_timer < 1.5625 then
				love.graphics.draw(ghost3_1,80)
			elseif event_timer < 1.625 then
				love.graphics.draw(ghost3_2,80)
			elseif event_timer < 1.6875 then
				love.graphics.draw(ghost3_3,80)
			end
		end
	end
	
	if event_type == 'yuri_kill' then
		if event_timer < 9.5 then
			love.graphics.draw(bgch)
			if event_timer < 1.43 then
				drawYuri(y_Set.a,y_Set.b)
			else
				love.graphics.draw(eventvar1,80,eventvar2)
			end
		end
	end
end

function event_update_2(dt)
	--m_glitch
	if event_type == 'm_glitch1' then
		if event_timer > 0.8 then
			event_end('next')
		end
		posX = -40
		posY = 0
	end
	
	if event_type == 'n_glitch1' then
		n_Set.y = math.max(n_Set.y - 7, 0)
		if n_Set.y <= 0 then
			n_Set.y = 50
		end
		if event_timer >= 0.75 then
			event_end('next')
		end
	end
	
	if event_type == 'n_blackeyes' then
		if event_timer > 2.75 then
			event_end('n_blackeyes')
		elseif event_timer > 2 and event_timer < 2.03 then
			xaload = 0
			sfxplay('stab')
		end
	end
	
	if event_type == 'ny_argument' then
		eventvar1 = math.min(eventvar1 + 0.15, 255)
		if cl == 1000 then
			eventvar2 = 60
		elseif cl == 1001 then
			eventvar2 = 80
		elseif cl == 1002 then
			eventvar2 = 100
		elseif cl == 1003 then
			eventvar2 = 120
		elseif cl == 1004 then
			eventvar2 = 140
		elseif cl == 1005 then
			eventvar2 = 160
		elseif cl == 1006 then
			eventvar2 = 180
		elseif event_timer > 36 then
			eventvar2 = 40
		elseif event_timer > 26 then
			eventvar2 = 32
		elseif event_timer > 22 then
			eventvar2 = 16
		elseif event_timer > 18 then
			eventvar2 = 8
		end
		if event_timer > eventvar4[eventvar5] and event_timer < 26.2 then
			eventvar5 = eventvar5 + 1
		end
	end
	
	if event_type == 'yuri_glitch' and event_timer > 0.5 then event_end('next') end
	
	if event_type == 'yuri_eyes' then
		eventvar1 = eventvar1 + dt
		if eventvar1 >= 2 then
			eventvar1 = 0
			eventvar2 = math.random(-14,-12)
			eventvar3 = math.random(0,1)
		end
		if eventvar2 > -12 then eventvar2 = math.random(-14,-12) end
		if cl >= 1439 then
			if xaload > 125 and cl == 1442 then
				event_end('yuri_eyes')
			elseif xaload > 125 then
				textbox_enabled = true
			else
				textbox_enabled = false
			end
		elseif cl >= 700 then textbox_enabled = true
		end
	end
	
	if event_type == 'faint_effect' then
		if cl == 1456 then
			alpha = math.max(alpha - 5, 1)
			eventvar1 = math.max(eventvar1 - 2.25, 1)
			audioUpdate('0')
		elseif cl > 1456 then
			alpha = 255
			event_end()
			audioUpdate('3')
		end
	end
	
	if event_type == 'yuri_glitch_head' then
		if unitimer < uniduration then event_timer = 0 end
		if eventvar1 == 2 and cl == 1560 and event_timer <= 1.3 then
			if event_timer >= 0.5 and event_timer <= 0.53 then
				xaload = 0
				sfxplay('stab')
			elseif event_timer >= 1.25 then
				event_end('next')
			end
		end
	end
	
	if event_type == 'show_darkred' then
		if cl > 1000 then
			eventvar2 = math.min(eventvar2 + 0.1, 128)
		else
			eventvar2 = 192
		end
	end
	
	if event_type == 'yuri_ch23' and textbox_enabled == false then
		if event_timer >= 5.5 then 
			textbox_enabled = true
			newgame_keypressed('a')
		end
	end
	
	if event_type == 'yuri_ch23_2' then
		eventvar3 = eventvar3 + dt
		if eventvar3 >= math.random(0.5,2) then
			eventvar1 = math.random(-1,1)
			eventvar3 = 0
		end
		if cl == 1764 then eventvar2 = 6.375
		elseif cl == 1768 then eventvar2 = 9.5625
		elseif cl == 1769 then eventvar2 = 12.75
		elseif cl == 1770 then eventvar2 = 15.9375
		elseif cl == 1771 then eventvar2 = 19.125
		elseif cl == 1772 then eventvar2 = 22.3125
		elseif cl == 1773 then eventvar2 = 25.5
		elseif cl == 1774 then eventvar2 = 28.6875
		elseif cl == 1775 then eventvar2 = 31.875
		elseif cl == 1776 then eventvar2 = 38.25
		elseif cl == 1777 then eventvar2 = 44.625
		elseif cl == 1778 then eventvar2 = 51
		elseif cl == 1779 then eventvar2 = 57.375
		elseif cl == 1780 then eventvar2 = 63.75
		elseif cl == 1781 then eventvar2 = 70.125
		elseif cl == 1782 then eventvar2 = 76.5
		elseif cl == 1783 then eventvar2 = 82.875
		elseif cl == 1784 then eventvar2 = 89.25
		elseif cl == 1785 then eventvar2 = 95.625
		elseif cl == 1786 then eventvar2 = 102
		elseif cl == 1787 then eventvar2 = 108.375
		elseif cl == 1788 then eventvar2 = 114.75
		elseif cl == 1789 then eventvar2 = 121.125
		elseif cl == 1790 then eventvar2 = 127.5
		elseif cl == 1791 then eventvar2 = 133.875
		elseif cl == 1792 then eventvar2 = 141
		elseif cl == 1793 then eventvar2 = 147
		elseif cl == 1794 then eventvar2 = 155
		elseif cl == 1795 then eventvar2 = 160
		elseif cl == 1796 then eventvar2 = 172
		elseif cl == 1797 then eventvar2 = 185
		elseif cl == 1798 then eventvar2 = 198
		elseif cl == 1799 then eventvar2 = 210
		elseif cl == 1800 then eventvar2 = 223
		elseif cl == 1801 then eventvar2 = 235
		elseif cl == 1802 then eventvar2 = 255
		end
	end
	
	if event_type == 'm_ch23ex' and textbox_enabled == false then
		if event_timer >= 4 then 
			textbox_enabled = true
			newgame_keypressed('a')
		end
	end
	
	if event_type == 'natsuki_ch22' then
		eventvar1 = math.min(eventvar1 + 0.1, 128)
		eventvar2 = math.min(eventvar2 + 0.05, 192)
		if cl == 726 and textbox_enabled then
			event_timer = 0
			textbox_enabled = false
		elseif cl == 726 and event_timer > 1 and event_timer < 1.02 then
			xaload = 0
			sfxplay('crack')
		elseif cl == 726 and event_timer > 1.5 and event_timer < 1.52 then
			xaload = 0
			sfxplay('run')
		elseif cl == 726 and event_timer > 1.75 then
			event_end('natsuki_ch22')
		elseif cl >= 716 then
			eventvar3 = math.min(eventvar3 + 0.2, 255)
		end
	end
	
	if event_type == 'yuri_kill' then
		if event_timer > 2.18 and event_timer <= 3.43 then
			eventvar1 = stab2
		elseif event_timer > 3.43 and event_timer <= 4.18 then
			eventvar1 = stab3
		elseif event_timer > 4.18 and event_timer <= 5.43 then
			eventvar1 = stab4
		elseif event_timer > 5.43 and event_timer <= 6.13 then
			eventvar1 = stab5
		elseif event_timer > 6.13 and event_timer <= 9 then
			eventvar1 = stab6f
		elseif event_timer > 9 and event_timer <= 12 then
			eventvar3 = eventvar3 * 1.25
			eventvar2 = eventvar2 + eventvar3
			eventvar1 = stab6
		elseif event_timer > 12 then
			event_end('yuri_kill')
		end
	end
end