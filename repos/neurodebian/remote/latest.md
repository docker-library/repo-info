## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:4d6b25a7b1cd3b35520db946016e5a70a9ce45eb32e03dbf2311f773ebb69795
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:latest` - linux; amd64

```console
$ docker pull neurodebian@sha256:e112bb4fecc99cf5388ea839eb24350ca1c7d44fc708d8bccffa075ad6291547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59767012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd9f897e4e0274bb065566e3e99e6fd63610cf96bc9131127bc5f7e8027c1f3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:43 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:47:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:47:44 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:47:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2972088658410b71563cada8f6ec35b75130fabd7c5a359beb9ab7606d773f7`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 10.3 MB (10294045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952405f199ce2ca01739d653b47d1a3e897288819cffd85de7b84733ca67e16d`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4939473def3c131bba6a2dd387be11ed60df97a2653826fb4bf87c597f4a864a`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e081c0831a29cc956f3d02899d6c35b87b9bb206afb145d5eb27c41cf9f0d7da`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 90.4 KB (90363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:682b479f02fe8f39084ed6e8b25d79cc0d0948cd663e4a8eab410e6ace3d5a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3638354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7625bad3eb6e3197a84f6c515aa5b8864b0e025d6bee179190afe1dd21d6510`

```dockerfile
```

-	Layers:
	-	`sha256:1dad8e345dbc5e7e9775b513f2137aacf511938240de77f89f2644eaa0d4b212`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 3.6 MB (3624103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f60bfc0c8ed75cb19ef487b5da1165e8d54c939095a89ccf355e1595b6da04ab`  
		Last Modified: Sat, 19 Sep 2026 00:47:55 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:b4715bbe367b1044eca950768d158c62b201e8b49509d62950e91242e228a956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59921697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa4e292e85ea0c8af65d9ea0bb84c86ad02596f1b29e47f2ff13c9f63d77df0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:50:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:50:33 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 19 Sep 2026 00:50:33 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 19 Sep 2026 00:50:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce2a04bdd86f4531cca4b58c55e29d40f4eb4a2a2122b4946e4320798e379dd`  
		Last Modified: Sat, 19 Sep 2026 00:50:45 GMT  
		Size: 10.1 MB (10078900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadd522674afc082df4f75bf48ae852558ad649cf485374cc723e496e905c8b5`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20816507a171c5b4ab3d3eabaf694a0c511e0842818b1f538fd74cb0d92aa13`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d8e7bde1ea829977436c1d955e6b670fb493134b6668fa95a8208d807cdcb4`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 91.1 KB (91060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:00dbfe35e64df0119fb772fd175858a6cadecc70bc2a566ecbe4cd8335d6bcc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3639381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091835b62902e35ef3ea36d7a59c39a6cfc21d9cf08bb547312ee44456d701e2`

```dockerfile
```

-	Layers:
	-	`sha256:beac648e06871dbca392fa86aa7ce3ff747c21f30234f0ad7d6a6b8aa52e20c5`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 3.6 MB (3624993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9183cdb4442d78e56f3494f152cfc63fa2c3604da53df0b1a4bd6021cc52fd4`  
		Last Modified: Sat, 19 Sep 2026 00:50:44 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:0143a67c141e95ccf347b6d3a3d7d99011ca68caf61caacf55a5a3a2fc0ac86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61411415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e184366ead5044b1c957dfa04a210019e2eea84e91854d140decae7ad021006c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:52:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 25 Aug 2026 00:52:12 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 25 Aug 2026 00:52:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfdbe5b9045c6f4c7b65146f2c919ed53f3d20a607314fc64c93b839732b7aaf`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 10.5 MB (10468169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44faa7eba53c76d328e74262ddc1cc1e2721331d09a6711795f3cbc32b8f7577`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c892473b9707fea4d058a0bc57f6c9797631ab94f46fadb8a523c635b1fb6a59`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6aa94ad1f53f196e47b28600d0f0318ac58fe27be04b91350ab8e093bbd929`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 90.8 KB (90757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:747de5536533068d15779efba06a757f9942ef8e71b18d6d8c4acc3a763c26e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3631362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e953c79b15a3e61e16af95e76e6bd041282d01a7deab1083cea2067b2d2c9b`

```dockerfile
```

-	Layers:
	-	`sha256:634024d10ab256787f98fbdca8088419911bcd38f03928e07655574e34f9d22b`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 3.6 MB (3617144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e294c92a076503cc4d7b05f08e7f6cc9aaf947b0689f6728b1400ec89378d7d4`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json
