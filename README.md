# docker-rpi2-transmission
Transmission BitTorrent Client for Raspberry Pi 2

## How to use

```
[root@alarmpi ~]# sh start.sh
```

## Available configurations (in start.sh)
- ALLOWED_HOSTS

  A list of allowed IPs to connect to RPC interface. Use commas as delimeter. Don't remove the quotes, or Transmission will go wonkers.

- VOLUMEBIND

  The volume to bind to Transmission's default Downloads folder. Use Docker's -v format.

  Example: ```RPI2_TRANSMISSION_VOLUMEBIND="/mnt:/var/lib/transmission/Downloads"```

- AUTHENTICATION (not implemented)

  Whether authentication is required when connecting to the RPC interface.
