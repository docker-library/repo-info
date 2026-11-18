## `sapmachine:21-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:3b029c0a1051fdab51b29682d3efd069e622aa238fdc5a9bd144710da1a6a2bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:89adc8ec4c456fea8515c0485e0347e38a27b83e97be01e3e18e728a54090205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93771585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c5a399098332bbaf57945fb465fab52f4981085e3553b29f65cd6375529325`
-	Default Command: `["bash"]`

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
# Wed, 18 Nov 2026 16:41:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:41:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:41:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a46dc7f893ec2a6e65cfc545735ca541b468164422d3fdaff63d5e5fdfed2a`  
		Last Modified: Wed, 18 Nov 2026 16:42:04 GMT  
		Size: 64.0 MB (63978362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6c95cc3a6321cd0a760b409f1d684d044e98812e8d89522bcf56d273bbc592d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49419db963b476f7661f031bca2efc45558f88c05a9b12c1490484397e861bbf`

```dockerfile
```

-	Layers:
	-	`sha256:9ff62bc3bdf7c825aa453ed547df49408b86d1ab465618d59e3b38b43765b93a`  
		Last Modified: Wed, 18 Nov 2026 16:42:02 GMT  
		Size: 2.5 MB (2523078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:696b415d9ab38d1ed524a17be6a9a1d3b73e7c3496cd4fa19fd4dd8a23b42135`  
		Last Modified: Wed, 18 Nov 2026 16:42:02 GMT  
		Size: 10.8 KB (10801 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2c9a3bff756b0d3d96aacee8a789c79fc8b9a580e71ae71b0130a9bb6c509920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92128780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec241991830b776d9dfba23c2548a0a9ef616817c64865bcc8a7bf8109af8d6`
-	Default Command: `["bash"]`

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
# Wed, 18 Nov 2026 16:40:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:40:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 18 Nov 2026 16:40:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdafb800c00fac091eb80e488aafb6c54acfa6513ba80a7c7de10e29b4684ab3`  
		Last Modified: Wed, 18 Nov 2026 16:40:27 GMT  
		Size: 63.2 MB (63163522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9e36b2d47bc3f3a7bf4888b4f4650520b67dd3f7815c73ba620f920845d95f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2534547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e32e4d8c6fe7479be6defa61081557140854e9027b08a59d091d57779532a5e`

```dockerfile
```

-	Layers:
	-	`sha256:902077f78613d4e03b23b20e1692e85e167e4c7738c3c3105d6373df34ea19a9`  
		Last Modified: Wed, 18 Nov 2026 16:40:25 GMT  
		Size: 2.5 MB (2523594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:468a748d773f8d408b00bed4a07b7dbbd9133107d942d0e3b75cc998aa67926a`  
		Last Modified: Wed, 18 Nov 2026 16:40:25 GMT  
		Size: 11.0 KB (10953 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:96b020ce70031286c46c434514327ff1f3ff5f83544a6932cf4dd48a189d9d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98180234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca912138887afd9c20051cc3dc49ab9ba95851f95bd7c0afc6ad1d2c58a6c44`
-	Default Command: `["bash"]`

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
# Thu, 12 Nov 2026 05:04:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 05:04:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 12 Nov 2026 05:04:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771f4f5e5df890dfc8ec143f2ef9502ee1ae7af01500149bc3b7e880219686cc`  
		Last Modified: Thu, 12 Nov 2026 05:04:42 GMT  
		Size: 63.8 MB (63773723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:685a2c055e39523607fa8dd5f9e70052db3c06b4ddb0abb0888ca113969064c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd7a66c51a1284282c1c195eb0a4b901acf389463f9958140c9853efe7f83c5`

```dockerfile
```

-	Layers:
	-	`sha256:3fdb46b2dfa8e40c5d962ee72eea0a9b77b4f7161c278db35c5337a81f6fb8ba`  
		Last Modified: Thu, 12 Nov 2026 05:04:40 GMT  
		Size: 2.5 MB (2522600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a08fce69a8923efa2cfa7fd6b0a074ca7d481842ac95973a60717046c5daee`  
		Last Modified: Thu, 12 Nov 2026 05:04:40 GMT  
		Size: 10.9 KB (10891 bytes)  
		MIME: application/vnd.in-toto+json
