## `sapmachine:21-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:4e7ee91cb3abb54c9b49efadbe2e69e2cfb0a0faa38eaea2972d2f0251024291
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:70d617deb992f8b6cd5e9c4e15fe823a1bd431d0da33b00312fe2f497386d472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247375597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86efc1b16169c37b7f66e98a5757c9b8b8b48daf7b9f5b5f1e2ec29b4dc56d2`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:21:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:21:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 01:21:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab0efb08feb3e8f367a209a15b830a88aace593257a08c5c2b1c506ce3410d7`  
		Last Modified: Tue, 18 Aug 2026 01:21:41 GMT  
		Size: 217.6 MB (217638654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:30ccf7ae249f94857b6b15e0770701e6e4a29d8b56c5a7586b86d1b2566781bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2229a5bacc2b6a512d85c28873e891f06dd33b45960062255928f6f124cf2e`

```dockerfile
```

-	Layers:
	-	`sha256:a7f814a918b757880bfa402db2133896e1d008f4b4371fdd92d7546911e46c0b`  
		Last Modified: Tue, 18 Aug 2026 01:21:37 GMT  
		Size: 2.4 MB (2379412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7efade02d267220a9622909f801f6a1ed16c409e0a12d2aa11f3039f036db129`  
		Last Modified: Tue, 18 Aug 2026 01:21:37 GMT  
		Size: 8.9 KB (8890 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:08436a1f1e4bf8e3faa734159e0c659677301c52fb818df3be9700ce00196539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243431006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b684c33d68436f6b8e9498e9cbf59b9308ce49174db8b4602a8263ff0bc088b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:21:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:21:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 01:21:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a5c88b19a70e208ea5c150d2ca139a6672b17c2c84e9ff8a18bc55e18ffd4a`  
		Last Modified: Tue, 18 Aug 2026 01:21:26 GMT  
		Size: 215.8 MB (215810553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f6f26a5ac96684d2923f50f3e84ebd4ad284710315c60e8c476ac43ca6c4b7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7cef2206775a8143e4c1a8f9c852a7ee45472f488fbbd55e60ad84482a8d4b3`

```dockerfile
```

-	Layers:
	-	`sha256:7d5a1ef95e1287610e73cab51b2f845015041e9719294d2e308bc046995a83d8`  
		Last Modified: Tue, 18 Aug 2026 01:21:21 GMT  
		Size: 2.4 MB (2379084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c13ac1e5ae29d3dcd75243a2c20c384226f377837365f5bc81416572b7a722a2`  
		Last Modified: Tue, 18 Aug 2026 01:21:21 GMT  
		Size: 9.0 KB (8994 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:99361faf4a4e3a2e7aae09b183f2b189b70d3170e6cb04cc0a0cf309be63ac4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251931953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5430be1d73bc29d59e7ea13ba915716540fece63ef240488c96957b42170231`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:39:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:39:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 01:39:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00283bf588599da235e8f72f6c5d44402ae41e6dd9775a3631673d5bc6aafd4`  
		Last Modified: Tue, 18 Aug 2026 01:40:40 GMT  
		Size: 217.3 MB (217293808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0eb9fb428e964c8828ff5b97356ed920f6d76b6da634561877433ffc5eaf8192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c20e1050290250b1467b54749ac1c3c4e5aa2d76dcf571698843f5a4d972df0`

```dockerfile
```

-	Layers:
	-	`sha256:8dbb43e78cf3b6a4c545e362a0f953af55856858b3c2da4812a907ca91400fd2`  
		Last Modified: Tue, 18 Aug 2026 01:40:35 GMT  
		Size: 2.4 MB (2376908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be73686027c49582f4fb818343751b27a4528cedb4d0754a88eb6330f2d9f150`  
		Last Modified: Tue, 18 Aug 2026 01:40:35 GMT  
		Size: 8.9 KB (8934 bytes)  
		MIME: application/vnd.in-toto+json
