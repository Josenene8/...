function onEvent(name, value1, value2)
	if name == '2_StageChange' then
        if value1 == 'Cup1.5' then -- Starts the transition to Cupheads Night
			doTweenAlpha('CupheadStage2_Dark_Background', 'CupheadStage2_Dark_Background', 0.5, 11,'linear')
			doTweenAlpha('CupheadStage2_Dark_Back', 'CupheadStage2_Dark_Back', 0.3, 11,'linear')
			doTweenAlpha('CupheadStage2_Dark_Front', 'CupheadStage2_Dark_Front', 0.3, 11,'linear')


        elseif value1 == 'Cup2' then -- Cuphead Night
	        triggerEvent('Change Character', 'dad', 'cuphead_angry')
            triggerEvent('Change Character', 'bf', 'bf_cuphead_2')

            triggerEvent('1_Whoosh', '1', '');

			doTweenAlpha('CupheadStage2_Dark_Background', 'CupheadStage2_Dark_Background', 1, 0.01,'linear')
			doTweenAlpha('CupheadStage2_Dark_Back', 'CupheadStage2_Dark_Back', 1, 0.01,'linear')
			doTweenAlpha('CupheadStage2_Dark_Front', 'CupheadStage2_Dark_Front', 1, 0.01,'linear')

			removeLuaSprite('CupheadStage1_Background')
			removeLuaSprite('CupheadStage1_Back')
			removeLuaSprite('CupheadStage1_Front')
            removeLuaSprite('Cuphead_Grain', true);
            removeLuaSprite('Cupheah_Filter', true);

            addLuaSprite('CupheadStage2_Rain1', true);
            addLuaSprite('CupheadStage2_Rain2', true);


        elseif value1 == 'San1' then -- Sans's Hallway
	        triggerEvent('Change Character', 'dad', 'sans_normal')
            triggerEvent('Change Character', 'bf', 'bf_sans_1')

            triggerEvent('1_Whoosh', '2', '');

            removeLuaSprite('Cuphead_Grain', true);
			removeLuaSprite('Cupheah_Filter', true);
			removeLuaSprite('CupheadStage2_Dark_Background', true)
			removeLuaSprite('CupheadStage2_Dark_Back', true)
			removeLuaSprite('CupheadStage2_Dark_Front', true)
            removeLuaSprite('CupheadStage2_BfGhost1', true)
			removeLuaSprite('CupheadStage2_BfGhost2', true)
            removeLuaSprite('CupheadStage2_Rain1', true)
			removeLuaSprite('CupheadStage2_Rain2', true)

	        addLuaSprite('SansStage1_Back', false);
	        addLuaSprite('SansStage1_Front', false);


        -- Pre add Sans3 Stage
            doTweenAlpha('SansStage4_BackFrame1', 'SansStage4_BackFrame1', 0, 0.01,'linear')
            doTweenAlpha('SansStage4_BackFrame2', 'SansStage4_BackFrame2', 0, 0.01,'linear')
            doTweenAlpha('SansStage3_Back', 'SansStage3_Back', 0, 0.01,'linear')
            doTweenAlpha('SansStage4_Front', 'SansStage4_Front', 0, 0.01,'linear')
        -- So it doesn't lag as much


        elseif value1 == 'San1.5' then -- Sans's serious 
	        triggerEvent('Change Character', 'dad', 'sans_angry')

            -- Pre add Sans3 Stage
                addLuaSprite('SansStage4_BackFrame1', false);
                addLuaSprite('SansStage4_BackFrame2', false);
                addLuaSprite('SansStage3_Back', false);  
                addLuaSprite('SansStage4_Front', false);
            -- So it doesn't lag as much

        elseif value1 == 'San2' then -- The undertale black bg
	        triggerEvent('Change Character', 'dad', 'sans_attack')
            triggerEvent('Change Character', 'bf', 'bf_sans_2')

            triggerEvent('1_Whoosh', '1', '');

            removeLuaSprite('SansStage1_Back', true)
			removeLuaSprite('SansStage1_Front', true)

            -- Pre add Bendy stage 1
                doTweenAlpha('BendyStage1_Background', 'BendyStage1_Background', 0, 0.01,'linear')
                doTweenAlpha('BendyStage1_Boi', 'BendyStage1_Boi', 0, 0.01,'linear')
                doTweenAlpha('BendyStage1_Back', 'BendyStage1_Back', 0, 0.01,'linear')
                addLuaSprite('BendyStage1_Background', false);
                addLuaSprite('BendyStage1_Boi', false);
                addLuaSprite('BendyStage1_Back', false);
            -- So it doesn't lag as much


        elseif value1 == 'San3' then -- Sans's Snow Stage with Cuphead
	        triggerEvent('Change Character', 'dad', 'sans_snow')
            triggerEvent('Change Character', 'bf', 'bf_sans_3')
            triggerEvent('Change Character', 'gf', 'cuphead_angry')

            triggerEvent('1_Whoosh', '3', '');

            doTweenAlpha('SansStage4_BackFrame1', 'SansStage4_BackFrame1', 1, 0.01,'linear')
            doTweenAlpha('SansStage4_BackFrame2', 'SansStage4_BackFrame2', 1, 0.01,'linear')
            doTweenAlpha('SansStage3_Back', 'SansStage3_Back', 1, 0.01,'linear')
            doTweenAlpha('SansStage4_Front', 'SansStage4_Front', 1, 0.01,'linear')
            addLuaSprite('SansStage3_Papyrus', false);
            addLuaSprite('SansStage3_Gf', false);
            addLuaSprite('SansStage3_Mugman', false);


        elseif value1 == 'San4' then -- Makes Bf have Guitar, also does stuff to make the solo stuff possible
            triggerEvent('Change Character', 'bf', 'bf_sans_4')

            doTweenAlpha('SansStage4_BackFrame2', 'SansStage4_BackFrame2', 1, 0.01,'linear')
            doTweenAlpha('SansStage4_BackFrame1', 'SansStage4_BackFrame1', 1, 0.01,'linear')

            doTweenAlpha('SansStage4_Front', 'SansStage4_Front', 1, 0.01,'linear')

            removeLuaSprite('SansStage3_Front', true)
			removeLuaSprite('SansStage3_Back', true)

            -- Pre add Final Stage
                addLuaSprite('Final_Stars1', false);
                addLuaSprite('Final_Stars2', false);
                addLuaSprite('Final_Stars3', false);
                addLuaSprite('Final_Stars4', false)
            -- So it doesn't lag as much

        elseif value1 == 'Ben1' then -- Bendy's normal Stage
	        triggerEvent('Change Character', 'dad', 'bendy_normal')
            triggerEvent('Change Character', 'bf', 'bf_bendy_1')
            triggerEvent('Change Character', 'gf', 'nothing')
          
            triggerEvent('1_Whoosh', '2', '');

            removeLuaSprite('SansStage4_BackFrame1', true);
            removeLuaSprite('SansStage4_BackFrame2', true);
            removeLuaSprite('SansStage3_Back', true);
            removeLuaSprite('SansStage3_Front', true);
            removeLuaSprite('SansStage4_Front', true);
            removeLuaSprite('SansStage3_Papyrus', true);
            removeLuaSprite('SansStage3_Gf', true);
            removeLuaSprite('SansStage3_Mugman', true);

            doTweenAlpha('BendyStage1_Background', 'BendyStage1_Background', 1, 0.01,'linear')
            doTweenAlpha('BendyStage1_Boi', 'BendyStage1_Boi', 1, 0.01,'linear')
            doTweenAlpha('BendyStage1_Chains2', 'BendyStage1_Chains2', 1, 0.01,'linear')
            doTweenAlpha('BendyStage1_Back', 'BendyStage1_Back', 1, 0.01,'linear')

            addLuaSprite('BendyStage1_Front', false);
            addLuaSprite('BendyStage1_Chains1', true);
            addLuaSprite('BendyStage1_Sammy', false)
            addLuaSprite('BendyStage1_Chains3', true);
            addLuaSprite('BendyStage1_Pillar', true);

            addLuaSprite('BendyBlackScreen', false)

        elseif value1 == 'Ben2' then -- Bendy's run Stage
	        triggerEvent('Change Character', 'dad', 'bendy_run')
            triggerEvent('Change Character', 'bf', 'bf_bendy_2')

            triggerEvent('1_Whoosh', 'Dark', '');

            doTweenAlpha('BendyStage2_Back','BendyStage2_Back', 1, 1.6, 'linear')
            addLuaSprite('BendyStage2_Back', false);

            -- Pre add Final Stage
                addLuaSprite('Final_Base2',false)
                addLuaSprite('Final_Base1',false) 
            -- So it doesn't lag as much

        elseif value1 == 'Ben3' then -- Bendy's run Stage but dark...
	        triggerEvent('Change Character', 'dad', 'bendy_run_dark')
            triggerEvent('Change Character', 'bf', 'bf_bendy_3')

            triggerEvent('1_Whoosh', 'Dark2', '');

            doTweenAlpha('BendyStage3_Back','BendyStage3_Back', 1, 1.6, 'linear')
            addLuaSprite('BendyStage3_Back', false);

            -- Pre add Final Stage
                addLuaSprite('Final_Stars5', true);
                addLuaSprite('Final_Stars6', true);
            -- So it doesn't lag as much

        elseif value1 == 'Ben2.5' then -- Removes all Sprites from Bendy's Stage1, for better performance
                                       -- Why not in "Ben2"? Transition isn't at the same time as the removal, so yeah...
            removeLuaSprite('BendyStage1_Background', true);
            removeLuaSprite('BendyStage1_Boi', true);
            removeLuaSprite('BendyStage1_Chains2', true);
            removeLuaSprite('BendyStage1_Back', true);
            removeLuaSprite('BendyStage1_Front', true);
            removeLuaSprite('BendyStage1_Chains1', true);
            removeLuaSprite('BendyStage1_Sammy', true);
            removeLuaSprite('BendyStage1_Chains3', true);
            removeLuaSprite('BendyStage1_Pillar', true);

        elseif value1 == 'Final' then -- Makes the final stage 
	        triggerEvent('Change Character', 'dad', 'final_cuphead')
            triggerEvent('Change Character', 'bf', 'bf_cuphead_1')
            triggerEvent('1_Whoosh', 'DarkRemove', '');

            removeLuaSprite('BendyStage2_Back', true);
            removeLuaSprite('BendyStage3_Back', true);
            removeLuaSprite('BendyBlackScreen', true);
            removeLuaSprite('BendyStage_Transition', true);

            doTweenAlpha('Final_Bendy_Tween','Final_Bendy', 1, 0.01, 'linear')
			doTweenAlpha('Final_Sans_Tween','Final_Sans', 1, 0.01, 'linear')
			doTweenAlpha('Final_Sans2_Tween','Final_Sans_front', 0, 0.01, 'linear')

            doTweenAlpha('Final_Base2', 'Final_Base2', 1, 0.01,'linear')
            doTweenAlpha('Final_Base1', 'Final_Base1', 1, 0.01,'linear')
            doTweenAlpha('Final_Stars1', 'Final_Stars1', 1, 0.01,'linear')
            doTweenAlpha('Final_Stars2', 'Final_Stars2', 1, 0.01,'linear')
            doTweenAlpha('Final_Stars3', 'Final_Stars3', 1, 0.01,'linear')
            doTweenAlpha('Final_Stars4', 'Final_Stars4', 1, 0.01,'linear')
            doTweenAlpha('Final_Stars5', 'Final_Stars5', 1, 0.01,'linear')
            doTweenAlpha('Final_Stars6', 'Final_Stars6', 1, 0.01,'linear')

            addLuaSprite('Final_Bendy', false);
            addLuaSprite('Final_Sans', false);
            addLuaSprite('Final_Sans_front', true);
            addLuaSprite('Final_Cuphead', false);
            addLuaSprite('Final_Cuphead_front', true);
        
        end
    end
end

function onCreate()
	makeLuaSprite('BendyBlackScreen', 'BendyBlackScreen', 0, 0);
    setObjectCamera('BendyBlackScreen', 'camHUD')

    doTweenAlpha('Final_Stars1', 'Final_Stars1', 0, 0.01,'linear')
    doTweenAlpha('Final_Stars2', 'Final_Stars2', 0, 0.01,'linear')
    doTweenAlpha('Final_Stars3', 'Final_Stars3', 0, 0.01,'linear')
    doTweenAlpha('Final_Stars4', 'Final_Stars4', 0, 0.01,'linear')
    doTweenAlpha('Final_Base2', 'Final_Base2', 0, 0.01,'linear')
    doTweenAlpha('Final_Base1', 'Final_Base1', 0, 0.01,'linear')
    doTweenAlpha('Final_Stars5', 'Final_Stars5', 0, 0.01,'linear')
    doTweenAlpha('Final_Stars6', 'Final_Stars6', 0, 0.01,'linear')
end

function onUpdate()
    songPos = getSongPosition()
	local BendyBlackScreenAlpha = (songPos/500)*(curBpm/200)
	doTweenAlpha('BendyBlackScreen', 'BendyBlackScreen' , (math.sin(BendyBlackScreenAlpha)*0.25) + 0.25, 0.05, 'linear');
end
