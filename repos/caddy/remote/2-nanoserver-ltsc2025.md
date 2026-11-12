## `caddy:2-nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:38ae380fd50ce4a65f395916a9bd7dc6cc2a0713a77bba5f0fe69c1e50313f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `caddy:2-nanoserver-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull caddy@sha256:fd87f5c73973d4db5ba89d6e6e14d2e4f8d35e690a5d5025b93716869f0ba8b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219341869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a516e2532630bef57e0847becb38f86d90dec31ed96b416a83edec49ca8aec1`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Mon, 09 Nov 2026 13:08:00 GMT
RUN Apply image 10.0.26100.33822
# Wed, 11 Nov 2026 22:48:32 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Wed, 11 Nov 2026 22:48:33 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Wed, 11 Nov 2026 22:48:37 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Wed, 11 Nov 2026 22:48:39 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Wed, 11 Nov 2026 22:48:40 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Wed, 11 Nov 2026 22:48:40 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Wed, 11 Nov 2026 22:48:41 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Wed, 11 Nov 2026 22:48:41 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Wed, 11 Nov 2026 22:48:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 11 Nov 2026 22:48:43 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 11 Nov 2026 22:48:43 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 11 Nov 2026 22:48:44 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 11 Nov 2026 22:48:45 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 11 Nov 2026 22:48:45 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 11 Nov 2026 22:48:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 11 Nov 2026 22:48:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Wed, 11 Nov 2026 22:48:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Wed, 11 Nov 2026 22:48:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Wed, 11 Nov 2026 22:48:49 GMT
RUN caddy version
# Wed, 11 Nov 2026 22:48:50 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:8395a5062b63680acee7661df668d9bf81cca0fdec76ab1b29afd6ab290bf2c0`  
		Last Modified: Tue, 10 Nov 2026 23:37:33 GMT  
		Size: 200.2 MB (200242324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9398afd2ff2738309ff58e912314c418269b178be67b37596043e64840170b`  
		Last Modified: Wed, 11 Nov 2026 22:48:59 GMT  
		Size: 72.1 KB (72098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e1f79e3e71cab0597f2cc2afcbad0632e1ce76d84d74624790868b69bfc5b2`  
		Last Modified: Wed, 11 Nov 2026 22:49:02 GMT  
		Size: 18.5 MB (18498173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac82f5d282df941c410ceba0d53015c35986d252e70e6929f29f4a5232e2d33`  
		Last Modified: Wed, 11 Nov 2026 22:48:59 GMT  
		Size: 288.1 KB (288139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef7d48088d1efbb565de81cbe5acfec1496d144c96370ff238bfb73f7700b46`  
		Last Modified: Wed, 11 Nov 2026 22:48:59 GMT  
		Size: 110.4 KB (110434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f30211fb2d7e7eeb5bca7da55c02acca13556460b014b760534e022ebf1aba`  
		Last Modified: Wed, 11 Nov 2026 22:48:59 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d407fa8c103d47bbb8ab07bd39d547f21434362e83e4ba737111a30a9ecab7d`  
		Last Modified: Wed, 11 Nov 2026 22:48:58 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181559e50fb9ba3d5c6247a53bcb02aacaec93a6b20f20ee65bfcd1c467ff1b2`  
		Last Modified: Wed, 11 Nov 2026 22:48:57 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6244fa126f1ab4818c534961106e14688a7fff1a27d21d233ef4d9ce5f3286ec`  
		Last Modified: Wed, 11 Nov 2026 22:48:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e47a70883d0360c6f7e9fbea18067915eaffa5eb1bf03f23aa40d532de306c`  
		Last Modified: Wed, 11 Nov 2026 22:48:57 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edb284db2eb163ae73fa7de3402dccb54490e53863a7e211b59031d12ee525b`  
		Last Modified: Wed, 11 Nov 2026 22:48:57 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7f4bb97aea1249af6570ca68d4006a4e491a80fe1b149610546ea37273720f`  
		Last Modified: Wed, 11 Nov 2026 22:48:56 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0940042c023ed665932dec3671f8b9b10498e9b8fc57e90025ed98825068a550`  
		Last Modified: Wed, 11 Nov 2026 22:48:56 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372025710552bab61c52cc0a3da20621be252a090a29e460298399e4b1f53387`  
		Last Modified: Wed, 11 Nov 2026 22:48:56 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4018f31224e17c871565f6b92248ffa2534b915f522f0b6b5a140c3a0c787be`  
		Last Modified: Wed, 11 Nov 2026 22:48:56 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7540717750602cc35c02ed76b29a7da91f83ceddd8785f5d9ab4f7e11d26d9`  
		Last Modified: Wed, 11 Nov 2026 22:48:56 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e334202e5dd6065f88c2bbb7f1122069b790c17970710d6563c78ee56ac62101`  
		Last Modified: Wed, 11 Nov 2026 22:48:54 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cda5849ae4932373eda9314d5725c6866b0ae2b17436940b0141a6fae32c7de8`  
		Last Modified: Wed, 11 Nov 2026 22:48:54 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4713adc77a51209b6a1068ef29c27d4b430b2ac3695fd4aa4577c3f637dadf`  
		Last Modified: Wed, 11 Nov 2026 22:48:54 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade99bcf5bdb722e962755344b942a5110592c4693be9566c92ccf27eaf0e7ff`  
		Last Modified: Wed, 11 Nov 2026 22:48:54 GMT  
		Size: 115.2 KB (115235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad176488f70a72aa23a616322ccadca125cb50af7c67b933e5e798b5c87ae78`  
		Last Modified: Wed, 11 Nov 2026 22:48:54 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
