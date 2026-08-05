## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:f538ef333f6243f432f5deb8e765738dd95de4940b54656b571b29335d4acd04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:a517bec7cb748d22ae6af5b510e1b3d467f4c61e5492ecd2f04b0606d246c425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60961028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b165de0a330118e6b12915224182432e5fb889b13f9e69104997e740891d586`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:48:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:32 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:32 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:35 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bbb6ac21fc5892e1a8ff342e50e311b39a8e5fec46f8383ed1d9aa3e8766862`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 11.5 MB (11480617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea0bf181760602197ffc2aa976ac06ef2f43b0ee5d2c77c86a8ad274ea72607`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecaf90a410e36f79e6b709068db298b806c80893bbf8ca73fbf2c86deefecbeb`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99af9fb1def61d0100b48ba91ea7f44459f12f1d04ac759e36c0710feff03167`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 90.0 KB (89987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91320f1d8e47dac87633dfa3b46cb628bce959f1fbdb6e1a15f142af119966e`  
		Last Modified: Wed, 05 Aug 2026 00:48:44 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5c4f0dbee1ca743295e147492f8d711416a513b07e5bc3a82f5530ba782b69e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297c218566363e7c9fb637408366fb0ee2a92c3dc1b6a260b34cc7a4ce6a7459`

```dockerfile
```

-	Layers:
	-	`sha256:5deeec1ba8d8730d5d657a098a1c7efe7df25241092aea35113fbc2df4b1e2f2`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 3.6 MB (3602903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f98a4f5f150fca2ccd44e89b75565586db6d03a65ede8b1a21b9d89b45154f84`  
		Last Modified: Wed, 05 Aug 2026 00:48:43 GMT  
		Size: 15.9 KB (15930 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:0ca7489f4fa8cf2dc3cd8f46ac54a6e4e9841c385f948710a734bf4fb590aeb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60666942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d6f586e36615aa0ed2edb29b8fe1cbc1ad6dee1ff6d8dff780ab7b7fd80c18`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:51:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:23 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:23 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:27 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a57a6e9c43887a045814a2d7cd84754b3ba6bf85c26bb62c1127277b311f9c9a`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49400019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf2d9d5bb2a0959df03542a40f26e280b90df35f55b4f681a125d447fbeae26`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 11.2 MB (11173014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda602f8aa7919129d4b57be026464d392e944f39f2908d2d115ea4cedb8c107`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b951938346c22eac5ef00db9db2be92fd44ef646dad0ddaaf4fb7f60845d76`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 267.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c57bf1ec072328abf9c0fca91897d245ecdfee063325dddde8a8ceae1502cf`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 90.6 KB (90587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f038e595411cbb5cee2ebf767ff1e7227bb8fe26156da129de22844da9c729`  
		Last Modified: Wed, 05 Aug 2026 00:51:36 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:9fdaa1a37f580dcc687ece9cedb83385838fb0378bcc968d00cc135809f5d49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f999f8eaf2b563690795b5474d0205985c3d79420677b64c703ae415149e7b8`

```dockerfile
```

-	Layers:
	-	`sha256:75feb8b951439927c06cfd4a8f3a2cde3afd251aaf61ca25d9abbd29397ab54c`  
		Last Modified: Wed, 05 Aug 2026 00:51:36 GMT  
		Size: 3.6 MB (3607663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16358083f44e51c86828cd51dfb33eb25df2af5b37756ea2a28211cfacdb703a`  
		Last Modified: Wed, 05 Aug 2026 00:51:35 GMT  
		Size: 16.1 KB (16071 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:fe60b20ca095dda236b920134d734907392172b5dd41e2c41912ac86a109970b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62513117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9503a032ac6b804cb08e9dd55387ce5d35a5f7caa9f8a14c7862443b6a8ed890`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:49:41 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:41 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:46 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39eddf4229305dc6c3498743cbbb5e68bf7fbb516f0f84881016258abb1a7445`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 11.7 MB (11717094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b96cf8a4b5cfcff36eedeb03ddfa55e374cd08be0769f5d989875aedccc5629`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2f1ff8fbab6120b5f36cfa66fcc2c5722a826f6d16980473da2469f59ae1fd`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda6ee3a1393b24dcf2bce18232647935d8d443a15467daa3ebfa4a3c24fe834`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 90.2 KB (90224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b4ae6b30509f4045a31e4afb3050919e54492a48ef3ac74e49846022817140`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:5ffa1f8b2d0d26f1dd1735a891a4c06310763ac617a84e0ca48c5a01ae87b7dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d001c1dae08f7909ef729ad1fe824748a9c848819b400d3372da83f3459420b`

```dockerfile
```

-	Layers:
	-	`sha256:195fd32f7dc6f306210c13084e1ea04ca48fff56d8c30ebf393de3e97f32b0a8`  
		Last Modified: Wed, 05 Aug 2026 00:49:54 GMT  
		Size: 3.6 MB (3600752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18828331a6cac198b6d5bdd2afbf27c5b12db9beb1fada7d7653272a4ac3073`  
		Last Modified: Wed, 05 Aug 2026 00:49:53 GMT  
		Size: 15.9 KB (15900 bytes)  
		MIME: application/vnd.in-toto+json
