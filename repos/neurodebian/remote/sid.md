## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:e5b3478a811c966dfbbc675f56e32c8f26fc33c1f9d6cf557de865ed81cd79d3
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
$ docker pull neurodebian@sha256:e4d949feee66473abcdf54296d6ed339c1ca4ee6fb79ec93986bf77f3b134dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (60960642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1d70d7a0f04718da2e71ba4f6a99f5fc665cb46d60aaee34a4d706743a50df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:48:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:25 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac7134c6d9186ab8b7dbf7bd86e108ca0c932583534551072dc93e66a4b9f68`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 11.5 MB (11480633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf142ab5c8529c14a0b3ca92c8dbb817b8e76a2d941267e919da0fc1dc001fb`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b095fb3c4659027c4690f7fa055f22a317c32e177865471c6e483419e94ce7db`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7a12b49549448c9fc19013fb2e953e5c18219c66206b8ad9ecf1d30beb30ef`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 90.0 KB (90006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:611a86c70aa98ad5b47739f0461cff091d4836b383a13a31f2200a7a5eb576c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3796d6f3233472aaa457c25bc4089a78f7afeaf27addfa86756622b4d1f9f2`

```dockerfile
```

-	Layers:
	-	`sha256:983ba173983df8070b4d53352d054396e5c5b23a5d0af14dc4544d41af3d6ae3`  
		Last Modified: Wed, 05 Aug 2026 00:48:37 GMT  
		Size: 3.6 MB (3602867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e47c5627f1f788f4a0bffa897e954480405b122fa6a60f8eda592b5738846a5`  
		Last Modified: Wed, 05 Aug 2026 00:48:36 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:291b503c99e0d73a6628d4d62261df3fa79821563c4795a1aae7268e06b753e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60666545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fe1be692cdbeab0e1230fd12a01c2214b04f27acdffb33d65ed5e6cc6521dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:51:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:15 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a57a6e9c43887a045814a2d7cd84754b3ba6bf85c26bb62c1127277b311f9c9a`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49400019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5f408bd1fc578cec4baeb1babee5b5d78a456ffb383cf9af946bcf7b74cd15`  
		Last Modified: Wed, 05 Aug 2026 00:51:28 GMT  
		Size: 11.2 MB (11173050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72242cdf8cbd754e7612b1868535ba89cc291d980a4610dfd05f34b7ef1515c`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cf380e473f0c471ba1236fc44d87ca948ddcb63c4972472829113509242b9c`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8e4ecd1b6e8ddf52ee5eefb653221bf39b6e70d2a022995076ef16b2111953`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 90.6 KB (90571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:929f85f59e26ec149054590e8f8a65699d912a065eed01181106fef7cb539dbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3621656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8c0f639d6dc6a443b598d2c038b5a1e50b3e399a691a25abf53130a3c16004`

```dockerfile
```

-	Layers:
	-	`sha256:090cbeac22757c773fd9abc63e9df89995e76f10e25eda6aebb3be7c9d9e6be7`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 3.6 MB (3607627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:829a6c2285a45286a44f4e84ca054f6bafd57cdfa3862d6977d4a69626555393`  
		Last Modified: Wed, 05 Aug 2026 00:51:27 GMT  
		Size: 14.0 KB (14029 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:sid` - linux; 386

```console
$ docker pull neurodebian@sha256:f5cf06294f5f4a698404b3d77105647df7590afc6cf4860dfa9aa66c71f19bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62512791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397cf6d1fbe4aab0520ddcd98588996616e929baaeb77a0b5c7e291ca60c2803`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:49:26 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:26 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian sid main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b61b6a4ebfcdd6c039a5d180b3b18ee9ce5f66d37284539c979790961740005`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 11.7 MB (11717131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc6073913f8cb705a9aec08618482d9761a122261be2de0f833392631f86c455`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:177f415b570fd12ef60e0a16ab11e8ccc56e5baf4f10835fc3e867424c7a4f83`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 268.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b9537caa03c7712f8d28198d60d1f6a4f9e8dd00db7a7fbff841482a843475`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 90.3 KB (90280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:sid` - unknown; unknown

```console
$ docker pull neurodebian@sha256:f193c2e371e2f9f1d52fe459fea3ba1ff8ae969664f568f78e6b81053353084e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3614592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784814d1701414a627f888af1b9583c9b7510095d59732792c48b86d01d4659d`

```dockerfile
```

-	Layers:
	-	`sha256:b4653c22cd2ccc6793f480866a029bb2486bf303f33704212aac9ccc971f8c03`  
		Last Modified: Wed, 05 Aug 2026 00:49:39 GMT  
		Size: 3.6 MB (3600716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37242d26b4196205e663f47ac61fddf3bb3f2b3194d2e4339ba233c6f67e24de`  
		Last Modified: Wed, 05 Aug 2026 00:49:38 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.in-toto+json
