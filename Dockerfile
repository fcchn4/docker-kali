FROM kalilinux/kali-linux-docker

MAINTAINER Fcch

CMD echo "This is FCCH container for Pentesting with Kali Linux"
ENV DEBIAN_FRONTEND noninteractive

RUN apt update -q -q && apt upgrade -y

## Packages for container base
RUN apt install -y whois mlocate bash-completion curl wget vim testssl.sh joomscan wpscan fierce exploitdb exiv2 \
    git dmitry dirb dirbuster metasploit-framework masscan fping nikto nmap sqlmap axel ethtool udptunnel netcat \
    enum4linux dnsrecon dnsenum dnschef cryptcat powersploit ncrack magicrescue lbd hping3 hashid hash-identifier \
    creddump7 yersinia sleuthkit skipfish spike recon-ng rebind proxychains ptunnel sslstrip sslsplit sparta \
    snmpcheck smbmap set hydra webshells weevely wfuzz whatweb upx-ucl windows-binaries winexe wordlists statsprocessor \
    dos2unix expect hashdeep hotpatch wafw00f voiphopper theharvester netmask netsniff-ng ngrep pwnat stunnel4 swaks \
    tcpick tcpreplay tcpdump unix-privesc-check amass arp-scan arping binwalk bulk-extractor cewl clusterd commix crunch sslyze

RUN apt clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*