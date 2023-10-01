# gmod-workshop
Automatically grabs the workshop collection and adds the add-ons for clients to download. This uses Steam's API to grab the collection and the workshop IDs. Then it'll use `resource.AddWorkshop` to add those add-ons.

## Usage
In `lua/autorun/server/workshop.lua` add the collection's ID to `local COLLECTION_ID = ""`

When running the server. In the terminal, you should see output similar to:
```
Adding Workshop Resource: 104479034
Adding Workshop Resource: 420996339
Adding Workshop Resource: 251778521
Adding Workshop Resource: 104607712
...
```
If you do, this mean the script was able to add those add-ons for the clients to download.
