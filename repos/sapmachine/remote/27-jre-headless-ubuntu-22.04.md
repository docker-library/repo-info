## `sapmachine:27-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:337149e8964df1483ef883d2f5fcb8b36aed875ed209c40f4e0b5680b0ad6f93
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:90abb145e4462248c3b35b9f9214b7d8f485021414e3c5eec7a4f0bdc39e63e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88682835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7d17122a887c15dcd48ad4179446bdc0baa6d16bc072373ed0705a355ab7c4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6e0abbb084d1035c07681354588b9e9980bdebb7c6b112a30c5cf5c4a7856d`  
		Last Modified: Fri, 02 Oct 2026 01:37:37 GMT  
		Size: 58.9 MB (58931208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:bc02f030b77714f58fe02ebbb88f48d1f63d951ee7a6574d79bbb011e74a94c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2308748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015e4c4c968547a36308940bc8de5d047f4bd56b92275c8d46984c599b7a3c02`

```dockerfile
```

-	Layers:
	-	`sha256:6a0847e348c353defa057849500274a0971be7f385c1986b7d2b11a320592d0f`  
		Last Modified: Fri, 02 Oct 2026 01:37:36 GMT  
		Size: 2.3 MB (2299170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce65861e7edc3a0e616ddf66c1a72a82638a03dc4861f5fd314d19436d74a21c`  
		Last Modified: Fri, 02 Oct 2026 01:37:35 GMT  
		Size: 9.6 KB (9578 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a181f22dda821bdccdb70aabcc2fd23a2e279d321dff2c40383ce27a28af5497
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85604712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af35d69786f4565209a98f205e0f8c7c18c6d1f9c0bcd99f333bb23e0701b5b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832aa5e05a720addbe363e45df64b3441b5b7df4acff7b3805e01ad88e59dfa4`  
		Last Modified: Fri, 02 Oct 2026 01:37:37 GMT  
		Size: 57.9 MB (57920576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:17cfcc799d2d3137eae6a6ef3d1a7cbe8f5af35bbbfdd9502824ae5b03fa93c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2308521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23c6765706637d8bf1c7b510d1c559c79bf0d783b9b3f74cf92ac4bfb6db1bb9`

```dockerfile
```

-	Layers:
	-	`sha256:6a1629d01d0705a093db401ebb642fb2d8e4b9bbd2098247858f33d968551a5d`  
		Last Modified: Fri, 02 Oct 2026 01:37:36 GMT  
		Size: 2.3 MB (2298839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32d2dedf73976559736f43e97c8797ea3477170abb5985412e9953d91769483f`  
		Last Modified: Fri, 02 Oct 2026 01:37:35 GMT  
		Size: 9.7 KB (9682 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:8427e62852e60e27cbf47271b5590795881ce9949a3715a8705082b17da20a4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92689515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d0aaa6ed02ecadd9b31abc22edb2c5b065779dcc3098aba8446acdb26b6a04`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:40:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:40:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:40:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a3d3017bbd297d9e847c4135afc916f72fb9311499e456a27c1800d70bf56c`  
		Last Modified: Wed, 16 Sep 2026 16:41:16 GMT  
		Size: 58.0 MB (57986836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2383e7631905cf6659abbfd0314b802dc0e49c1e424f328ee4d31a8445bb471c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2307576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70002618e0e788f503df95c0e97c4a5014b5b48cfdf8e46faefdf90edb810005`

```dockerfile
```

-	Layers:
	-	`sha256:b2b7952bbd2197a10a3dc11b093b20b19ae8bdcffb961a6ec397f6d0d79cd9a3`  
		Last Modified: Wed, 16 Sep 2026 16:41:14 GMT  
		Size: 2.3 MB (2297954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1531783b4398be26de695d59e69a8ec28d0018aa943c3d5c7256fcea3a7ab3e4`  
		Last Modified: Wed, 16 Sep 2026 16:41:14 GMT  
		Size: 9.6 KB (9622 bytes)  
		MIME: application/vnd.in-toto+json
