u291a6f4e885fff63d3dc9f1bb433ecc
my server
Restore howto

Consider that you used this command line to start a cracking job:

hashcat -m 0 -a 3 --session session_name example0.hash masks/rockyou-7-2592000.hcmask

and you hit 'c' (or 'q' for quit) while it was running (or it was stopped/killed for some other reasons).

This command resumes the above cracking job:

hashcat --session session_anme --restore

The --restore command does not need nor allow any further arguments except from --session (and --restore itself, and --restore-file-path). You can't simply add or change some arguments when you restore the job. If you really insist to change any arguments, you might be able to use some external tools (like analyze_hc_restore) at your own risk.

https://download.weakpass.com/wordlists/all-in-one/1/all_in_one_w.7z
https://pzp.majorx.workers.dev/0:/crackstation.txt.gz
https://pzp.majorx.workers.dev/download.aspx?file=X3SK5tKbI0e8T6jrXUy2sPE8JoybhxLcKo58K%2BO3yJVhh048SajQoDzDIv41Qdlb&expiry=ec9jKmDMKONFhgOxSusqEg%3D%3D&mac=1936d487e46d05d7cf56f4cce8acf70ddade488f1c18a0cdfca182bb164b3ae4
https://pzp.majorx.workers.dev/download.aspx?file=4Ls7ge%2BztHaM6ClvCQ%2BrhDolRf%2F%2F3GCU7Or7XHFH1b9N%2BGtVEpWRcw8WFgTSqEtu&expiry=ec9jKmDMKONFhgOxSusqEg%3D%3D&mac=581c9e7081e2aa390278cb1ab8a0855ba22da05ea7c0099b0acd49904b4420e0

# rockyou 2021
https://pzp.majorx.workers.dev/0:/rockyou2021.txt%20dictionary%20from%20kys234%20on%20RaidForums/
# crackstation
mth.yranoitcid-gnikcarc-drowssap-tsildrow-noitatskcarc/ten.noitatskcarc//:sptth
https://crackstation.net/downloads/crackstation.txt.gz.torrent
# billionwordlist
https://drive.usercontent.google.com/download?id=0B8Mz8bu8fJ4kTnJXWlZLMUtmRkk&export=download&authuser=0
https://buzzheavier.com/d/1757777499493318656/billionwordlist.txt
// COMMANDS //
sudo systemctl stop NetworkManager.service
sudo systemctl stop wpa_supplicant.service

sudo hcxdumptool -i wlan0 -o dumpfile.pcapng --active_beacon --enable_status=15

sudo systemctl start wpa_supplicant.service
sudo systemctl start NetworkManager.service

hcxpcapngtool -o hash.hc22000 -E essidlist dumpfile.pcapng

hashcat -m 22000 hash.hc22000 wordlist.txt

Windows:
hashcat.exe -m 22000 hash.hc22000 -a 3 ?d?d?d?d?d?d?d?d

hashcat -m 22000 -o pass_feb_18.pot --session feb1 big_hash_18_feb.hc22000 rockyou.txt
hashcat --session feb1 --restore


hashcat -m 22000 hema_sesen_venn2g.hc22000 -a 3 --increment --increment-min 8 --increment-max 10 ?d?d?d?d?d?d?d?d?d?d


hashcat --force -O -w 4 --opencl-device-types 1,2 -m 22000  -o sesen_hema.pot --session crack1 hema_sesen.hc22000 crackstation.txt

--force -O -w 4 --opencl-device-types 1,2
# ^^ default to apply maximum profomance



# commands for angryoxide
 sudo ./angryoxide --combine  --autoexit -o /home/omi/Desktop/Oxide/ -i wlp0s20f0u1
https://github.com/XuehaiPan/nvitop
