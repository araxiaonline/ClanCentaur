# Gelkis & Magram Centaur Reputation System  
**AzerothCore • Pure SQL + DBC Module • No Core Changes Required**

[![AzerothCore](https://img.shields.io/badge/AzerothCore-supported-brightgreen?logo=worldofwarcraft&style=flat)](https://www.azerothcore.org/)

This module adds a complete, lore-friendly reputation and vendor system for the **Gelkis Clan Centaur** (Faction 92) and **Magram Clan Centaur** (Faction 93) in Desolace.  
Perfect level 40–60 progression content, inspired by the much-loved Turtle WoW version but tweaked and adapted for AzerothCore. (It's not a one for one but works.)

## Features

- 19 custom items (Uncommon → Rare → Epic) with unique stats & display IDs  
- Two new quartermasters spawned in their respective villages  
- Full reputation progression to Exalted (mutually exclusive factions)  
- Tiered vendor access: Neutral → Honored → Revered → Exalted  
- All rewards require reputation with the selling faction  (Besides the Centaur Longbow)
- 100% SQL + one DBC patch – no source code changes needed  

## Installation

### Prerequisites
- Access to your `world` database
- Any DBC editor that can import CSV (WDBX Editor, Keira3, etc.)

### Step 1 – DBC Patch (Faction.dbc)

Required for correct faction names and Exalted reputation cap in-game.

1. Open your `Faction.dbc` in your DBC editor  
2. Import the provided `Faction.csv` (overwrite IDs 92 and 93)  
3. Save and place the new `Faction.dbc` in:  
   - Client patch/MPQ or `Data\enUS\DBFilesClient\` folder  
   - Server `data/dbc/` folder (if your core loads DBC files)

### Step 2 – Database Import

Execute these two SQL files in order against your `world` database:

- `Items.sql` → Adds all 19 custom item templates  
- `NPCVendors.sql` → Spawns the quartermasters and fills their vendor lists

## Quartermasters

| Faction             | ID | Quartermaster Name      | Entry | Location         |
|---------------------|----|--------------------------|-------|------------------|
| Gelkis Clan Centaur | 92 | Earthcaller Jalyssa      | 320   | Gelkis Village   |
| Magram Clan Centaur | 93 | Deathcaller Aisha        | 321   | Magram Village   |

## Item Rewards

### Magram Clan Centaur (Faction 93)

| Entry  | Item Name                    | Quality  | Required Reputation |
|--------|------------------------------|----------|---------------------|
| 200300 | Dar'kar of the Third Khan    | Epic     | Exalted             |
| 200301 | Ceremonial Magram Dagger     | Rare     | Revered             |
| 200302 | Gauntlets of the Khan        | Rare     | Revered             |
| 200303 | Magram Windstriker           | Rare     | Revered             |
| 200304 | Centaur Battle Harness       | Rare     | Exalted             |
| 200305 | Dustguider Sash              | Rare     | Exalted             |
| 200306 | Centaur Longbow              | Uncommon | Neutral             |
| 200307 | Centaur Stompers             | Uncommon | Honored             |
| 200308 | Packrunner Harness           | Uncommon | Honored             |
| 200309 | Windwatcher Sash             | Uncommon | Honored             |

### Gelkis Clan Centaur (Faction 92)

| Entry  | Item Name                        | Quality  | Required Reputation |
|--------|----------------------------------|----------|---------------------|
| 200310 | Batu'kar of the Second Khan      | Epic     | Exalted             |
| 200311 | Ceremonial Centaur Ring          | Rare     | Revered             |
| 200312 | Gelkis Earthbinder               | Rare     | Revered             |
| 200313 | Maraudine Oath Pauldrons         | Rare     | Revered             |
| 200314 | Windbinder Gloves                | Rare     | Exalted             |
| 200315 | Mantle of Centaur Authority      | Rare     | Exalted             |
| 200316 | Centaur Skullcap                 | Uncommon | Honored             |
| 200317 | Grips of the Unified Storm       | Uncommon | Honored             |
| 200318 | Warleader Sash                   | Uncommon | Honored             |
| 200306 | Centaur Longbow                  | Uncommon | Neutral             |

All item screenshots are in the `Screenshots/` folder.

## How to Play
1. Go to Desolace and pick your side (Gelkis or Magram)  
2. Kill members of the rival clan to gain reputation with your chosen faction  
3. Visit your faction quartermaster when you reach the required rank  
4. Buy exclusive, powerful gear made for levels 40–60

*Special Thanks to Hex for the help on the Wow Modding Discord*
