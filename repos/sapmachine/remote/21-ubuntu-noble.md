## `sapmachine:21-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:701a9f10d16130748b91ec48cbfbf6a48fbe2d0e1de510cb38af8f9e1435856c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:138cd9a5d60a006b598d07682895e9a5f1030e72ad24c5538a0c1447e6efd048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250262003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ffe487744b5ae41e95cc1479a4ee947fcb9443c83312adb79dbec13efeadcd`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:41:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:41:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:41:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47cd6345f8a6b28ccf6cf5e68ab3b69b7b4de33628bff0ccb9e978f295cd59cf`  
		Last Modified: Wed, 18 Nov 2026 16:42:21 GMT  
		Size: 220.5 MB (220468780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9ca3c5fcfcc266fb4488ac705f6330f8a8d53fca4e275fa495ebfdcaf61821f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f0a5c4556f1c007841e1a726fc2986d4164f0bdee6c37bc9af69ef1cbecba91`

```dockerfile
```

-	Layers:
	-	`sha256:c12b5f9868987c8bc9fe68884d8822efde83dc65db98d4b6d67f3e46607765a8`  
		Last Modified: Wed, 18 Nov 2026 16:42:17 GMT  
		Size: 2.6 MB (2609171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:880e35946ed8859e658947158b85d8466c4a6833b10344ec202cb844d462f54d`  
		Last Modified: Wed, 18 Nov 2026 16:42:17 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:fd0b99bf45325fc0e32fb2cf481037bf7566ab9632f4a44c5bf5dd1b758c0a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247640788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af468e1509a22c69a770ec378525b71c11f492133c982b43f15804f8e730b59`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:40:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:40:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:40:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8350140160ce1d7c6160abd0d3137c692f3fc5f8663c6b2ee45e97ed23a24d2a`  
		Last Modified: Wed, 18 Nov 2026 16:41:05 GMT  
		Size: 218.7 MB (218675530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e5aaf0432c3e76383170c8cb997405b9139d10fa3ce48950421d9cf7587b3968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2623410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60af168544e48c7ddd476ab075f03ec34a30a4837a47cf0d6a6deb6cb02cc70f`

```dockerfile
```

-	Layers:
	-	`sha256:f230c149d0aa81ba2e5c773690809386db462f708521cf3272d59323335beca2`  
		Last Modified: Wed, 18 Nov 2026 16:41:00 GMT  
		Size: 2.6 MB (2609783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efe38549940f7c880530fd0a68c4c8e787f4050b82860d26260968dd27a97f64`  
		Last Modified: Wed, 18 Nov 2026 16:41:00 GMT  
		Size: 13.6 KB (13627 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:73569002d4d69856a7a5acb0d3945692ac08d88a35ea4693d6e27de9df83239e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254767595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553f921a646301ea08598511adb725dcfdcaeffb4e531c0a3d5cd90a5794fa59`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 05:06:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 05:06:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 12 Nov 2026 05:06:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f110bccd5b75116b3a429cabdc558f97c97b0b02f7021447a986fcd1f4ed784`  
		Last Modified: Thu, 12 Nov 2026 05:07:22 GMT  
		Size: 220.4 MB (220361084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2d0c1bb6fcee3ba5eda88a0ea198bf2582ed53529d14ff550bb64d4a8c18dc46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88676c7525ea0a0cf820869355bfb3eadff0fe880bc98593c56fe1da475b698d`

```dockerfile
```

-	Layers:
	-	`sha256:cc68a66470449ec0acf83d2ef8b802a2a4be8895b80b4b813b5da3b4c0664a59`  
		Last Modified: Thu, 12 Nov 2026 05:07:16 GMT  
		Size: 2.6 MB (2606811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96cc1fc5a095a2e7f53894d6776bd7aebc60ac4828ec2541d0d0c0280d2bb3d9`  
		Last Modified: Thu, 12 Nov 2026 05:07:15 GMT  
		Size: 13.5 KB (13528 bytes)  
		MIME: application/vnd.in-toto+json
