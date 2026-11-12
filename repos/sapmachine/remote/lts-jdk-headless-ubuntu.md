## `sapmachine:lts-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:95992da211fc3067b3acaad6395f77ee55765523938bdd282011e998c42cbe46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:8bf98e4289f3d2684ab5222e3d2fd0a5698963a00041629c7787653cd1d838e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253062830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34c1549a20ca61cd891c08bc2325f6e477ff1581d685203076e66856e918645`
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
# Wed, 11 Nov 2026 23:40:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:40:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de2f30d1f1dfbe56356472c37fadc71fdec3b4788b2dedb742eeddab6ad13e9`  
		Last Modified: Wed, 11 Nov 2026 23:40:35 GMT  
		Size: 223.3 MB (223269607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c1798a1175de3cbcbdb8826c317638350d27b98a5df4917ad1eec07ab7cd2750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d3c77ab6bec6dc0479a3ee6a706f21ba2a11cbae2a8fe281361ae209484cae`

```dockerfile
```

-	Layers:
	-	`sha256:85036b08fb3e301c8043afd4bbcce2307e5273a336aacbfd111a672b8800cb83`  
		Last Modified: Wed, 11 Nov 2026 23:40:30 GMT  
		Size: 2.3 MB (2348747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6c794977e7cf0db62d26facb604021df17c724a91c216e08c64dfc948685354`  
		Last Modified: Wed, 11 Nov 2026 23:40:30 GMT  
		Size: 12.0 KB (12043 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1f71609fd8aca7bf15eaf0889723564b6bebff0bfb0a249813240107f0497ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (249987489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d719b6517e062b2b99b11e360332dfbede77402171bae00114b83e06dbdfbf7`
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
# Wed, 11 Nov 2026 23:42:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:42:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c66887bdb24383a5714dba627d456c1bf9808bf4245533fe659b24a14e9f693`  
		Last Modified: Wed, 11 Nov 2026 23:42:56 GMT  
		Size: 221.0 MB (221022231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:816c3dd68302ee505f8a79cf7353f64512825413fadcd35a14e43690087369c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2361518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cf481d8e34ecf8199dd6aa8e58c1158307e326e2543d7b4027bb0ac421d6e1`

```dockerfile
```

-	Layers:
	-	`sha256:2f63a90a9379e8fa1175acaedf6865c077511988a05d6a8daa5e7c4848951a3a`  
		Last Modified: Wed, 11 Nov 2026 23:42:51 GMT  
		Size: 2.3 MB (2349287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a683e362e8415f122b4812ea82117a55cf0d93cdb9cdbd05d2ae73dee4da2930`  
		Last Modified: Wed, 11 Nov 2026 23:42:51 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2fdcb7bbbb72239aaa1c2656e087b564cc7aabe15774ff7fe7d2ca6af4e6974a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254126188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bf671c16da513e7738a3304045afb5831dff5abbb700302ae8fa6afec529fb`
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
# Thu, 12 Nov 2026 04:56:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:56:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 12 Nov 2026 04:56:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273cda68ea5b3d3cef48295ab2038a72bd01f54269a86d3c659efbcf5f9c47ef`  
		Last Modified: Thu, 12 Nov 2026 04:57:48 GMT  
		Size: 219.7 MB (219719677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1d8d6d392d42369189f56bc4f4c4a6f650efe588b16b21d359bc99f8ba379612
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bcf5714b73f13e0ee3d74d7448db8c2a79768602c80b84a68f0814aa1a0afa1`

```dockerfile
```

-	Layers:
	-	`sha256:a4737898bd57022bb0bd3fdcd96fdf6786e9d2a10a79f61c9c51549e5dc6c859`  
		Last Modified: Thu, 12 Nov 2026 04:57:42 GMT  
		Size: 2.3 MB (2345618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eaa1d8ab2211b833d321fff8e4fe45b79b4340fce4b71ed1ee119bf2581e2b9`  
		Last Modified: Thu, 12 Nov 2026 04:57:41 GMT  
		Size: 12.1 KB (12128 bytes)  
		MIME: application/vnd.in-toto+json
