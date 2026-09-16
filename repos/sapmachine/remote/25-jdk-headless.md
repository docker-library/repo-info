## `sapmachine:25-jdk-headless`

```console
$ docker pull sapmachine@sha256:fcef5a4e9f2bbc7d03ce30c167148d9027bc0925223cf1bc266f7c1abfc0c111
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:294a5b1908e960b0819c4c8d81291a0876fcbea96a93dc437fcb808e5221753d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252941645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c7537f05963e70c67e8df2670202d2832599db03eaecedc1a9c434b0970bd4`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 03:31:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f794c0c6b15a30871448d4505a105a6b83acf849c695b003a4873841dc64d5`  
		Last Modified: Wed, 16 Sep 2026 03:31:43 GMT  
		Size: 223.2 MB (223177529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9ada0c8d6114d653a86536f685469407ff893a44ea3bad24b2a9fe4c7e14b473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2360746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e85909f2682c1706a7b396cf7533e8fcb7f3fd642f38204acc18279a95ce670`

```dockerfile
```

-	Layers:
	-	`sha256:638376fb11029c6d2855b34842c5bd4cb135fbd148968ba3a2c428521ada0e6a`  
		Last Modified: Wed, 16 Sep 2026 03:31:39 GMT  
		Size: 2.3 MB (2348725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b84aeacf4a65e624adb9925981eac1d137b332ab553545a894e99123dc1e141`  
		Last Modified: Wed, 16 Sep 2026 03:31:39 GMT  
		Size: 12.0 KB (12021 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:4fc91716fa0ce904bbe32ae9f65cec7ceb03380425a2873d5704123ea4ca8931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.9 MB (249873815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99375d07decfde61300f1be6857188c3785b52708049ad46d1fef6561e0fd21f`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 16 Sep 2026 03:31:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f9b1e4e2de367d97836c2b4e762817266f58766d185bd98ba96ab9c0929a6a`  
		Last Modified: Wed, 16 Sep 2026 03:31:27 GMT  
		Size: 220.9 MB (220932235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:67a834277059920a018885b97d40ebad761a64b410e10554c5dd09ede1eb76e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2361472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59677eda9d09cadf0251ca584b48b5b25eb86465d19a8a41c74faf05aed6d405`

```dockerfile
```

-	Layers:
	-	`sha256:26f3822de142bbea78b385c655016f5e3660c138e35cc264da7b0b37c85700a9`  
		Last Modified: Wed, 16 Sep 2026 03:31:23 GMT  
		Size: 2.3 MB (2349265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a73e0b9ade11653730538982dad0963fde42bd44c5b59be0290402156e13a4c`  
		Last Modified: Wed, 16 Sep 2026 03:31:23 GMT  
		Size: 12.2 KB (12207 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6e7a1eb5961c39e5aab1fc4f8b84eefba8376f8bef81b18e95de0fa3c23408e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255582708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e6794a725785cec72717479a7459e4fc81acc4a4c8ed2fda1f6824a6eb07e6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:01:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:01:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 04:01:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de230613c8e1bc35f10377002b62a3f17b44d4c473cb4d2a0971ba99f6e2b047`  
		Last Modified: Wed, 09 Sep 2026 04:03:01 GMT  
		Size: 221.2 MB (221205829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:48cde2c18ac84ea8f05e8e05f32cbf3d6b20125f0e62150df1a8849070f993a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1dfcd0c0deda0ca5afea6b8f1e7eb9c940842c9105dd56469c6e231b244e438`

```dockerfile
```

-	Layers:
	-	`sha256:a6a81b284d5f1e7ed05b94a0bc5e1113a715067092464361d47e077190762605`  
		Last Modified: Wed, 09 Sep 2026 04:02:56 GMT  
		Size: 2.3 MB (2345596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d4343b7fd4b3d47758497cda58ee624292e5e145ae81c93c0d5ed2347632ac4`  
		Last Modified: Wed, 09 Sep 2026 04:02:55 GMT  
		Size: 12.1 KB (12107 bytes)  
		MIME: application/vnd.in-toto+json
