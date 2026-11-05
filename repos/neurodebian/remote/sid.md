## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:4794e7257a632afa31e577231ec65129de80621153c16d046e034a6cf20b4f0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:54ddfad5a306afcfe1f856b13a6d59b7df1530eca02c9072f1e5b534f3f3932a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62541253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17f452f35b74579529315cd43e945aa8ebbb35eeeadb93cb754e8e1a20792c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:41:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:41:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:364a50d6a5e94f8e563c587da9a864a302a7410667b951807f503088e796a553`  
		Last Modified: Thu, 05 Nov 2026 06:16:27 GMT  
		Size: 50.7 MB (50726759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffa043ec9022f8a678eb7643ce937857673728489e3e36f59b278cc4f7d46d64`  
		Last Modified: Thu, 05 Nov 2026 07:41:28 GMT  
		Size: 11.7 MB (11721208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21d7a159575c112a649e8cd9029b757daf997ec8c74c172d87d0ba55da67a7a`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52396bd84361bab98c1160016e6c3c88b8152d341f0a7428283010b08b94e380`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a51460d471891ec84dc7bd1a6e18ae652130fd5756eb6713265bc429f87fdc`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 90.4 KB (90378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c20778996dc0e1a02f55c093a68501bc909a6d82ea9c3219838054ea8a51d3b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3601808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ac5f626dee307ed903814b40a34f4f3f3f52eeff546e8b63d18729de67b131`

```dockerfile
```

-	Layers:
	-	`sha256:484ba5bef08be36e0c0850d723d8be4c092267fad028952d8878cd7e359f9848`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 3.6 MB (3587904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7cf9ccb3d25c5f4d645acd7dcd8fd0724c8532f86450d68d0e857be2eb7993a`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:1cfabda8e73345b6b764b47e6c90b4ba1d5b7bdaff567e3d124c2a69aabcfc64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61153826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23cc494569503feea0da0eff24cb59b760f83b7c6a8c130c5d0bf8f1a29bbcb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:45:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:45:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:45:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:45:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:fb8b17c0bf04fb49bc9a301a09b2e58f4e152091dd403accfc343be9dd86ff27`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.9 MB (49866463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82393be0bb77fdb23d62e842a363baa57910f7a12355553c055bcfbe63e8ee69`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 11.2 MB (11193540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40bc58bd0a29cb7d8a9b97f52f14ea7fca355a28b8b6652c905320d989bf0fc6`  
		Last Modified: Thu, 05 Nov 2026 07:45:31 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4644ddebb343b3eead6c94c69dfeb683300bd2973aedba69d954bf487cc3aacd`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551e3627675c0a3b03d60588fdb397b241592860690ec3103329d4c8f83ca3c7`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 90.9 KB (90918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8267a00decbf7b77f33179bf7b47de4f4af9a9838d1b8a39c899994c9e18f2b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3605418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57785897f60d76b39472a30481e56ec8bf59e7d679315f5d6cbe06009d33f4a1`

```dockerfile
```

-	Layers:
	-	`sha256:7f53a71b6c5fe1156c9069f70e5b83b49016867758d29b0290738c86ca31af27`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 3.6 MB (3591390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa9d061a641cda2402df247d3afb65d18b2305b1e8511b4bda8f1d5adc54d53b`  
		Last Modified: Thu, 05 Nov 2026 07:45:32 GMT  
		Size: 14.0 KB (14028 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:b1555ceac5b379e448c96c9af3078fd8afe2682f34991c9fe6ca577b230623d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63785091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e18167d5652d5179ecfad2cd149de14d53f0678126cf7aaad5cd4c063aa459a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:42:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:42:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Thu, 05 Nov 2026 07:42:59 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Thu, 05 Nov 2026 07:43:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:45e2758067de47b0fde63f406a2c1562b117e9e5101bf52b9171bee647043f8b`  
		Last Modified: Thu, 05 Nov 2026 06:16:28 GMT  
		Size: 51.8 MB (51788329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333adb2d27d8e7d16023726fccac60faa9452ed2698f163d9a7f72d9327b646a`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 11.9 MB (11903104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41fd649931b3611d5ac6cd88b7b4e61dffbdb0becb4e5f770998338e9d64634`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c42ab8b6bb28c0e762d41f090ad5dc731cd7b668797f970de2228e9f01e8243`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb270f40b783b13ff054b3e29c8d0b313a1c0c31c7ffd6a80628e18d6ad5a600`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 90.8 KB (90757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:6bcdfe685f34f306b85fe7ab8449531141e7734afb043572012f575607a0a92e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3599624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd07eeb51d74655cdc5d985ee3406ceb9dc45f30775f4e2b23fb955e53a2b1e`

```dockerfile
```

-	Layers:
	-	`sha256:acf24ae0e842c679fd56d388a611dec0a80e36e460d73c9deb4acf9e7f7b1679`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 3.6 MB (3585750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e1af752ce09c9e12748b635e08cf113263ea1a744c085097c97987bfd8bc067`  
		Last Modified: Thu, 05 Nov 2026 07:43:10 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json
