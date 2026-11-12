## `sapmachine:21-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:72a30979d6d0b6b9ec79fbf03b6f5512434719b2e17c70df26876424a67702a8
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
$ docker pull sapmachine@sha256:e43b12c0989ecdd70fde9224f5084d4fc587eafaa64f9010ccea74021f15451c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250246259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37cb37d1d430b86b126895b06b1cb5bd9075ffdeec2d19f5a6b0fd1fad681afc`
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
# Wed, 11 Nov 2026 23:40:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:40:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b9a20a4726b5ca3ce86e0b4f39b97cb3a42913f4e7df9fcefe635f0b8f860d`  
		Last Modified: Wed, 11 Nov 2026 23:41:07 GMT  
		Size: 220.5 MB (220453036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5e2a7f8f7059b73e71932da66968bf27788d5e4f06702f96f784a4bb140bab6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0980c98e46ce5e39fb9f41ab73bebbaf3b940fd291e8afa60fa2fa601cc1565d`

```dockerfile
```

-	Layers:
	-	`sha256:1fdf03ee2790c62e194a6048affbbeb38759d9633df0f1af7e0fe398686e0f63`  
		Last Modified: Wed, 11 Nov 2026 23:41:02 GMT  
		Size: 2.6 MB (2609211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcf18aa752249b87afddb1653e8dbaf83a5f009eb6b4b134390372d46674c922`  
		Last Modified: Wed, 11 Nov 2026 23:41:02 GMT  
		Size: 13.4 KB (13413 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:93374fe4f46cbee38baf6fe2cac1084773714ad44651dac3a687d51834e8784f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247635741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f7e12e7acd44bb3071b6546c207a3a85371446106fd8a9e0d367cb2391f914`
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
# Wed, 11 Nov 2026 23:43:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:43:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:43:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ba902a68b112054bc8423f02db84bc4529a621abd300758b58d903ade26dd2`  
		Last Modified: Wed, 11 Nov 2026 23:44:14 GMT  
		Size: 218.7 MB (218670483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b37107ca86094fc773d389693d34bb304dcb8a184702506f99383dbf3a42332a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2623484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df68e048158a03d254f1ab684b1485ad233a1ba89e5d2d2832895f67dc3d97a7`

```dockerfile
```

-	Layers:
	-	`sha256:414493045836ab1a696a2c7df244e96b08dc7ce16efb5e23dc9962b0aee6478d`  
		Last Modified: Wed, 11 Nov 2026 23:44:10 GMT  
		Size: 2.6 MB (2609823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73b42fd60c9be5cbcc3bc510f52d4eb5d45290e99c5a6b519fa91cde4053d051`  
		Last Modified: Wed, 11 Nov 2026 23:44:09 GMT  
		Size: 13.7 KB (13661 bytes)  
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
