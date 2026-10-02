## `sapmachine:21-jdk`

```console
$ docker pull sapmachine@sha256:10ac840ffea77d8297cb1ce2a7ffffcf217ba507bc97d0d7ecceb5d3696ab289
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk` - linux; amd64

```console
$ docker pull sapmachine@sha256:7ef3c3888f754d925ca935960ef9fd6ae1d9de2b3fa139c51d66429c05bb22a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252215834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da419db2cd6dc9db2463d2ef049ac4dacb5a1cf8e8f17dbee96768fbd9abce75`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e289a838bb38cff8aedfadf8f72cc4c9862106325665648deeeb78a41181cdeb`  
		Last Modified: Fri, 02 Oct 2026 01:39:25 GMT  
		Size: 222.5 MB (222451412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0b0ae8caad909d4405eb021ea4e3a07b7ddbef30c53c14437c5e7b646b19a98e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4cfc078147e5ed0fb8264f01684b8b8cf8a61bfbef4b1a0258567b05ad02fa1`

```dockerfile
```

-	Layers:
	-	`sha256:819ba52fb539004e7994cb5641d587b85331f1038b6fc77a6d18bbe6e198007c`  
		Last Modified: Fri, 02 Oct 2026 01:39:21 GMT  
		Size: 2.6 MB (2607879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56740c797d4bdf5416a945b8bfd213eefd27fd422ae3390076933a7275b9ed93`  
		Last Modified: Fri, 02 Oct 2026 01:39:20 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:58ae1fe7169b1f6e2ae6e8f55e7a3c01aa818da9a0ae61863d7d1fa2c042f753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249456829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bd6132ab34beefacba0949fb473c14b582708808177d2b2631795c803ff358`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82236e7657aba3762b6918037a0fe160523f1eefe8192fb54f57c9e81e9155e`  
		Last Modified: Fri, 02 Oct 2026 01:39:38 GMT  
		Size: 220.5 MB (220516742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e06c334ebd2e35732469b771227be7897f6c39af372dfc71367bbaf248f6880a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5263a50a5abdda6661328ad356aa9ccf756e77261c7f9500faf299e268874445`

```dockerfile
```

-	Layers:
	-	`sha256:cee4c50df583b41ccd31beffce64122d44185bd34b9d9da5ebbe83fca20a7e1d`  
		Last Modified: Fri, 02 Oct 2026 01:39:33 GMT  
		Size: 2.6 MB (2608491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d719680584778699e9b2692002deec383a4513766d44a2a968463ab7b002626`  
		Last Modified: Fri, 02 Oct 2026 01:39:33 GMT  
		Size: 13.6 KB (13627 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:eeda8e0e5737e8e925e5136579617b1be7c281ca2bb5a9c4f4b79e2954ad5694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257091231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4aac46cd7098450499b4dc1085d35efa974312c20fdc323d192fd37ce54351`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:46:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:46:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 05:46:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c58cc0cba839a9ce8b57903ae1df0897d91cecab4c4bd39cdeef6178a208435`  
		Last Modified: Fri, 02 Oct 2026 05:47:07 GMT  
		Size: 222.7 MB (222714722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:183e8422233259595872467e22fed2f3279d51e2c7a0c17577b082ff4f56f92f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d90c21feefae9a8592c3625c33a1456c753b629531a75fb8d68266c392b437df`

```dockerfile
```

-	Layers:
	-	`sha256:d89e191a4a3999004a07fc2ea707dbbafdeb8dae02317089a760c01716db7a31`  
		Last Modified: Fri, 02 Oct 2026 05:47:02 GMT  
		Size: 2.6 MB (2605479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2c4a8ac2d3f6edf5754de3ae30cb26125335157fddad613ea8ede3044b43e1f`  
		Last Modified: Fri, 02 Oct 2026 05:47:02 GMT  
		Size: 13.5 KB (13493 bytes)  
		MIME: application/vnd.in-toto+json
