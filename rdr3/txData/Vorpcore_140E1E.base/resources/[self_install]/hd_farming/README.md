# hd_farming

>This is a simple easily configurable farming script for RedM!

## Features
- Allows you to create as many crops to plant for your RedM server as you want!
- Easy to translate via the Config.Languages in the config.lua!
- Ability to individually job lock plants!
- Must have a "Planting tool" to be able to plant the crop! (Tool is set for each plant individually in the config.lua)
- Super easy to configure everything via the config.lua!
- You have to water crops using a bucket in the config!
- You can refill the bucket at any lake, river, pond, ocean etc!
- Watering a crop removes the full bucket, and adds an empty one!
- Option in config to have blips on plants!
- Option for enabling or disabling planting crops in town!

## How it works
- When you have the required amount of seed items set in the config, and you have the planting tool set in the config. Just use the item seed item in your inventory! Wait for it too grow, then harvest it!
- To refill a bucket just go step in some water, and use the empty bucket in your inventory
- To water plant just walk upto it and a prompt will appear

## Why use it
- It is simple, effective, and easy to use!

## Requirements
- VORP Core
- VORP Inventory
- VORP Utils

## Installation Steps
- Add the file to your resource file
- Add ensure 'hd_farming' to your resources.cfg

## Side notes
- Make sure all the items you set to use are actually in your database.
- These plants are not saved to a database so they will dissapear if you disconnect or the server restarts. (At this moment in time my knowledge of databases are at best very limited never used them in a script before. Eventually I want to add it to this, but it will be a longtime so if anyone wants to attempt it get it working, and want to merge it open a pull request!)
- Stealing plants is not added yet, as I am unsure how to go about adding it. When I figure a way too i will add it.
- I will offer support for this, however do note it is not garunteed
- I really hope you enjoy the script thanks for trying it!
- I have optimized this code quite alot, but if you see any code that can be optimized further please open a pull request and I will take a look if it works I will merge it. Or just tell me lol.
- You can edit the code obviously. All I ask is that you release the edits to the community freely.
- There is a known bug with the watering prompts. Causes no real issue you just have to do the prompt twice. Looking into a fix!
- This script is written from scratch, but took a heavy inspiration from prp_farming.
