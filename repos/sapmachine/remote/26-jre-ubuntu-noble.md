## `sapmachine:26-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:f6ac70089c3255657cdb4a2f845d9d94930b7dfaa4357015259d49cd11c83cd3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:c707bb9ac49ad43572887ae4919ca19aa9fbba55969b832574becd1163fa32f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91539827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7791f0ac2becca8e92d7586033d534dc8182e36e2526af5b6711356cfb042f`
-	Default Command: `["bash"]`

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
# Wed, 22 Jul 2026 18:21:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b6ab333c55731ba376ef1fddf6657610afbbb524de23405a6b2d7a439e87c28`  
		Last Modified: Wed, 22 Jul 2026 18:22:04 GMT  
		Size: 61.8 MB (61804226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:aac5e57708ade4aa9910ae0b445380e8df54515309f501ecb6e623a035b8fa78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8d60f6d4c8c5562da76232779f0887d26f4c9eed4a242ef1179d0ae998978d`

```dockerfile
```

-	Layers:
	-	`sha256:bd6688d7a6c7a5385c9c36d6a88f4430211cdfd190a1274b63a146995475336b`  
		Last Modified: Wed, 22 Jul 2026 18:22:02 GMT  
		Size: 2.5 MB (2526214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d05f3377e2d3c1f23bfceebfc14017198ec15624001b8fa40c05313dad350cd`  
		Last Modified: Wed, 22 Jul 2026 18:22:02 GMT  
		Size: 11.3 KB (11302 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ec4576f2a60d3a86e67b7e49ced17f10cda96aae7b4d3244da02d58d778f4f48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89700026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f4f81fbe8eb46034eca26d7c614a4e2db61aee8b6d1ca6e65a648114b9ec8`
-	Default Command: `["bash"]`

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
# Wed, 22 Jul 2026 18:21:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b475854d136dbe768145406e141ded74c948e13d5daeb5bf2579cc4cc4629730`  
		Last Modified: Wed, 22 Jul 2026 18:21:49 GMT  
		Size: 60.8 MB (60815846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1f2594e6df8a789f826003bb08a92134da521d8073e86e9a3a685dc4499fa185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566b0a05372ea060b4402939c344c3e262f380557c2b634d88eebcf49993d09d`

```dockerfile
```

-	Layers:
	-	`sha256:84e8bc7056e03a68fc44f0434b5dbbb1f7954f12f02c3924f7d1afdd2c2a64cc`  
		Last Modified: Wed, 22 Jul 2026 18:21:47 GMT  
		Size: 2.5 MB (2526775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d66b7fc9ac44574f123fcf5e691f89046cecaf136736f48e3990c5a4d867966`  
		Last Modified: Wed, 22 Jul 2026 18:21:47 GMT  
		Size: 11.5 KB (11502 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d1a261134f2f4d41790a6a0e3917acd07eebea18109bd163483b15381c276d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95728314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a82bbfabc30e0366292dd9beb8119a1bd5f750d32e2e0637ecc20aa79cbb4b`
-	Default Command: `["bash"]`

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
# Wed, 22 Jul 2026 18:20:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:20:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:20:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4c065bbaceeb986155f598e3d18d8b913695122e40122a150f10f61a3f194d`  
		Last Modified: Wed, 22 Jul 2026 18:20:59 GMT  
		Size: 61.4 MB (61414838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1817f01b259200941779d01a9946add1950c7ae4770b02c69cf0bf91573af6d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0fa52b8e91f10187b3e52d74bcc83f70eba630d2bbb647a007ba4a40a7cc79`

```dockerfile
```

-	Layers:
	-	`sha256:5e7e09ce7e528e19958e81d6fbb509b065bb8717054bac0f7b72a0b3d019dbde`  
		Last Modified: Wed, 22 Jul 2026 18:20:58 GMT  
		Size: 2.5 MB (2525106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b43eb6351a209a2ae7fc3f167c2b5faa37b2e2ce58eb4448b8bb920716097ddc`  
		Last Modified: Wed, 22 Jul 2026 18:20:57 GMT  
		Size: 11.4 KB (11395 bytes)  
		MIME: application/vnd.in-toto+json
