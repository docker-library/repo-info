## `neurodebian:nd140-non-free`

```console
$ docker pull neurodebian@sha256:ec7035beda6fb5a7ae6d161d4bd9915d7732d2a776ac2698e9d498d08ee7e874
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:nd140-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:cd8b502e2c147f5bf1d165130a5304ff25a0201230a2e66c9772fd6506275fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60904915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf767ca6e4d8cf0d6c04eb3673ed3308392475634289e5a860836d80099de9f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:48:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:48:20 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:48:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:48:23 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2542ab8a72d1a57e4ecbeca684de22f393177fd2ad182e2264ae04b19d682c8e`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 11.5 MB (11479882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95255c0d282dfe2a85f71ab8fdd4685c15fa9f0a9a5791fd9e0478179eb0f3d`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a6ae5dd7804ddee8ffd56e3f44b3f9f16f6bab097305cefcd9f7c1359174b4a`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994259980ca18a5eb9357d2bf9c6ef96ac116158d07e8352b450e33c226ce7db`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 90.0 KB (89978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6e6a7b133781b648cd018a5f902f2ad8b20bfc8af5fa7ddcf6de2fb290ef2f`  
		Last Modified: Wed, 05 Aug 2026 00:48:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:85fd4f14414e8b81e0194e7f37dc0739765493ac6617e92645de64a41599f363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3618256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603d98146f47973c6b551ebbc544104479936f112ac76685ae5e5add12590c7d`

```dockerfile
```

-	Layers:
	-	`sha256:6be6ebb60f6745d0f471b6f69c462558f6d507d9089d0ea440e10ae6253c412c`  
		Last Modified: Wed, 05 Aug 2026 00:48:31 GMT  
		Size: 3.6 MB (3602297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd942959b690fe2abbdc69d1238286aa056fa5ef00ec301346fef1c36d87c4e7`  
		Last Modified: Wed, 05 Aug 2026 00:48:30 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:7c969228828acf0e5bb213551368c7bf9e51f946c08772f005ff0691a9534c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60627441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad360c51d6e9e9f53f7a1e5abd00175529e0901a48bbf050b7d57f826b4b910`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:51:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:51:09 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:51:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:51:13 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:bfcb34026e1133159b75d54bd9ab0e7c3b167036e1a86690a2e97c22d8614806`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49361777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aedd3fed54875886f702d83a0523fd753c01abb243df2188407635e214039bda`  
		Last Modified: Wed, 05 Aug 2026 00:51:21 GMT  
		Size: 11.2 MB (11171747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1820043a4d5ddee6af1947d2c450d1106b14d88f73e081e6e267209ce0c79c8d`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e72d3cb57757cf7279d7dabd8fa283858079e6bdac3731c1aa4fad3c49cd83`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248f6abd58cdad93f7d50aa9dd93b6f9699134a4917d07c3370d14b59058423c`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 90.6 KB (90568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f56aea95813da6e1dbb518bff3a958d6d91308be8f563a8af58b1a8d898e68`  
		Last Modified: Wed, 05 Aug 2026 00:51:21 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:103cbec19bd03d3bb027f46bb734079a43b14c92d0e6ddfa0843d9fa3b954e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3623156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58af5309396556f2cbf5a06b4ddbc651dae7fc0bf98a941ca4c26e340b255457`

```dockerfile
```

-	Layers:
	-	`sha256:3b1f2f0dd4c3aecb670406edcd4f190c6fab4b8239dc70b8cf9bc5ea3396b3e8`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 3.6 MB (3607057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6ebec002d03a971a20200f8c0566682374fa6351a45e0c7d42e15465cf4b827`  
		Last Modified: Wed, 05 Aug 2026 00:51:20 GMT  
		Size: 16.1 KB (16099 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:nd140-non-free` - linux; 386

```console
$ docker pull neurodebian@sha256:1919514b15c9614d60db97ec901e31d6d575bade2f5153d264aac11847225efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62477353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0934c61bc7e565bff3be08f7a02492070ca18858350c3e36340c712fa2b1b507`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:49:18 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 05 Aug 2026 00:49:19 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian forky main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel forky main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 05 Aug 2026 00:49:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:49:23 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list $srcs # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9040e73ec7930a0aab4989400c215473f1bc7f0f9dd88c0f7971fd63bf320d35`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 11.7 MB (11715009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6d820fca052fcab0d3e160dd31e235282626e77f8da137ac36604d69827dfd`  
		Last Modified: Wed, 05 Aug 2026 00:49:30 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9675bbb3f78ddbc8bc970773424f21a59b5bb1922cacd5d7bb842113598e887b`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4767fd126f935d2f8038a830d848ef7692460428e848758a4dccc5d234c760c`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 90.3 KB (90300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092c3cf0a2b78e16f80c9de19a238c14401830581cf10cd9b54f7ba4f7419658`  
		Last Modified: Wed, 05 Aug 2026 00:49:32 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:nd140-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:d080cf48569b9abc89a8f7cd5db44c3fd51ff9b06dd081988f4043175b8d804f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3616074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58be7161bb95555e8e03b575a926913d64cef1e66a016803e1db223a015ef097`

```dockerfile
```

-	Layers:
	-	`sha256:ac05026957357939ee7a016b9efda372fe6d734ef8c1be8eb93998c311a86930`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 3.6 MB (3600145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e27b223454e27a08feccd0e01e33750e5c1d3130d073399244648b6e28bc5e37`  
		Last Modified: Wed, 05 Aug 2026 00:49:31 GMT  
		Size: 15.9 KB (15929 bytes)  
		MIME: application/vnd.in-toto+json
