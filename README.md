# AHKretailsearch
AHK script for searching retail websites with a single query

Requirements: AutoHotkey, Chrome.exe

Press ctrl+W ^W to open the search box, you can change this in the script if you wish. 

Type the item you want to search for into the box.

The program will open a new chrome tab for each retail website in the script with the results of the search.

The program relies on altering the search url of each website with the search, It changes spaces into the special characters that the website has chosen to use as spaces are not alowed in URs.

If you want to add a website go to that website and do a search for something with two words in it (ex: cat toy) then copy the url into a text editor. find the section of the url with your search in it, replace the secton "cat+toy" with the correct variable name, in this case you wuld put %searchitem% in its place, if it says "can%20toy" then you put %pertwen%, if it says "cat-toy" then you put %dash%
  Run, chrome.exe Run, chrome.exe -new-tab https://www.amazon.com/s?k=%searchitem%

Note that some websites put search options into the url as well such as store number, sort by option, etc. So play around with searching on websites to figure out what works best for you.
