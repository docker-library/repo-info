## `caddy:windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:4e339d9836a20684b42993b444f6f54480680c19bbfaae0b0750fcee1baf9aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `caddy:windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull caddy@sha256:c05359cf2f1b5344629d099bcd9038399684728629dfd30a7c822087256db3b4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2476371087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17f1090c439c2e0fedc4d3236c0092597ccb6ddcdf4a49c8819d416fd3ea1c3`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:36:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:49:16 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Wed, 09 Sep 2026 22:49:16 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 09 Sep 2026 22:49:27 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('cd5ccfd86a4b40732cf715890d0dca5bf3f63adefec5a7914de85adf240c60ce7e5d2791631b88ef9758e46b23bb1730e020b9c5d696889740b284ffd4788e35')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Wed, 09 Sep 2026 22:49:29 GMT
ENV XDG_CONFIG_HOME=c:/config
# Wed, 09 Sep 2026 22:49:30 GMT
ENV XDG_DATA_HOME=c:/data
# Wed, 09 Sep 2026 22:49:30 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Wed, 09 Sep 2026 22:49:31 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 09 Sep 2026 22:49:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 09 Sep 2026 22:49:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 09 Sep 2026 22:49:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 09 Sep 2026 22:49:35 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 09 Sep 2026 22:49:36 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 09 Sep 2026 22:49:36 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 09 Sep 2026 22:49:38 GMT
EXPOSE 80
# Wed, 09 Sep 2026 22:49:39 GMT
EXPOSE 443
# Wed, 09 Sep 2026 22:49:40 GMT
EXPOSE 443/udp
# Wed, 09 Sep 2026 22:49:41 GMT
EXPOSE 2019
# Wed, 09 Sep 2026 22:49:46 GMT
RUN caddy version
# Wed, 09 Sep 2026 22:49:47 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10168a5b915c41c4bd65cf1279b53e33fa3cc32e694a759db1ea2ba4ffc50b2`  
		Last Modified: Wed, 09 Sep 2026 22:37:10 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048d968b85a667c0d3d175771541d5d229aed7cfe41bdc95e85f032fe7b9c23a`  
		Last Modified: Wed, 09 Sep 2026 22:49:57 GMT  
		Size: 373.7 KB (373656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d3bc632fe8a7037cedccc12d6dfaef713532c0c86cdd2bdd5d8dd0e278f87`  
		Last Modified: Wed, 09 Sep 2026 22:49:56 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861ce25bdedce894a9048ca339c6d5b298bb9bc3183a4c49511d61a3f32dacc4`  
		Last Modified: Wed, 09 Sep 2026 22:49:58 GMT  
		Size: 18.0 MB (17987515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfa99a6efbd1d09109bb0fe86ea4c5bfa7911f7e028bfe6ed9d2e03ece946e5`  
		Last Modified: Wed, 09 Sep 2026 22:49:56 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7397b8b1a5f2c785e903937e9ca0544643aa33524500ba73036d4977bda108a5`  
		Last Modified: Wed, 09 Sep 2026 22:49:55 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467b2c1b1d516d0e679b69175800e141ad4ece75b7ca4f8ced870f98709c8f6a`  
		Last Modified: Wed, 09 Sep 2026 22:49:55 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016ef428f0fc182c7bc390e99da1f6086d2deaf24b692710850422f78dda057b`  
		Last Modified: Wed, 09 Sep 2026 22:49:55 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2cc7594b4e0b1c189f2b6c839780ba074085ce23d6673e21a64ec4e48a6c8a`  
		Last Modified: Wed, 09 Sep 2026 22:49:55 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c7d2b9499d3d76c8dcd42a17ef2fbb46ea206addd4ccff774960bf31a0db20`  
		Last Modified: Wed, 09 Sep 2026 22:49:55 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bff559f7372701575f8388b430b6543a9f78f5d36f06e26e3f98973852830c`  
		Last Modified: Wed, 09 Sep 2026 22:49:53 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57318a4a3ac2c6f802ff49a02a5f9733920a003d398d5f259654271394c8a8d4`  
		Last Modified: Wed, 09 Sep 2026 22:49:53 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae8f565be3241387d3e53b4a56155339e9537484657695d975688fed579c05e`  
		Last Modified: Wed, 09 Sep 2026 22:49:53 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f33e02e554731bdb80fda5493849adb581b25ac1a03da33774de9ecb029331`  
		Last Modified: Wed, 09 Sep 2026 22:49:53 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5174506ae9314b1209e6dbe305cedad1c13cd2c7469a3d8c1f9e64d64084c8a`  
		Last Modified: Wed, 09 Sep 2026 22:49:53 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b877efbe27585db7961ea672e93168ac613ba4b36b1d9245ef708726abe7df5`  
		Last Modified: Wed, 09 Sep 2026 22:49:51 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d97be5467963259c00e3779ef2dbb9b7991e9008f59963bafa689b748329cb2`  
		Last Modified: Wed, 09 Sep 2026 22:49:51 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaa9169d3d4045cd822af9595bdf20d3388e48c22323f929a57503f8d4e9c2e`  
		Last Modified: Wed, 09 Sep 2026 22:49:51 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93357330ecac32780ddb428e48fcc4697edf59dd9fc80be13ddbe82b1cb16482`  
		Last Modified: Wed, 09 Sep 2026 22:49:52 GMT  
		Size: 358.4 KB (358426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffe891e85f574995d0ddc30e3f4dbc86e7505630000f64c8de36ee6675bbf3`  
		Last Modified: Wed, 09 Sep 2026 22:49:51 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
