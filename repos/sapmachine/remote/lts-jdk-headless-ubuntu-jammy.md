## `sapmachine:lts-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:472a71fa0ba894b24bb6fe7f92e98160b63e9939b4bd60ee2ea9278a2e85bfa1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:60e16861f58e058ea5f3f1417ecc46f74b32cc6638d589c3d8d8b98533d3a032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252451459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:055d541636baef509674da4de04f8f65b8d197e84b39228e0096a1239fda8665`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:24:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:24:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:24:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8102bfaec885985d516311680e58bb3646a0532c476cbad2f816aecd439d5197`  
		Last Modified: Wed, 22 Jul 2026 18:24:44 GMT  
		Size: 222.7 MB (222712578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:349496a9e1e7fdb4a20ee08627ed06944794f160f15ac229061f8f7ab493872e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2379165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:733d12df159fdf16e6e6d0d3ede00010a37e52c5494582b82de1f4f48925f4c7`

```dockerfile
```

-	Layers:
	-	`sha256:4e8cf85d2744affd745b20314c8f82939755ed3c3a275d1aec729e8b3fb66dac`  
		Last Modified: Wed, 22 Jul 2026 18:24:39 GMT  
		Size: 2.4 MB (2369580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:971a499aeb1b79b8935a4224f946326b1416797de98c78fb3ddc46abf4b95df7`  
		Last Modified: Wed, 22 Jul 2026 18:24:38 GMT  
		Size: 9.6 KB (9585 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e1ca6ef57ffc5149db4b46762ffd9df86ad6c5fb2310a9afef103eb0c349083d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248055922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefb1f6fb61735beb5f7a349a2b01fec92c30f4b3b214db5d6d5cf0fb936c672`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:22:31 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:22:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:22:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d814745e84cd883346a06f873ca60b6450fa4648c029bce268194a97b849446b`  
		Last Modified: Wed, 22 Jul 2026 18:22:54 GMT  
		Size: 220.4 MB (220442738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f9e351c6ed7b638f23f54da2f0e8cfa13797fda7f41b3c893502552d1b6d8a4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2378985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22429b340120556c347d37cc2ab8e5813573bf27e374193cdd186919c1d5b63e`

```dockerfile
```

-	Layers:
	-	`sha256:4385dfcf6a4782f2213af4c03e451923f7488d1dabcab6cebdfbb8aa057c818b`  
		Last Modified: Wed, 22 Jul 2026 18:22:50 GMT  
		Size: 2.4 MB (2369273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:025fb0100555698fca75e0f5ec1d6b1cf9656f5ae4b9c5f3a293382479075a81`  
		Last Modified: Wed, 22 Jul 2026 18:22:50 GMT  
		Size: 9.7 KB (9712 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d8e8a6c227a6de992e66af340650811b6262d54e77a961a0602d5ce1dfd45d34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255357343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58d24e0f4def91354f5e1006d73afe6121f7bdc9984a57dfab9cf5d5cc05acef`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:30:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:30:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:30:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9268c7b4a5b306071d49c38c3d9cd713ab9ab700202713760a40c924a29e8081`  
		Last Modified: Wed, 22 Jul 2026 18:31:15 GMT  
		Size: 220.7 MB (220715475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:17a70205dc33b3a42cca5509c13433bc269d3035e5b1ca039b1ef6c05f1de100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2376111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1396e834fa64d69d6ffabd3e0768a552f051e6aba3bb163e1f6ddce4b5b3c932`

```dockerfile
```

-	Layers:
	-	`sha256:b0367ad25ac96b789ca3edd13c0cbd224a0d01e62068938b058b4c304fcad42e`  
		Last Modified: Wed, 22 Jul 2026 18:31:10 GMT  
		Size: 2.4 MB (2366470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27a4792b436f5164afdcd2cf7e473b9efdee968993591235c36b41fb522dfa80`  
		Last Modified: Wed, 22 Jul 2026 18:31:09 GMT  
		Size: 9.6 KB (9641 bytes)  
		MIME: application/vnd.in-toto+json
