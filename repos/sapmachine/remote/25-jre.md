## `sapmachine:25-jre`

```console
$ docker pull sapmachine@sha256:fe6d71cbedcb76a19f2e057d849316530c07047e80993d201645dcbbcc94c11c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:e68cbcf6d76c6a9e7681df3358e1368a30e7d61e9eb59ae75dbcdd391c22f50a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93017871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc8b99f901db7857627a8938c37f380b8885103dab9bc68308b1a954646bbeb`
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
# Tue, 04 Aug 2026 01:48:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:48:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63dee2cf8506f5911cdec8e07603fca76cea36230bb78e51a824dd91ed2b6469`  
		Last Modified: Tue, 04 Aug 2026 01:49:00 GMT  
		Size: 63.3 MB (63266762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5b300baef36940c953325e4ec13b52fe3c4ea5c1c57fd01ae19946e3e530a0e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23bc3c2e41455390b1eaa0b9fba7b4695e43de8fb5767cf8e137704eeb3ac36`

```dockerfile
```

-	Layers:
	-	`sha256:aa2623e9970f8b6e8ff778163ef7668ea7ffe935a2f4dda87da1758199b57321`  
		Last Modified: Tue, 04 Aug 2026 01:48:58 GMT  
		Size: 2.5 MB (2527862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:231a4c6fe1f0c99a02859a4ac4d8235ce3090e69027d614d77f7469a527c2877`  
		Last Modified: Tue, 04 Aug 2026 01:48:58 GMT  
		Size: 11.0 KB (11027 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:bb8eeb9d24bbdf256f98dc5446ffa40936b054ace1a0faf562237fd3fdf4821a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88711839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dc455dc5d26ff93550b6e7720f576116db137360180ea58f2306b867b119f8`
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
# Tue, 04 Aug 2026 01:49:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61cd4e1e6eda768b0b8c7decc22786087782a340ea89f9fb07e6601522621d9`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 59.8 MB (59825021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f77768530708fabf18734a70ee95fcc0b191bec6cfb25dc12692790ad49b52f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb20c3d41f3aaef6ca633a2faa35aa1b8a59bce4e6975b383dcc52170113b6d`

```dockerfile
```

-	Layers:
	-	`sha256:8c85d1a3d4b5aeebcd406f0e1dde3f80d8a232629f37521369688296692a17a9`  
		Last Modified: Tue, 04 Aug 2026 01:49:15 GMT  
		Size: 2.5 MB (2528411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a3fc1ea4d08628774d631b095025c103993c86c5e8f1e2660afda6349966224`  
		Last Modified: Tue, 04 Aug 2026 01:49:15 GMT  
		Size: 11.2 KB (11215 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:db589c23c2fac99ce0d2d8d7ba04328e4c01f03fd75e6a93c1d7be2a375811bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (97040536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f481d327419d26414e478a7be4955415a2280a44facc0f776bb50ffa9f984232`
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
# Tue, 04 Aug 2026 02:46:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:46:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 02:46:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee8ebbe7f30195342ae37e2f93f8e7b261c46a96ea4697690ac2267e2259f97`  
		Last Modified: Tue, 04 Aug 2026 02:46:28 GMT  
		Size: 62.7 MB (62729863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:78d35253fa3611cc504d23e5b3e607169dfa636484590870fd50ac8bae2c63bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655fcc49569f81eb3c04833ef6082bd1d6424722dd52c079adc7a2c3773377b4`

```dockerfile
```

-	Layers:
	-	`sha256:c4bcbc89ec5da379b7485b1501ab205e7b7ce16786a83a6b344b8abd679cffc0`  
		Last Modified: Tue, 04 Aug 2026 02:46:27 GMT  
		Size: 2.5 MB (2526748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1812544e72b631144549f4d6a4d491e76def08d49b1787d51ec3154061020a39`  
		Last Modified: Tue, 04 Aug 2026 02:46:26 GMT  
		Size: 11.1 KB (11113 bytes)  
		MIME: application/vnd.in-toto+json
