## `sapmachine:17-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:1516e9aa23c708445f9bbc643e0742bc6ad201a15379d10d8ff83b356ecbbfdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:8e58a5d912d97ee51d10e39cd8414fe6fc2773298c75ccb0cde4f3b2c4c13a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234497834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc0c28b2d1deab19af9f2fef6cd01d1ca96d341d8e66bf143ab7b8b15b01c85`
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
# Tue, 18 Aug 2026 01:22:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:22:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 01:22:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ff3c2bd9eb356874e5bcfa2b8c635a88caf9a741e6daee5702b02dfb04a39d`  
		Last Modified: Tue, 18 Aug 2026 01:22:42 GMT  
		Size: 204.8 MB (204760891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8b6c22fa3b8a41d55d9013ca02edd0c8d22d0dbce4a994501f4be8101e7b65f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6caa1cf05d511c58065231c33dc8f946b52e42484d5247698f5bf0190f712410`

```dockerfile
```

-	Layers:
	-	`sha256:723cb3210328c9059a1f82846c376cd2bd8355fc013e2d7ebcdd7fe9b9cccbea`  
		Last Modified: Tue, 18 Aug 2026 01:22:38 GMT  
		Size: 2.6 MB (2631153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56d2e18991f8f9d0b4ab376341dbff080586db8bbd8875f38fc549f543e8eec2`  
		Last Modified: Tue, 18 Aug 2026 01:22:37 GMT  
		Size: 10.1 KB (10095 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1b721ec364246f131b5228ca80f4443036f863a5637641affead4ff765aaa12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231107555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddd42cc958266d89aff1880bb676c17e29571a0dda2717d8c7363769b3631b2b`
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
# Tue, 18 Aug 2026 01:21:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:21:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 01:21:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dee93a2f9ca88c06d04b30f40d7399bd696ea34ec2e6e62442dceb935dd144f`  
		Last Modified: Tue, 18 Aug 2026 01:22:03 GMT  
		Size: 203.5 MB (203487102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ba766de9ccc7eb8d5b48d6c825b1acefd2385852178e3857996845304d24e7fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccf7c0ed321f6e7cf0dbc474edba1c091fbb8711fbaa8d1282c364fe23ad885`

```dockerfile
```

-	Layers:
	-	`sha256:32addc0ee576e9051a08dd7e645a9805e68fc2d8411a39908e79519ef803ba19`  
		Last Modified: Tue, 18 Aug 2026 01:21:54 GMT  
		Size: 2.6 MB (2630883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef077d468a3ccb18b918ae13529addb12a23638d3ac8b909a30bb1f1a23a7ead`  
		Last Modified: Tue, 18 Aug 2026 01:21:54 GMT  
		Size: 10.2 KB (10247 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d5c45b3dcda94363ee151789a111f768f012b78a896ad6a1ec79cdb4b3a2f5fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.5 MB (238478472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05cbf2942a9e635c5add55333e830f9a95044f416b8d4bb7a128e4e00c9c97e2`
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
# Tue, 18 Aug 2026 01:43:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:43:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 01:43:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673ab86ecd16c3a237581840737685f8c652211c456f2d54c8bf34cafcfebfe1`  
		Last Modified: Tue, 18 Aug 2026 01:44:04 GMT  
		Size: 203.8 MB (203840327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6018d72f93393b51a32d86e5692f20c5553c9a0f889e3c8ac790b8ed72f982de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2638925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189fc21cd2ac5cd29addbe0b957369502ad96f1883f33cd3c584071f12e321a7`

```dockerfile
```

-	Layers:
	-	`sha256:5833fe5f5ed89f0d76dd7afc5d41576b764a5abf31e8b97baf463eae5506b80f`  
		Last Modified: Tue, 18 Aug 2026 01:44:00 GMT  
		Size: 2.6 MB (2628763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85b0c8fc8324420962954a3075c7314c176b721188e5c213d97adcae3a4e7ac7`  
		Last Modified: Tue, 18 Aug 2026 01:44:00 GMT  
		Size: 10.2 KB (10162 bytes)  
		MIME: application/vnd.in-toto+json
