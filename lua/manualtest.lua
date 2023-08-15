
local ss = [[
Item Class: Staves
Rarity: Rare
Grim Call
Quarterstaff
--------
Staff
Physical Damage: 51-86
Critical Strike Chance: 6.00%
Attacks per Second: 1.30
Weapon Range: 13
--------
Requirements:
Level: 45
Str: 78
Int: 78
--------
Sockets: B-R-B B 
--------
Item Level: 86
--------
+18% Chance to Block Attack Damage while wielding a Staff (implicit)
--------
Adds 27 to 51 Chaos Damage to Spells
44% increased Cast Speed
65% increased Critical Strike Chance for Spells
+2 to Level of all Cold Spell Skill Gems
25% chance to Freeze
--------
Note: ~price 2 divine
]]


--print(table_print (testItemForDisplay(ss)))
loadBuildFromXML([[<?xml version="1.0" encoding="UTF-8"?>
<PathOfBuilding>
	<Build level="100" targetVersion="3_0" pantheonMajorGod="None" bandit="None" className="Ranger" ascendClassName="Deadeye" characterLevelAutoMode="false" mainSocketGroup="4" viewMode="TREE" pantheonMinorGod="None">
		<PlayerStat stat="AverageDamage" value="132983.12323318"/>
		<PlayerStat stat="AverageBurstDamage" value="132983.12323318"/>
		<PlayerStat stat="Speed" value="4.36914"/>
		<PlayerStat stat="PreEffectiveCritChance" value="79.373"/>
		<PlayerStat stat="CritChance" value="59.52975"/>
		<PlayerStat stat="CritMultiplier" value="5.12"/>
		<PlayerStat stat="HitChance" value="75"/>
		<PlayerStat stat="TotalDPS" value="581021.883043"/>
		<PlayerStat stat="TotalDot" value="0"/>
		<PlayerStat stat="WithBleedDPS" value="581021.883043"/>
		<PlayerStat stat="IgniteDPS" value="4398.64555306"/>
		<PlayerStat stat="WithIgniteDPS" value="585420.52859606"/>
		<PlayerStat stat="WithPoisonDPS" value="581021.883043"/>
		<PlayerStat stat="TotalDotDPS" value="4398.64555306"/>
		<PlayerStat stat="CullingDPS" value="0"/>
		<PlayerStat stat="ReservationDPS" value="0"/>
		<PlayerStat stat="CombinedDPS" value="585420.52859606"/>
		<PlayerStat stat="AreaOfEffectRadius" value="18"/>
		<PlayerStat stat="ManaCost" value="21"/>
		<PlayerStat stat="ManaPercentCost" value="0"/>
		<PlayerStat stat="ManaPerSecondCost" value="91.75194"/>
		<PlayerStat stat="ManaPercentPerSecondCost" value="0"/>
		<PlayerStat stat="LifeCost" value="0"/>
		<PlayerStat stat="LifePercentCost" value="0"/>
		<PlayerStat stat="LifePerSecondCost" value="0"/>
		<PlayerStat stat="LifePercentPerSecondCost" value="0"/>
		<PlayerStat stat="ESCost" value="0"/>
		<PlayerStat stat="ESPerSecondCost" value="0"/>
		<PlayerStat stat="ESPercentPerSecondCost" value="0"/>
		<PlayerStat stat="RageCost" value="0"/>
		<PlayerStat stat="SoulCost" value="0"/>
		<PlayerStat stat="Str" value="122"/>
		<PlayerStat stat="ReqStr" value="98"/>
		<PlayerStat stat="Dex" value="297"/>
		<PlayerStat stat="ReqDex" value="212"/>
		<PlayerStat stat="Int" value="114"/>
		<PlayerStat stat="ReqInt" value="114"/>
		<PlayerStat stat="Devotion" value="0"/>
		<PlayerStat stat="TotalEHP" value="18060.872300054"/>
		<PlayerStat stat="PhysicalMaximumHitTaken" value="4704"/>
		<PlayerStat stat="LightningMaximumHitTaken" value="16275"/>
		<PlayerStat stat="FireMaximumHitTaken" value="16275"/>
		<PlayerStat stat="ColdMaximumHitTaken" value="13403"/>
		<PlayerStat stat="ChaosMaximumHitTaken" value="6361"/>
		<PlayerStat stat="Life" value="3241"/>
		<PlayerStat stat="Spec:LifeInc" value="96"/>
		<PlayerStat stat="LifeUnreserved" value="3241"/>
		<PlayerStat stat="LifeRecoverable" value="3241"/>
		<PlayerStat stat="LifeUnreservedPercent" value="100"/>
		<PlayerStat stat="LifeRegenRecovery" value="357.3"/>
		<PlayerStat stat="LifeLeechGainRate" value="812.04275"/>
		<PlayerStat stat="Mana" value="981"/>
		<PlayerStat stat="Spec:ManaInc" value="36"/>
		<PlayerStat stat="ManaUnreserved" value="143"/>
		<PlayerStat stat="ManaUnreservedPercent" value="14.576962283384"/>
		<PlayerStat stat="ManaRegenRecovery" value="27.5"/>
		<PlayerStat stat="ManaLeechGainRate" value="209.30742"/>
		<PlayerStat stat="EnergyShield" value="41"/>
		<PlayerStat stat="EnergyShieldRecoveryCap" value="41"/>
		<PlayerStat stat="Spec:EnergyShieldInc" value="0"/>
		<PlayerStat stat="EnergyShieldRegenRecovery" value="0"/>
		<PlayerStat stat="EnergyShieldLeechGainRate" value="0"/>
		<PlayerStat stat="Ward" value="0"/>
		<PlayerStat stat="RageRegenRecovery" value="0"/>
		<PlayerStat stat="TotalDegen" value="131.28"/>
		<PlayerStat stat="TotalNetRegen" value="253.52"/>
		<PlayerStat stat="NetLifeRegen" value="226.02"/>
		<PlayerStat stat="NetManaRegen" value="27.5"/>
		<PlayerStat stat="NetEnergyShieldRegen" value="0"/>
		<PlayerStat stat="Evasion" value="14741"/>
		<PlayerStat stat="Spec:EvasionInc" value="31"/>
		<PlayerStat stat="MeleeEvadeChance" value="64"/>
		<PlayerStat stat="ProjectileEvadeChance" value="64"/>
		<PlayerStat stat="Armour" value="763"/>
		<PlayerStat stat="Spec:ArmourInc" value="0"/>
		<PlayerStat stat="PhysicalDamageReduction" value="6"/>
		<PlayerStat stat="BlockChance" value="0"/>
		<PlayerStat stat="SpellBlockChance" value="0"/>
		<PlayerStat stat="AttackDodgeChance" value="0"/>
		<PlayerStat stat="SpellDodgeChance" value="0"/>
		<PlayerStat stat="SpellSuppressionChance" value="89"/>
		<PlayerStat stat="FireResist" value="75"/>
		<PlayerStat stat="FireResistOverCap" value="96"/>
		<PlayerStat stat="ColdResist" value="69"/>
		<PlayerStat stat="ColdResistOverCap" value="0"/>
		<PlayerStat stat="LightningResist" value="75"/>
		<PlayerStat stat="LightningResistOverCap" value="16"/>
		<PlayerStat stat="ChaosResist" value="29"/>
		<PlayerStat stat="ChaosResistOverCap" value="0"/>
		<PlayerStat stat="EffectiveMovementSpeedMod" value="2.5488"/>
		<PlayerStat stat="FullDPS" value="0"/>
		<PlayerStat stat="FullDotDPS" value="0"/>
		<PlayerStat stat="PowerCharges" value="0"/>
		<PlayerStat stat="PowerChargesMax" value="3"/>
		<PlayerStat stat="FrenzyCharges" value="0"/>
		<PlayerStat stat="FrenzyChargesMax" value="3"/>
		<PlayerStat stat="EnduranceCharges" value="0"/>
		<PlayerStat stat="EnduranceChargesMax" value="3"/>
		<PlayerStat stat="ActiveTotemLimit" value="1"/>
		<TimelessData devotionVariant2="1" searchListFallback="" searchList="" devotionVariant1="1"/>
	</Build>
	<Import exportParty="false"/>
	<Party destination="All" ShowAdvanceTools="false" append="false"/>
	<Tree activeSpec="1">
		<Spec ascendClassId="2" masteryEffects="{10495,64875},{31039,9986},{44316,34242},{53615,28638},{6427,56951},{292,47642}" nodes="13375,5237,36281,40132,55750,27656,5082,56134,65829,53086,64265,24848,27788,63228,41866,39861,33989,56856,65830,2715,20807,32514,44306,25178,33753,65637,15842,26528,60737,62744,49379,23334,65808,59370,29454,32555,25058,18182,65824,46882,54142,9469,51881,37504,9373,12948,65502,22266,36221,53615,50338,58271,36287,42178,14292,4481,31508,25260,26067,65616,3109,65810,10495,32763,65818,65632,6538,65826,33545,59220,19858,38149,31039,6910,14804,50459,61834,49978,18770,292,8458,65224,61305,6799,65834,33903,28658,34678,44316,4656,11678,903,66640,6427,12412,38662,5443,9206,25411,22994,65618,46393,41119,66642,61627,42804,48099,63795,65626,46277,7594,66650,63194,3187,57240,58854,65634,59837,60735,30679,1461,63251,6913,45035,65642,65210,6797,49459,18436,49900,59866,19069,56295" treeVersion="3_21" classId="2">
			<URL>
				https://www.pathofexile.com/passive-skill-tree/AAAABgICcTQ_FHWNuZzE2cZsCBPa20bPXvsJYRBsjPb8o4qbtYTFCptRR38CrRJiWoPZPeJnoO1B9RjA41sm5-pzDn8rYeJHBrci034k_cqpkoAknTKU_95W-o190W_EouOfjb-kwjfUEYF7FGKsZdMMJSj_f_sZioMJ51RNkpUFeT8a_jnU8YrDOklSASQhCv7I73kaj4Rvb_KHdq0cEjAtngOHGRswfJcGFUMj9mNDWdK1OaCf8LunNLvj-TO0xR2q9toMc9-Y5ebpve0_d9cFtfcTGwGv6_66Go3BM0gEwuzp2kp92-cSASUBJgBlARABIABQARIBGgBgASIBKgRQAFIEUgBaBFoAYgBqBm_e0W_9ayj_JwJ5P7oaASSFwq0c3ncZGw==
			</URL>
			<Sockets>
				<Socket nodeId="61834" itemId="22"/>
				<Socket nodeId="22994" itemId="23"/>
				<Socket nodeId="61305" itemId="18"/>
				<Socket nodeId="33753" itemId="27"/>
				<Socket nodeId="60735" itemId="21"/>
				<Socket nodeId="3109" itemId="28"/>
				<Socket nodeId="46393" itemId="25"/>
				<Socket nodeId="33989" itemId="20"/>
				<Socket nodeId="18436" itemId="26"/>
				<Socket nodeId="32763" itemId="19"/>
				<Socket nodeId="6910" itemId="17"/>
				<Socket nodeId="46882" itemId="24"/>
			</Sockets>
		</Spec>
	</Tree>
	<Notes>
		
	</Notes>
	<Skills sortGemsByDPSField="CombinedDPS" activeSkillSet="1" sortGemsByDPS="true" defaultGemQuality="0" defaultGemLevel="normalMaximum" showSupportGemTypes="ALL" showAltQualityGems="false">
		<SkillSet id="1">
			<Skill mainActiveSkillCalcs="1" includeInFullDPS="nil" enabled="true" slot="Helmet" mainActiveSkill="1">
				<Gem enableGlobal2="true" level="1" enableGlobal1="true" skillId="SupportCastOnDamageTaken" qualityId="Alternate1" gemId="Metadata/Items/Gems/SupportGemCastOnDamageTaken" quality="20" enabled="true" count="1" nameSpec="Cast when Damage Taken"/>
				<Gem enableGlobal2="true" level="7" enableGlobal1="true" skillId="MoltenShell" qualityId="Default" gemId="Metadata/Items/Gems/SkillGemMoltenShell" quality="20" enabled="true" count="1" nameSpec="Molten Shell"/>
				<Gem enableGlobal2="true" level="20" enableGlobal1="true" skillId="DefianceBanner" qualityId="Alternate1" gemId="Metadata/Items/Gems/SkillGemDefianceBanner" quality="20" enabled="true" count="1" nameSpec="Defiance Banner"/>
				<Gem enableGlobal2="true" level="20" enableGlobal1="true" skillId="BloodRage" qualityId="Default" gemId="Metadata/Items/Gems/SkillGemBloodRage" quality="20" enabled="true" count="1" nameSpec="Blood Rage"/>
			</Skill>
			<Skill mainActiveSkillCalcs="1" includeInFullDPS="nil" enabled="true" slot="Weapon 1" mainActiveSkill="1">
				<Gem enableGlobal2="true" level="20" enableGlobal1="true" skillId="SupportRangedAttackTotem" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemRangedAttackTotem" quality="23" enabled="true" count="1" nameSpec="Ballista Totem"/>
				<Gem enableGlobal2="true" level="21" enableGlobal1="true" skillId="SupportItemRarity" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemItemRarity" quality="20" enabled="true" count="1" nameSpec="Item Rarity"/>
				<Gem enableGlobal2="true" level="20" enableGlobal1="true" skillId="Purity" qualityId="Alternate2" gemId="Metadata/Items/Gems/SkillGemPurity" quality="20" enabled="true" count="1" nameSpec="Purity of Elements"/>
				<Gem enableGlobal2="true" level="21" enableGlobal1="true" skillId="SupportFocusedBallista" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemFocusedBallista" quality="20" enabled="true" count="1" nameSpec="Focused Ballista"/>
				<Gem enableGlobal2="true" level="5" enableGlobal1="true" skillId="SupportWeaponElementalDamagePlus" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemWeaponElementalDamagePlus" quality="23" enabled="true" count="1" nameSpec="Awakened Elemental Damage with Attacks"/>
				<Gem enableGlobal2="true" level="21" enableGlobal1="true" skillId="StormRain" qualityId="Default" skillPart="1" gemId="Metadata/Items/Gems/SkillGemStormRain" quality="20" enabled="true" count="1" nameSpec="Storm Rain"/>
			</Skill>
			<Skill mainActiveSkillCalcs="1" includeInFullDPS="nil" enabled="true" slot="Boots" mainActiveSkill="1">
				<Gem enableGlobal2="true" level="21" enableGlobal1="true" skillId="SnipersMark" qualityId="Default" gemId="Metadata/Items/Gems/SkillGemProjectileWeakness" quality="20" enabled="true" count="1" nameSpec="Sniper&apos;s Mark"/>
				<Gem enableGlobal2="true" level="20" enableGlobal1="true" skillId="SupportMarkOnHit" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemMarkOnHit" quality="23" enabled="true" count="1" nameSpec="Mark On Hit"/>
				<Gem enableGlobal2="true" level="1" enableGlobal1="true" skillId="FlameDash" qualityId="Default" gemId="Metadata/Items/Gems/SkillGemFlameDash" quality="20" enabled="true" count="1" nameSpec="Flame Dash"/>
				<Gem enableGlobal2="true" level="17" enableGlobal1="true" skillId="SupportLifetap" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemLifetap" quality="0" enabled="true" count="1" nameSpec="Lifetap"/>
			</Skill>
			<Skill mainActiveSkillCalcs="2" includeInFullDPS="nil" enabled="true" slot="Body Armour" mainActiveSkill="2">
				<Gem enableGlobal2="true" level="20" enableGlobal1="true" skillId="SupportReducedMana" qualityId="Alternate2" gemId="Metadata/Items/Gems/SupportGemReducedMana" quality="20" enabled="true" count="1" nameSpec="Inspiration"/>
				<Gem enableGlobal2="true" level="21" enableGlobal1="true" skillId="SupportTrinity" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemTrinity" quality="20" enabled="true" count="1" nameSpec="Trinity"/>
				<Gem enableGlobal2="true" level="21" enableGlobal1="true" skillId="SupportIncreasedCriticalDamage" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemIncreasedCriticalDamage" quality="20" enabled="true" count="1" nameSpec="Increased Critical Damage"/>
				<Gem enableGlobal2="true" level="6" enableGlobal1="true" skillId="SupportWeaponElementalDamagePlus" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemWeaponElementalDamagePlus" quality="20" enabled="true" count="1" nameSpec="Awakened Elemental Damage with Attacks"/>
				<Gem enableGlobal2="true" level="5" enableGlobal1="true" skillId="SupportAddedColdDamagePlus" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemAddedColdDamagePlus" quality="20" enabled="true" count="1" nameSpec="Awakened Added Cold Damage"/>
				<Gem enableGlobal2="true" level="20" enableGlobal1="true" skillId="VaalLightningArrow" qualityId="Default" skillPart="1" gemId="Metadata/Items/Gems/SkillGemVaalLightningArrow" quality="0" enabled="true" count="1" nameSpec="Vaal Lightning Arrow"/>
			</Skill>
			<Skill mainActiveSkillCalcs="1" includeInFullDPS="nil" enabled="true" slot="Gloves" mainActiveSkill="1">
				<Gem enableGlobal2="true" level="21" enableGlobal1="true" skillId="Grace" qualityId="Default" gemId="Metadata/Items/Gems/SkillGemGrace" quality="0" enabled="true" count="1" nameSpec="Grace"/>
				<Gem enableGlobal2="true" level="21" enableGlobal1="true" skillId="SupportItemRarity" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemItemRarity" quality="20" enabled="true" count="1" nameSpec="Item Rarity"/>
				<Gem enableGlobal2="true" level="21" enableGlobal1="true" skillId="HeraldOfIce" qualityId="Default" gemId="Metadata/Items/Gems/SkillGemHeraldOfIce" quality="20" enabled="true" count="1" nameSpec="Herald of Ice"/>
				<Gem enableGlobal2="true" level="4" enableGlobal1="true" skillId="SupportAdditionalXP" qualityId="Default" gemId="Metadata/Items/Gems/SupportGemAdditionalXP" quality="0" enabled="true" count="1" nameSpec="Enlighten"/>
			</Skill>
			<Skill mainActiveSkillCalcs="nil" includeInFullDPS="nil" label="" source="Item:11:Sadima&apos;s Touch, Wool Gloves" enabled="true" slot="Gloves" mainActiveSkill="nil">
				<Gem enableGlobal2="nil" level="1" enableGlobal1="true" skillId="ElementalWeakness" quality="0" enabled="true" count="nil" nameSpec="Elemental Weakness"/>
			</Skill>
		</SkillSet>
	</Skills>
	<Calcs>
		<Input name="misc_buffMode" string="EFFECTIVE"/>
		<Input name="skill_number" number="4"/>
		<Section subsection="ViewSkillDetails" collapsed="false" id="SkillSelect"/>
		<Section subsection="SkillHitDamage" collapsed="false" id="HitDamage"/>
		<Section subsection="ExertingWarcries" collapsed="false" id="Warcries"/>
		<Section subsection="SkillDamageoverTime" collapsed="false" id="Dot"/>
		<Section subsection="AttackCastRate" collapsed="false" id="Speed"/>
		<Section subsection="Crits" collapsed="false" id="Crit"/>
		<Section subsection="Impale" collapsed="false" id="Impale"/>
		<Section subsection="SkilltypespecificStats" collapsed="false" id="SkillTypeStats"/>
		<Section subsection="Accuracy" collapsed="false" id="HitChance"/>
		<Section subsection="Bleed" collapsed="false" id="Bleed"/>
		<Section subsection="Poison" collapsed="false" id="Poison"/>
		<Section subsection="Ignite" collapsed="false" id="Ignite"/>
		<Section subsection="Decay" collapsed="false" id="Decay"/>
		<Section subsection="LeechGainonHit" collapsed="false" id="LeechGain"/>
		<Section subsection="NonDamagingAilments" collapsed="false" id="EleAilments"/>
		<Section subsection="OtherEffects" collapsed="false" id="MiscEffects"/>
		<Section subsection="Attributes" collapsed="false" id="Attributes"/>
		<Section subsection="Life" collapsed="false" id="Life"/>
		<Section subsection="Mana" collapsed="false" id="Mana"/>
		<Section subsection="EnergyShield" collapsed="false" id="EnergyShield"/>
		<Section subsection="Ward" collapsed="false" id="Ward"/>
		<Section subsection="Resists" collapsed="false" id="Resist"/>
		<Section subsection="Armour" collapsed="false" id="Armour"/>
		<Section subsection="Evasion" collapsed="false" id="Evasion"/>
		<Section subsection="DamageAvoidance" collapsed="false" id="DamageAvoidance"/>
		<Section subsection="Block" collapsed="false" id="DamageAvoidance"/>
		<Section subsection="Dodge" collapsed="false" id="DamageAvoidance"/>
		<Section subsection="SpellSuppression" collapsed="false" id="DamageAvoidance"/>
		<Section subsection="Flasks" collapsed="false" id="Flasks"/>
		<Section subsection="UtilityFlasks" collapsed="true" id="Flasks"/>
		<Section subsection="LifeFlasks" collapsed="true" id="Flasks"/>
		<Section subsection="ManaFlasks" collapsed="true" id="Flasks"/>
		<Section subsection="Rage" collapsed="true" id="Rage"/>
		<Section subsection="OtherDefences" collapsed="false" id="MiscDefences"/>
		<Section subsection="StunDuration" collapsed="false" id="MiscDefences"/>
		<Section subsection="OtherAvoidance" collapsed="true" id="MiscDefences"/>
		<Section subsection="OtherAilmentDefences" collapsed="true" id="MiscDefences"/>
		<Section subsection="DamageTaken" collapsed="false" id="DamageTaken"/>
		<Section subsection="DamagingHits" collapsed="false" id="DamageTaken"/>
		<Section subsection="EffectiveHealthPool" collapsed="false" id="DamageTaken"/>
		<Section subsection="MaximumHitTaken" collapsed="false" id="DamageTaken"/>
		<Section subsection="DotsandDegens" collapsed="false" id="DamageTaken"/>
		<Section subsection="RecoupandHitTakenOverTime" collapsed="true" id="DamageTaken"/>
	</Calcs>
	<TreeView searchStr="" zoomY="0" zoomLevel="3" showStatDifferences="true" zoomX="0"/>
	<Items activeItemSet="1" useSecondWeaponSet="false">
		<Item id="2">
			Rarity: UNIQUE
Rat&apos;s Nest
Ursine Pelt
Evasion: 878
EvasionBasePercentile: 1
Unique ID: 4532a7cddab90af787cca96d436c0ad07b8c5aa2fd9a59edcd9f3131993c8e04
Item Level: 71
Quality: 20
Sockets: R-R-R-G
LevelReq: 55
Implicits: 1
{crafted}Lightning Arrow hits 2 additional Enemies
15% increased Attack Speed
73% increased Global Critical Strike Chance
150% increased Evasion Rating
25% increased Rarity of Items found
10% increased Movement Speed
10% reduced Character Size
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
			<ModRange range="0.5" id="7"/>
		</Item>
		<Item id="3">
			Rarity: UNIQUE
Eyes of the Greatwolf
Greatwolf Talisman
Unique ID: 4cd580fada06448e55da10d910a31bd58005e5fec4c47f96acc83f575d1a012b
Item Level: 84
Implicits: 3
{crafted}Allocates Vengeant Cascade
20% increased Quantity of Items found
Regenerate 4% of Life per second
Sockets:
Implicit Modifier magnitudes are doubled
Corrupted
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
		</Item>
		<Item id="4">
			Rarity: UNIQUE
Kalandra&apos;s Touch
Ring
Unique ID: beb930647c9b7cdcaf8b460fa678dea5214d2218d6b9ca58be386172968c75dd
Item Level: 85
Implicits: 0
Sockets:
Reflects your other Ring
			<ModRange range="0.5" id="2"/>
		</Item>
		<Item id="5">
			Rarity: RARE
Vengeance Fletch
Spine Bow
Unique ID: b404c9ac0235341e0bccb0d8712d2a9e04ba05449afcd4137feb9e9c970c360f
Item Level: 87
Quality: 30
Sockets: W-W-W-W-W-W
LevelReq: 80
Implicits: 5
{crafted}Quality does not increase Physical Damage
{crafted}1% increased Attack Speed per 8% Quality
Adds 6 to 83 Lightning Damage
8% increased Attack Speed
Grants 50 Life per Enemy Hit
Synthesised Spine Bow
Adds 251 to 442 Fire Damage
Adds 204 to 310 Cold Damage
Adds 42 to 729 Lightning Damage
Bow Attacks fire 2 additional Arrows
14% chance to deal Double Damage
{crafted}+24 to Strength and Intelligence
{crafted}25% increased Critical Strike Chance
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
			<ModRange range="0.5" id="7"/>
			<ModRange range="0.5" id="8"/>
			<ModRange range="0.5" id="9"/>
			<ModRange range="0.5" id="10"/>
			<ModRange range="0.5" id="11"/>
			<ModRange range="0.5" id="12"/>
			<ModRange range="0.5" id="13"/>
		</Item>
		<Item id="6">
			Rarity: UNIQUE
Goldwyrm
Nubuck Boots
Evasion: 163
EvasionBasePercentile: 1
Unique ID: 9384d7ab49098686185b55ccf15d5e1284936fd43d8cc04e137c8d0b5b073742
Item Level: 72
Quality: 29
Sockets: G-G-B-R
LevelReq: 34
Implicits: 2
{crafted}16% increased Attack and Cast Speed if you&apos;ve Killed Recently
+9% chance to Suppress Spell Damage
60% increased Mana Regeneration Rate
20% increased Quantity of Items found
+48% to Fire Resistance
10% increased Movement Speed
Corrupted
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
		</Item>
		<Item id="7">
			Rarity: RARE
Beast Curtain
Assassin&apos;s Garb
Armour: 416
ArmourBasePercentile: 1
Evasion: 1054
EvasionBasePercentile: 0.9969
Unique ID: 608fa0d669b84957a1951cc6b7c6b0eb13849429d6eacec201bfdeeb3eb8cacb
Shaper Item
Item Level: 86
Quality: 30
Sockets: R-B-B-R-G-G
LevelReq: 82
Implicits: 1
3% increased Movement Speed
Socketed Gems are Supported by Level 20 Item Rarity
14% increased Stun and Block Recovery
You can apply an additional Curse
Attacks have +1.73% to Critical Strike Chance
23% increased Rarity of Items found from Slain Unique Enemies
{crafted}+320 to Armour
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
			<ModRange range="0.5" id="7"/>
		</Item>
		<Item id="8">
			Rarity: UNIQUE
Headhunter
Leather Belt
Unique ID: d1b2f551de89ad46195ea16a60d158b685e3d7e9bae80bf0f5d2fc5c100a87f2
Item Level: 84
LevelReq: 8
Implicits: 1
+44 to maximum Life
Sockets:
+44 to Strength
+41 to Dexterity
+60 to maximum Life
29% increased Damage with Hits against Rare monsters
When you Kill a Rare monster, you gain its Modifiers for 60 seconds
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
		</Item>
		<Item id="9">
			Rarity: RARE
Chimeric Arrow
Broadhead Arrow Quiver
Unique ID: 101c0b0f576d0ba3ce0620de3df0db378b07f16a6a25d5cb3a67a65ef70db738
Item Level: 85
Quality: 0
LevelReq: 65
Implicits: 2
10% increased Attack Speed
Item sells for much more to vendors
Sockets:
{fractured}Bow Attacks fire an additional Arrow
Adds 7 to 137 Lightning Damage to Attacks
+36% to Critical Strike Multiplier with Bows
+78 to maximum Life
39% increased Damage with Bow Skills
{crafted}12% increased Attack Speed
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
			<ModRange range="0.5" id="7"/>
			<ModRange range="0.5" id="8"/>
			<ModRange range="0.5" id="9"/>
		</Item>
		<Item id="10">
			Rarity: UNIQUE
Ventor&apos;s Gamble
Gold Ring
Unique ID: 4406f68e2353dc5324ef0fbdfad8c00522cc8b6a056865a757a5367882452b24
Item Level: 80
LevelReq: 20
Implicits: 1
15% increased Rarity of Items found
Sockets:
+25 to maximum Life
10% increased Quantity of Items found
37% increased Rarity of Items found
+52% to Fire Resistance
+25% to Cold Resistance
+36% to Lightning Resistance
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
			<ModRange range="0.5" id="7"/>
			<ModRange range="0.5" id="8"/>
		</Item>
		<Item id="11">
			Rarity: UNIQUE
Sadima&apos;s Touch
Wool Gloves
Energy Shield: 32
EnergyShieldBasePercentile: 0.9031
Unique ID: cdc0555d503fed1540c61e1f44473c138653ae9e0f770c23c2f21de83525dc13
Item Level: 83
Quality: 29
Sockets: G-B-G-B
Implicits: 2
+1 to Level of Socketed Gems
Curse Enemies with Elemental Weakness on Hit
Adds 4 to 8 Fire Damage to Attacks
Adds 1 to 13 Lightning Damage to Attacks
+18 to maximum Energy Shield
10% increased Quantity of Items found
Corrupted
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
		</Item>
		<Item id="12">
			Rarity: MAGIC
Alchemist&apos;s Silver Flask of Incision
Unique ID: 8126dca2da9d472df8a22a8cc04232e65815a8057a93333e99fb442b07202e0f
Item Level: 83
Quality: 20
LevelReq: 65
Implicits: 1
{crafted}Used when Charges reach full
23% reduced Duration
25% increased effect
53% increased Critical Strike Chance during Effect
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
		</Item>
		<Item id="13">
			Rarity: MAGIC
Dabbler&apos;s Quicksilver Flask of the Kakapo
Unique ID: 3131b2744ff9d81891886773e7f4d81b94540bbf667f5afbb10cb7511f7e444f
Item Level: 69
Quality: 20
LevelReq: 52
Implicits: 1
{crafted}Used when Charges reach full
{fractured}52% reduced Effect of Curses on you during Effect
29% reduced Duration
25% increased effect
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
		</Item>
		<Item id="14">
			Rarity: MAGIC
Alchemist&apos;s Gold Flask of the Order
Unique ID: fca35e58bcff518c1767b130488483462f915605201359fb1672fab3dd93dd7f
Item Level: 84
Quality: 28
LevelReq: 64
Implicits: 2
{crafted}70% increased effect
{crafted}Gains no Charges during Effect
25% reduced Duration
25% increased effect
{crafted}30% increased Rarity of Items found during Effect
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
		</Item>
		<Item id="15">
			Rarity: UNIQUE
Progenesis
Amethyst Flask
Unique ID: cf4321433a76c38245d2643924d477273eed5d5106a263e85173e855ba031d13
Item Level: 87
Quality: 20
LevelReq: 18
Implicits: 1
{crafted}Used when Charges reach full
17% reduced Charges per use
33% increased Duration
When Hit during effect, 25% of Life loss from Damage taken occurs over 4 seconds instead
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
		</Item>
		<Item id="16">
			Rarity: UNIQUE
Divination Distillate
Large Hybrid Flask
Unique ID: 1de22ab29e857d30999796173ae9838343b92ebab3ed8f8e66a443bd98de3ede
Item Level: 72
Quality: 20
LevelReq: 30
Implicits: 0
12% increased Quantity of Items found during Effect
30% increased Rarity of Items found during Effect
25% increased Light Radius during Effect
+50% to Elemental Resistances during Effect
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
		</Item>
		<Item id="17">
			Rarity: RARE
Pandemonium Vessel
Medium Cluster Jewel
Unique ID: ef7df05f1c2fa59e60e24ccdfd0d691977f8b6058ca5eddabe4d00420165e96e
Item Level: 83
LevelReq: 54
Implicits: 3
{crafted}Adds 5 Passive Skills
{crafted}1 Added Passive Skill is a Jewel Socket
{crafted}Added Small Passive Skills grant: 6% increased Flask Effect Duration
Added Small Passive Skills also grant: +4 to Intelligence
1 Added Passive Skill is Special Reserve
1 Added Passive Skill is Spiked Concoction
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
		</Item>
		<Item id="18">
			Rarity: UNIQUE
Forbidden Flesh
Cobalt Jewel
Unique ID: 3b12e32de36eb4438a3e93efe327a2056167658e2a6bc6e5d77bee59f2b036b6
Item Level: 87
Requires Class Ranger
Implicits: 0
Allocates Master Surgeon if you have the matching modifier on Forbidden Flame
Corrupted
			<ModRange range="0.5" id="1"/>
		</Item>
		<Item id="19">
			Rarity: RARE
Spirit Ruin
Large Cluster Jewel
Unique ID: 1a8973f3bb85cbe411d9e3e11d8a958588d6867e29627e4f4500ff28c0df2b36
Item Level: 82
LevelReq: 54
Implicits: 3
{crafted}Adds 8 Passive Skills
{crafted}2 Added Passive Skills are Jewel Sockets
{crafted}Added Small Passive Skills grant: 12% increased Damage with Bows
Added Small Passive Skills grant: 12% increased Damage Over Time with Bow Skills
Added Small Passive Skills also grant: +5 to Intelligence
1 Added Passive Skill is Feed the Fury
1 Added Passive Skill is Fuel the Fight
1 Added Passive Skill is Martial Prowess
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
			<ModRange range="0.5" id="7"/>
		</Item>
		<Item id="20">
			Rarity: UNIQUE
Thread of Hope
Crimson Jewel
Unique ID: 8965319fa3fdc9b06e2aff92114a66866057d57df1f77072aad7da4aa12469a6
Item Level: 87
Radius: Variable
Implicits: 0
Only affects Passives in Massive Ring
Passives in Radius can be Allocated without being connected to your tree
-10% to all Elemental Resistances
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
		</Item>
		<Item id="21">
			Rarity: UNIQUE
Thread of Hope
Crimson Jewel
Unique ID: 2324e0a07a0f29c5feafebaa0bd61107c864ed77ff024302b386c53bcbf3f195
Item Level: 87
Radius: Variable
Implicits: 0
Only affects Passives in Large Ring
Passives in Radius can be Allocated without being connected to your tree
-10% to all Elemental Resistances
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
		</Item>
		<Item id="22">
			Rarity: UNIQUE
Elegant Hubris
Timeless Jewel
Unique ID: d3a1450eea6afc70eed8526b672358824bded1723881b5baea3454406c904314
Item Level: 86
Radius: Large
Implicits: 0
Commissioned 9500 coins to commemorate Victario
Passives in radius are Conquered by the Eternal Empire
Historic
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
		</Item>
		<Item id="23">
			Rarity: RARE
Behemoth Curio
Medium Cluster Jewel
Unique ID: 52bc1351282bff4b88c019517ed09ee825db588519038239cea26469726be9f2
Item Level: 84
LevelReq: 67
Implicits: 3
{crafted}Adds 5 Passive Skills
{crafted}1 Added Passive Skill is a Jewel Socket
{crafted}Added Small Passive Skills grant: 15% increased Critical Strike Chance
Added Small Passive Skills also grant: +3% to Chaos Resistance
Added Small Passive Skills also grant: +7 to Intelligence
1 Added Passive Skill is Pressure Points
1 Added Passive Skill is Quick Getaway
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
			<ModRange range="0.5" id="7"/>
		</Item>
		<Item id="24">
			Rarity: RARE
Entropy Bliss
Large Cluster Jewel
Unique ID: 9b25edfc2252c9866a32b6c28b897271cd1c396af67c2960154354cae713054e
Item Level: 83
LevelReq: 54
Implicits: 3
{crafted}Adds 8 Passive Skills
{crafted}2 Added Passive Skills are Jewel Sockets
{crafted}Added Small Passive Skills grant: 12% increased Damage with Bows
Added Small Passive Skills grant: 12% increased Damage Over Time with Bow Skills
Added Small Passive Skills also grant: +5 to Intelligence
1 Added Passive Skill is Feed the Fury
1 Added Passive Skill is Fuel the Fight
1 Added Passive Skill is Martial Prowess
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
			<ModRange range="0.5" id="7"/>
		</Item>
		<Item id="25">
			Rarity: RARE
Sol Sliver
Medium Cluster Jewel
Unique ID: bfadcb1a97ef0677b13af359c7c787562f4ad1de585ab9a92c504fd84df47b86
Item Level: 83
LevelReq: 54
Implicits: 3
{crafted}Adds 5 Passive Skills
{crafted}1 Added Passive Skill is a Jewel Socket
{crafted}Added Small Passive Skills grant: 15% increased Critical Strike Chance
Added Small Passive Skills also grant: +3% to Chaos Resistance
Added Small Passive Skills also grant: +5 to Intelligence
1 Added Passive Skill is Pressure Points
1 Added Passive Skill is Quick Getaway
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
			<ModRange range="0.5" id="7"/>
		</Item>
		<Item id="26">
			Rarity: UNIQUE
Forbidden Flame
Crimson Jewel
Unique ID: 9d9602a564ccc5559b858913000698b7e4e2b46a6a4c6f5c653d63654a5af6d5
Item Level: 87
Requires Class Ranger
Implicits: 0
Allocates Master Surgeon if you have the matching modifier on Forbidden Flesh
Corrupted
			<ModRange range="0.5" id="1"/>
		</Item>
		<Item id="27">
			Rarity: UNIQUE
Watcher&apos;s Eye
Prismatic Jewel
Unique ID: 8e8b4bd48e2be4d042ee0ee84d28ec20c4bbac45e83f0db26331a2788943ced7
Item Level: 86
Implicits: 0
5% increased maximum Energy Shield
4% increased maximum Life
6% increased maximum Mana
15% increased Attack Speed while affected by Precision
+45% to Chaos Resistance while affected by Purity of Elements
57% increased Cold Damage while affected by Hatred
			<ModRange range="0.5" id="1"/>
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
			<ModRange range="0.5" id="6"/>
		</Item>
		<Item id="28">
			Rarity: RARE
Blight Essence
Crimson Jewel
Unique ID: 7aeef83093b828363a6f8b1515fd01e4ad98f7acacc85705abedf399d288b48f
Item Level: 85
LevelReq: 26
Implicits: 1
Corrupted Blood cannot be inflicted on you
+14 to Dexterity
+10 to Dexterity and Intelligence
18% increased Critical Strike Chance with Lightning Skills
5% increased maximum Life
Corrupted
			<ModRange range="0.5" id="2"/>
			<ModRange range="0.5" id="3"/>
			<ModRange range="0.5" id="4"/>
			<ModRange range="0.5" id="5"/>
		</Item>
		<ItemSet useSecondWeaponSet="false" id="1">
			<Slot itemPbURL="" name="Gloves" itemId="11"/>
			<Slot itemPbURL="" name="Weapon 1" itemId="5"/>
			<Slot itemPbURL="" name="Boots Abyssal Socket 5" itemId="0"/>
			<Slot itemPbURL="" name="Belt Abyssal Socket 2" itemId="0"/>
			<Slot itemPbURL="" active="true" name="Flask 3" itemId="13"/>
			<SocketIdURL nodeId="61305" name="Jewel 61305" itemPbURL=""/>
			<Slot itemPbURL="" name="Weapon 1 Swap Abyssal Socket 4" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 1 Abyssal Socket 5" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Abyssal Socket 5" itemId="0"/>
			<SocketIdURL nodeId="60735" name="Jewel 60735" itemPbURL=""/>
			<Slot itemPbURL="" name="Weapon 1 Swap Abyssal Socket 6" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 1 Abyssal Socket 6" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Abyssal Socket 6" itemId="0"/>
			<SocketIdURL nodeId="33989" name="Jewel 33989" itemPbURL=""/>
			<SocketIdURL nodeId="18436" name="Jewel 18436" itemPbURL=""/>
			<Slot itemPbURL="" name="Weapon 2 Swap Abyssal Socket 1" itemId="0"/>
			<Slot itemPbURL="" name="Boots Abyssal Socket 3" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 1 Abyssal Socket 2" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Swap Abyssal Socket 4" itemId="0"/>
			<Slot itemPbURL="" name="Helmet Abyssal Socket 1" itemId="0"/>
			<Slot itemPbURL="" name="Belt Abyssal Socket 6" itemId="0"/>
			<Slot itemPbURL="" name="Helmet Abyssal Socket 2" itemId="0"/>
			<Slot itemPbURL="" name="Helmet" itemId="2"/>
			<Slot itemPbURL="" name="Helmet Abyssal Socket 3" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Swap Abyssal Socket 5" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 1 Abyssal Socket 1" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Abyssal Socket 1" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 1 Abyssal Socket 4" itemId="0"/>
			<Slot itemPbURL="" name="Belt" itemId="8"/>
			<Slot itemPbURL="" name="Weapon 1 Swap Abyssal Socket 2" itemId="0"/>
			<Slot itemPbURL="" name="Boots Abyssal Socket 4" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Abyssal Socket 2" itemId="0"/>
			<Slot itemPbURL="" active="true" name="Flask 5" itemId="15"/>
			<Slot itemPbURL="" name="Weapon 1 Swap Abyssal Socket 3" itemId="0"/>
			<Slot itemPbURL="" name="Boots Abyssal Socket 2" itemId="0"/>
			<Slot itemPbURL="" name="Belt Abyssal Socket 3" itemId="0"/>
			<Slot itemPbURL="" name="Body Armour Abyssal Socket 1" itemId="0"/>
			<Slot itemPbURL="" name="Gloves Abyssal Socket 1" itemId="0"/>
			<Slot itemPbURL="" name="Helmet Abyssal Socket 5" itemId="0"/>
			<SocketIdURL nodeId="46393" name="Jewel 46393" itemPbURL=""/>
			<Slot itemPbURL="" name="Helmet Abyssal Socket 6" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 1 Swap Abyssal Socket 1" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Swap Abyssal Socket 2" itemId="0"/>
			<SocketIdURL nodeId="33753" name="Jewel 33753" itemPbURL=""/>
			<SocketIdURL nodeId="32763" name="Jewel 32763" itemPbURL=""/>
			<Slot itemPbURL="" active="true" name="Flask 1" itemId="16"/>
			<SocketIdURL nodeId="61834" name="Jewel 61834" itemPbURL=""/>
			<Slot itemPbURL="" name="Helmet Abyssal Socket 4" itemId="0"/>
			<Slot itemPbURL="" name="Gloves Abyssal Socket 5" itemId="0"/>
			<Slot itemPbURL="" name="Body Armour Abyssal Socket 2" itemId="0"/>
			<Slot itemPbURL="" name="Amulet" itemId="3"/>
			<Slot itemPbURL="" name="Weapon 1 Abyssal Socket 3" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Abyssal Socket 3" itemId="0"/>
			<SocketIdURL nodeId="22994" name="Jewel 22994" itemPbURL=""/>
			<Slot itemPbURL="" name="Belt Abyssal Socket 4" itemId="0"/>
			<Slot itemPbURL="" name="Belt Abyssal Socket 1" itemId="0"/>
			<Slot itemPbURL="" name="Body Armour Abyssal Socket 3" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Swap" itemId="0"/>
			<SocketIdURL nodeId="6910" name="Jewel 6910" itemPbURL=""/>
			<SocketIdURL nodeId="3109" name="Jewel 3109" itemPbURL=""/>
			<Slot itemPbURL="" active="true" name="Flask 4" itemId="12"/>
			<Slot itemPbURL="" active="true" name="Flask 2" itemId="14"/>
			<Slot itemPbURL="" name="Weapon 2" itemId="9"/>
			<Slot itemPbURL="" name="Belt Abyssal Socket 5" itemId="0"/>
			<Slot itemPbURL="" name="Boots Abyssal Socket 1" itemId="0"/>
			<Slot itemPbURL="" name="Body Armour Abyssal Socket 4" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Swap Abyssal Socket 6" itemId="0"/>
			<SocketIdURL nodeId="46882" name="Jewel 46882" itemPbURL=""/>
			<Slot itemPbURL="" name="Weapon 2 Swap Abyssal Socket 3" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 1 Swap" itemId="0"/>
			<Slot itemPbURL="" name="Ring 2" itemId="4"/>
			<Slot itemPbURL="" name="Gloves Abyssal Socket 2" itemId="0"/>
			<Slot itemPbURL="" name="Body Armour Abyssal Socket 6" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 1 Swap Abyssal Socket 5" itemId="0"/>
			<Slot itemPbURL="" name="Weapon 2 Abyssal Socket 4" itemId="0"/>
			<Slot itemPbURL="" name="Body Armour" itemId="7"/>
			<Slot itemPbURL="" name="Ring 1" itemId="10"/>
			<Slot itemPbURL="" name="Gloves Abyssal Socket 3" itemId="0"/>
			<Slot itemPbURL="" name="Body Armour Abyssal Socket 5" itemId="0"/>
			<Slot itemPbURL="" name="Gloves Abyssal Socket 4" itemId="0"/>
			<Slot itemPbURL="" name="Gloves Abyssal Socket 6" itemId="0"/>
			<Slot itemPbURL="" name="Boots" itemId="6"/>
			<Slot itemPbURL="" name="Boots Abyssal Socket 6" itemId="0"/>
		</ItemSet>
	</Items>
	<Config>
		<Input name="enemyIsBoss" string="Pinnacle"/>
		<Input name="conditionHaveTotem" boolean="true"/>
		<Input name="useInspirationCharges" boolean="true"/>
		<Input name="conditionEnemyChilled" boolean="true"/>
		<Input name="projectileDistance" number="10"/>
		<Input name="conditionEnemyBleeding" boolean="true"/>
		<Input name="brandAttachedToEnemy" boolean="true"/>
		<Input name="conditionEnemyIgnited" boolean="true"/>
		<Input name="conditionCritRecently" boolean="true"/>
		<Placeholder name="enemySpeed" number="700"/>
		<Placeholder name="enemyChaosResist" number="30"/>
		<Placeholder name="enemyLightningDamage" number="2241"/>
		<Placeholder name="enemyCritChance" number="5"/>
		<Placeholder name="enemyFireResist" number="50"/>
		<Placeholder name="enemyColdDamage" number="2241"/>
		<Placeholder name="enemyFireDamage" number="2241"/>
		<Placeholder name="enemyLevel" number="84"/>
		<Placeholder name="enemyColdResist" number="50"/>
		<Placeholder name="enemyLightningPen" number="3"/>
		<Placeholder name="enemyLightningResist" number="50"/>
		<Placeholder name="enemyChaosDamage" number="896"/>
		<Placeholder name="enemyFirePen" number="3"/>
		<Placeholder name="enemyCritDamage" number="30"/>
		<Placeholder name="enemyArmour" number="24752"/>
		<Placeholder name="enemyColdPen" number="3"/>
		<Placeholder name="enemyDamageRollRange" number="70"/>
		<Placeholder name="enemyEvasion" number="10143"/>
		<Placeholder name="enemyPhysicalDamage" number="2241"/>
	</Config>
</PathOfBuilding>
]])
print(launch.promptMsg)
print(dkjson.encode (testItemForDisplayNew(ss)))