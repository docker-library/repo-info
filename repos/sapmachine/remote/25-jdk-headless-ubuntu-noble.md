## `sapmachine:25-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:2deef1ba881faf307438c093c6366ab32d4bf3b32b5af2dec07eed37b686d669
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:ea300f0b2d340e8d3ccf0bfb6a54835820be58ed8785652dc1fc4e0e5aa355bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252857108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42c2aa1796a151640a9327608eb12b8d89bcdbf7a0d2bd0d1e0120bce3610f4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:24:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:24:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:24:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0296b94446deaffe7995a66158ee710edd66f06739c0027a13c4748be7361542`  
		Last Modified: Wed, 22 Jul 2026 18:24:25 GMT  
		Size: 223.1 MB (223121507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:483e7c2229431e23f1b7e1d32ed75dcdab5c8c72e41532ed279d1782b0ac09bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2359926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5dd7c50c3670d01a485384549885db299c3c973a671ca29d7d2e4fad41db664`

```dockerfile
```

-	Layers:
	-	`sha256:90b980d14d79ad1de5495e406bc771a8edf2376a29796e6315ccbd2c63b37e4d`  
		Last Modified: Wed, 22 Jul 2026 18:24:20 GMT  
		Size: 2.3 MB (2348661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c405527ce979b1ea64e150a5602df39628b27d80a649f1951c3f130c553aead`  
		Last Modified: Wed, 22 Jul 2026 18:24:20 GMT  
		Size: 11.3 KB (11265 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:97fca61fe015b56f0a2f6fc7abaa150a993477b21e71a591d42008324f4d833c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249771910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5efcb7ff1b6bd0c44d85203ed0d9dbf4e9afd1dd149a181c020a8dad5360a05c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:22:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:22:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:22:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77e0c3720650beec128b5e5ebd7511dbaa2d35b210b60fb2b63979054b01341`  
		Last Modified: Wed, 22 Jul 2026 18:22:45 GMT  
		Size: 220.9 MB (220887730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:edf7e2b6fce872b913d78ec5a47d2388bb2851b2d53b47c2e135a44c48c642a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dbd3317de9221beeaf48d86e771021f481fb28beda72b3008ce637d735f28fc`

```dockerfile
```

-	Layers:
	-	`sha256:88ab594ba5a2208f83da66483f4b698f3520e8406963c33d8defe5ed9804afd5`  
		Last Modified: Wed, 22 Jul 2026 18:22:40 GMT  
		Size: 2.3 MB (2349201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b526b4c38746da064ea056ab0b14f4088ed9c30f2133ee8cf3f13ed1d0c0d440`  
		Last Modified: Wed, 22 Jul 2026 18:22:40 GMT  
		Size: 11.5 KB (11453 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0b9b151e70b8585064a8832b9bb9ecd82940d9b7943d44af4c8256a21209ef0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255513975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d547ac908d6558ec022c874efa58f643c2fe684975167c6416fc44e5098fc6a0`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:27:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:27:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:27:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff69794c90906fc25b0ec4ec67720562d4bf982250f6d382f151e9f188bb1c1d`  
		Last Modified: Wed, 22 Jul 2026 18:28:24 GMT  
		Size: 221.2 MB (221200499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a54e922f74f034cc0acde238eb8f66a56c20e769180349f4c230be5f93b85549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2356883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98f8a4b2fccdf96cc8e9d464e2950b8ac4563107efad3749a2e8f84edeb8cc6`

```dockerfile
```

-	Layers:
	-	`sha256:e8b30f329b1ba37d115dd54aa417eaa8cdb33c8801d2f44531b3e5aea7fd4188`  
		Last Modified: Wed, 22 Jul 2026 18:28:19 GMT  
		Size: 2.3 MB (2345532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68c8a50eec5a068941900bc31e797aa9cc57fd41cc0a70ef3d24430b8ff72b1b`  
		Last Modified: Wed, 22 Jul 2026 18:28:19 GMT  
		Size: 11.4 KB (11351 bytes)  
		MIME: application/vnd.in-toto+json
