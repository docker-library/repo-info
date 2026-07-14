## `neurodebian:bookworm`

```console
$ docker pull neurodebian@sha256:28f2fd540f7b766036b557ac8190d78b967470b7ffe3ec357b3043b5a321efbd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:bookworm` - linux; amd64

```console
$ docker pull neurodebian@sha256:9dcf142e45da10a07f1e7ce813116cc88b0f4bca575005c373166ccc1047431d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59866472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc6ac206da275ea9cc52c97ca1bcd0b19492aca82d70f574f0550b2c1af22e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:48 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:46:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:46:48 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:46:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4855bd21e4e8a3515dc466b892c870c3e2bf0247eba82536e99fa46e9fe57fd`  
		Last Modified: Tue, 14 Jul 2026 01:47:02 GMT  
		Size: 11.3 MB (11273505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d630e390af86f9810619d22b91a5b0999d3e6ad22fd91a771899e81cc31d1f5d`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab406595373f1dee101ab9a5fafaff0b9cd6a73ddc96b91b5e359c97dc4a7859`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fe06b79cf64e33ce3eea91fa4bdec8798b6d9b594a4bcfc91e14dfa3b63de4`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 93.4 KB (93394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d89f2793c262001b6654a070d6f3cad676014c4b229aa71e4f42adaaf9f1d651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69f0fa605d9bb46b456729a94655d33f24efcc6f58e2be2f218ba908e3fb8f8`

```dockerfile
```

-	Layers:
	-	`sha256:0e6cd4ee173b0f6caf3efbd982dd0a5ab00a5c15cd8843897ddc830aef0defb3`  
		Last Modified: Tue, 14 Jul 2026 01:47:02 GMT  
		Size: 4.1 MB (4075951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d671e4cfa9e7a58f0da3f348acf22ff81600d778d8a3bbd6d0376f4d90d797be`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 14.0 KB (13965 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:367c93cb9b46c053da55cb20ff9170be49e55af90b0d2b5b7b5cf4d0379b309c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59732384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5da598d22c60c2520add740d1d85d644c2169190d675b7e631dc599e2b72c7c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:50:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:50:16 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:50:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9f3b8bd24bc6de117aa842b9de4080e0b9a24e986305e04d093a198ca0f75c`  
		Last Modified: Tue, 14 Jul 2026 01:50:31 GMT  
		Size: 11.3 MB (11252941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c19695fcbcaabe817efd9dbd602cce1a20ea91c3251b7993c6e450e4db027b`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 1.9 KB (1898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3135cd19cdc87bf9de6577b99b8a71f72092dc47e19da5665d87d4c2adc0fe5d`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 274.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f6fed1672777b188d82c2c4e452ebe8139773b26d2614c56ff6a3ccae257af`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 93.6 KB (93582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:2eb6e5a0fea6ce27e22c093652264255c0da0a83f51062855c1b4c1ae4394b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a482da23d487878bb071209df6de369910a8e861b07386383902ccfb14124b39`

```dockerfile
```

-	Layers:
	-	`sha256:4fa6d9a017f9d9f788f18f9757e52a9b100747d7c16857d5442d0b2f1647e7cb`  
		Last Modified: Tue, 14 Jul 2026 01:50:31 GMT  
		Size: 4.1 MB (4076193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27bbb0d9b3a56b12c66bb37c671d379fc388b11914f483d8b0a14c320e5f0da6`  
		Last Modified: Tue, 14 Jul 2026 01:50:30 GMT  
		Size: 14.1 KB (14089 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:bookworm` - linux; 386

```console
$ docker pull neurodebian@sha256:38302a000bea1e8c5af617a5012ef723ab050b136e4eaf20fcc4382097ab4622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61274035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb455368650de2bf2122ca7e43e3e06149ab49b2dbd8e011b0040b01ac32c8d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:48:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:48:28 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian bookworm main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel bookworm main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:48:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5701209877286384a72fc65bd913b909f5ce768bad1e96b92c976f61728ec0b`  
		Last Modified: Tue, 14 Jul 2026 01:48:38 GMT  
		Size: 11.7 MB (11693007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4cc8c8d28df8ec6e95338de947bb3b77200af835da38d3c8c9083aafd6b4bde`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5a057379cd72530cdca33265f704314100de9b76fd59783559b3197eae4b2f`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1fc12449d016568ff5e9d28c1c0517022281d3455aa83eea109dd87d93ce3a`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 93.4 KB (93418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:bookworm` - unknown; unknown

```console
$ docker pull neurodebian@sha256:8437d08a7e58b2a2df1ef57b6cf4340ea7b924a2614e0d7911b5930f609f3006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4087854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de77ad3e248e162fc30551fbe8b99669c44b6457f0c61794826583f0c794763`

```dockerfile
```

-	Layers:
	-	`sha256:6aa7a915d398015b61ac8990f7760bdc55e98c50e4b0596395c3f029d27da59b`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 4.1 MB (4073918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6359e6eaf4a30ae057b6f3f9abd7f8e6c7b89bbb67b44afee9b2489b197d46c9`  
		Last Modified: Tue, 14 Jul 2026 01:48:37 GMT  
		Size: 13.9 KB (13936 bytes)  
		MIME: application/vnd.in-toto+json
