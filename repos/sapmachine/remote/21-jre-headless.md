## `sapmachine:21-jre-headless`

```console
$ docker pull sapmachine@sha256:63b9d53aa439f28f2f3464cbe4c786368a32d3210c65c80c3fd9616a90003517
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:8eaa85dcb103c3dfba8af739150fa49d8d04b7a222595194ea8cd26f83cc3ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94359193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1e1c84cba30132c42dbe81fdebb2dd6669903207c08a76096e721f99334bf29`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:49:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 04 Aug 2026 01:49:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1aad95f5714d3fecd73279848e7e9e2559cc4ecd436a568db8a5de94076021`  
		Last Modified: Tue, 04 Aug 2026 01:49:44 GMT  
		Size: 64.6 MB (64608084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3328d825f66eddd45e4052c63f02846074ed2187800a10943d7f5d06cf866a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e31e3ed6236da04874ff5758f8e4163478a4613bfd294620600aadf61abb1d6`

```dockerfile
```

-	Layers:
	-	`sha256:dce0b82a8f3507f989cf523afb6f43f33d4ab6ffb9d40687e6a33848929ada70`  
		Last Modified: Tue, 04 Aug 2026 01:49:42 GMT  
		Size: 2.3 MB (2274662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa30d86f6e599c1606a9b46bb02a1a36110d499eb769e1761bae3a5291a36dbe`  
		Last Modified: Tue, 04 Aug 2026 01:49:42 GMT  
		Size: 10.2 KB (10229 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:9ff8a647378b70627324804f7a7d0669b45c75e5ad1c37fec32bda9e2c767581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90268923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b24feb850b19a0a8a2f122a344cf128709113d68568ab5fc2d186fe8bf63d8de`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:49:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 04 Aug 2026 01:49:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44081aafd5aa3d205162e4ab30061e24238fa642d06263a6902994adb6bfa9c8`  
		Last Modified: Tue, 04 Aug 2026 01:50:02 GMT  
		Size: 61.4 MB (61382105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9b11be5e915dc8be7962542145e2235371cca8ca60830812eec1704010e01347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db85d4b4ce4d1ca3f06463221f0908d3bccb072885cb56b69824cf12884e28c1`

```dockerfile
```

-	Layers:
	-	`sha256:d33907c5c8b63932cdb9d0498da0ffa2ed4af23f0640516e6e05364af02c1285`  
		Last Modified: Tue, 04 Aug 2026 01:50:00 GMT  
		Size: 2.3 MB (2275169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b2357a89527fffc0f7d457d91af95aac8624cd2a0772bc6191c0f2c718d393d`  
		Last Modified: Tue, 04 Aug 2026 01:50:00 GMT  
		Size: 10.4 KB (10381 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:69b4f3b36c33b4354fbae183754b96e12a169bf7087d25b62a2b57025f236a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98778427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe8512e932c0e656a7c1bfbb882ec16ce7d0095ba0bec43d7d424f7ca6e8219`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:53:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:53:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 04 Aug 2026 02:53:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673e48701a8a07180ce8060d5e9de0a83a3fbcf2d962fa31628a04a8e665d727`  
		Last Modified: Tue, 04 Aug 2026 02:54:14 GMT  
		Size: 64.5 MB (64467754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e02f936e096d4bd9b8da1607fa673221f33197b38e592480c7098fcc764c8894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7635ff3875281e01dadd159f72f1295612d10d249625d6b479d086fb87b61aef`

```dockerfile
```

-	Layers:
	-	`sha256:a63283c330bdf26b01e2fb7577049b020bebc65e993d771e4d89f8a15694b0c5`  
		Last Modified: Tue, 04 Aug 2026 02:54:12 GMT  
		Size: 2.3 MB (2274079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e2c93aeddd12881e3d49ca73c155048051b1c569e1a2976b7ed124d950b8ac5`  
		Last Modified: Tue, 04 Aug 2026 02:54:12 GMT  
		Size: 10.3 KB (10297 bytes)  
		MIME: application/vnd.in-toto+json
