# 🗺️ Gelkis/Magram Centaur Reputation System for AzerothCore

[![AzerothCore](https://img.shields.io/badge/AzerothCore-WoW%20Server-red?logo=worldofwarcraft)](https://github.com/azerothcore/azerothcore-wotlk)

This project introduces a complete, functional **reputation and vendor system** for the Gelkis and Magram centaur factions in Desolace. It is specifically designed to provide **level 40-60 content** and fill in classic WoW progression gaps. Players can align with one tribe and earn unique, custom-designed rewards by eliminating their rivals.

**Inspiration:** This content is based on the reputation systems originally found on **Turtle WoW**, specifically the vendors [Earthcaller Jalyssa (320)](https://database.turtle-wow.org/?npc=80942) and [Deathcaller Aisha (321)](https://database.turtle-wow.org/?npc=80941). The items and stats have been custom-tweaked for this project.

***

## ✨ Project Features

* **19 Custom Items:** Introduces unique gear (Uncommon, Rare, and Epic) with custom stats and display IDs, providing meaningful rewards for characters level 40-60.
* **Faction Quartermasters:** Creates and spawns two new vendor NPCs:
    * **320:** Earthcaller Jalyssa `<Gelkis Quartermaster>` (Faction 92)
    * **321:** Deathcaller Aisha `<Magram Quartermaster>` (Faction 93)
* **Reputation to Exalted:** The `Faction.csv` file allows reputation progression with these factions up to **Exalted**.
* **Tiered Requirements:** All vendor items require a specific reputation rank (Friendly, Honored, Revered, Exalted) with the selling faction.

***

## 💾 Installation Guide

Installation requires two main steps: updating your **database** (server-side) and updating your **client/DBC files** (client-side).

### Prerequisites

* **Database Access:** Access to your MySQL/MariaDB server (via DBeaver, HeidiSQL, etc.).
* **WDBX Editor:** A tool capable of importing CSV data into the `Faction.dbc` format.

<br>

### Step 1: Update Client/DBC Data (`Faction.csv`)

This step is **required** to ensure the Faction names and reputation progress up to Exalted are correctly displayed in the game client.

1.  **Open WDBX Editor:** Use the WDBX Editor (or similar tool) to open your existing `Faction.dbc` file.
2.  **Import CSV:** Use the tool's **Import** function to load the data from the provided `Faction.csv` file.
3.  **Save & Deploy:** Save the modified file as `Faction.dbc` and place it in the appropriate locations:
    * **Client:** Place it into your client's custom MPQ or data folder (e.g., `WoW\Data\enUS\DBFilesClient\Faction.dbc`).
    * **Server:** Place the file in your server's data directory if your core loads DBC files from there.

<br>

### Step 2: Import Database Data (`.sql` Files)

These files must be executed sequentially against your **`world`** database.

1.  **Import Item Templates**
    * **File:** `Items.sql`
    * **Action:** Execute this SQL file against your `world` database.
    * **Purpose:** Inserts all 19 custom items into the `item_template` table, setting their required faction (92 or 93) and reputation rank.

2.  **Import NPC and Vendor Data**
    * **File:** `NPCVendors.sql`
    * **Action:** Execute this SQL file against your `world` database.
    * **Purpose:** Inserts and spawns the two Quartermaster NPCs (**320** and **321**) and populates their vendor lists in the `npc_vendor` table.

***

## 📜 Item List

The following custom items are added and sold by the respective faction Quartermaster. Click the item name to view the corresponding image:

### Magram Clan Centaur (Faction 93)

| Entry | Item Name | Quality | Required Rank |
| :--- | :--- | :--- | :--- |
| **200300** | [Dar'kar of the Third Khan](Screenshots/200300.png) | Epic | Revered |
| **200301** | [Ceremonial Magram Dagger](Screenshots/200301.png) | Rare | Honored |
| **200302** | [Gauntlets of the Khan](Screenshots/200302.png) | Rare | Honored |
| **200303** | [Magram Windstriker](Screenshots/200303.png) | Rare | Honored |
| **200304** | [Centaur Battle Harness](Screenshots/200304.png) | Rare | Revered |
| **200305** | [Dustguider Sash](Screenshots/200305.png) | Rare | Revered |
| **200306** | [Centaur Longbow](Screenshots/200306.png) | Uncommon | Friendly |
| **200307** | [Centaur Stompers](Screenshots/200307.png) | Uncommon | Friendly |
| **200308** | [Packrunner Harness](Screenshots/200308.png) | Uncommon | Friendly |
| **200309** | [Windwatcher Sash](Screenshots/200309.png) | Uncommon | Friendly |

### Gelkis Clan Centaur (Faction 92)

| Entry | Item Name | Quality | Required Rank |
| :--- | :--- | :--- | :--- |
| **200310** | [Batu'kar of the Second Khan](Screenshots/200310.png) | Epic | Revered |
| **200311** | [Ceremonial Centaur Ring](Screenshots/200311.png) | Rare | Honored |
| **200312** | [Gelkis Earthbinder](Screenshots/200312.png) | Rare | Honored |
| **200313** | [Maraudine Oath Pauldrons](Screenshots/200313.png) | Rare | Honored |
| **200314** | [Windbinder Gloves](Screenshots/200314.png) | Rare | Revered |
| **200315** | [Mantle of Centaur Authority](Screenshots/200315.png) | Rare | Revered |
| **200316** | [Centaur Skullcap](Screenshots/200316.png) | Uncommon | Friendly |
| **200317** | [Grips of the Unified Storm](Screenshots/200317.png) | Uncommon | Friendly |
| **200318** | [Warleader Sash](Screenshots/200318.png) | Uncommon | Friendly |

***

## ⚙️ Configuration Details & Usage

| Faction Name | Faction ID | NPC Entry ID | NPC Flag (`npcflag`) | Location |
| :--- | :--- | :--- | :--- | :--- |
| **Gelkis Clan** | **92** | 320 | **8064** | Gelkis Village |
| **Magram Clan** | **93** | 321 | **4224** | Magram Village |

### In-Game Usage

1.  **Choose an Ally:** Decide whether to ally with the Gelkis or the Magram.
2.  **Reputation Grind:** Eliminate members of the **opposing** centaur tribe in Desolace to gain reputation with your chosen faction.
3.  **Visit Quartermaster:** Once the required reputation rank is met, visit the corresponding Quartermaster to purchase the items.
