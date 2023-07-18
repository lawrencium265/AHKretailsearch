#SingleInstance Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^w::
InputBox, item, Item Price Search, Item name or description
searchitem := StrReplace(item, " ", "+")
pertwen  := StrReplace(item, " ", "`%20")
dash  := StrReplace(item, " ", "-")

clipboard := item
Switch Errorlevel
{
Case 0:
Run, chrome.exe -new-tab https://www.ebay.com/sch/i.html?_from=R40&_nkw=%searchitem%&rt=nc&LH_PrefLoc=1
Run, chrome.exe -new-tab https://www.amazon.com/s?k=%searchitem%
Run, chrome.exe -new-tab https://www.newegg.com/p/pl?d=%searchitem%&Order=1
Run, chrome.exe -new-tab https://www.walgreens.com/search/results.jsp?Ntt=%searchitem%&inStore=true
Run, chrome.exe -new-tab https://www.cvs.com/search?searchTerm=%pertwen%
Run, chrome.exe -new-tab https://www.acehardware.com/search?query=%searchitem%
Run, chrome.exe -new-tab https://www.ruralking.com/catalogsearch/result/?q=%searchitem%
Run, chrome.exe -new-tab https://www.walmart.com/search?q=%searchitem%&sort=price_low
Run, chrome.exe -new-tab https://www.samsclub.com/s/%pertwen%
Run, chrome.exe -new-tab https://www.costco.com/CatalogSearch?dept=All&keyword=%searchitem%
Run, chrome.exe -new-tab https://www.target.com/s?searchTerm=%searchitem%
Run, chrome.exe -new-tab https://www.meijer.com/shopping/search.html?text=%pertwen%
Run, chrome.exe -new-tab https://www.menards.com/main/search.html?search=%pertwen%
Run, chrome.exe -new-tab https://www.lowes.com/search?searchTerm=%searchitem%
Run, chrome.exe -new-tab https://www.homedepot.com/s/%pertwen%
Run, chrome.exe -new-tab https://www.farmandfleet.com/s/?keyword=%searchitem%

Case 1:
return
}
return
