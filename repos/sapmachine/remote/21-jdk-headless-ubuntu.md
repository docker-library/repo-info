## `sapmachine:21-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:da109c95db0443a6eaafce3494126d2deaa786fbcb846aa408cb68a9410ab883
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:4db981c581c682ba81a642d60293ddbb0eab599faa93a5c92740bd496c6e953b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247857329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8314385a638366f72701135b756d80faaecb93147ff51b4d97cdaf5912eda7be`
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
# Wed, 16 Sep 2026 03:31:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2333145ecabcca7a0a8d1ea0d8b7fe4d9a42245fd1144b8ce74a0f4d07681ebb`  
		Last Modified: Wed, 16 Sep 2026 03:32:06 GMT  
		Size: 218.1 MB (218093213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:387372c2a44322090ac58c3acf166a444d837d8f2243fa2a1e54eac2347f8c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7249ca2be72ab7e7925a74c73a0d6e338019fd700f38775b71da5ef0876829`

```dockerfile
```

-	Layers:
	-	`sha256:4ac8f8cb2f0c2a7c08bff0f7473681da9373e9c66084fcf782d0c0bcd99d0a81`  
		Last Modified: Wed, 16 Sep 2026 03:32:01 GMT  
		Size: 2.4 MB (2358221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c85312b24acc1d4df6acad50d758c06093d3d7befd3377f7f0de766fe564fa6`  
		Last Modified: Wed, 16 Sep 2026 03:32:01 GMT  
		Size: 11.0 KB (10990 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3017397e8dd20064a7c266401ee885bd20b11461b0f9081cae29d7bf1aa17bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245235950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9dd9173dc6898c50e39724a0c1cd45e9959fd0213678c140618e2f7e54797fe`
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
# Wed, 16 Sep 2026 03:31:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 16 Sep 2026 03:31:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb374ad2d5f8276ae67978007d462c824e20c89bfea1211b175203d2286daadd`  
		Last Modified: Wed, 16 Sep 2026 03:31:45 GMT  
		Size: 216.3 MB (216294370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5f68eb7da794364a5451ac2c81c3a0b6397191205ba868bddc31d62cdd01d8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052ab733efc8b3da3e093af220a8666c2e476d2cbfeefa87b4ba32544e33ba0d`

```dockerfile
```

-	Layers:
	-	`sha256:433f4317e7e428815525b211b99df6fb1753ddc753c2b601cd96cc98d44b1145`  
		Last Modified: Wed, 16 Sep 2026 03:31:40 GMT  
		Size: 2.4 MB (2358728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ad408381806ccfff139a276e3dbc69fff1d5744317119ec55a4dacfffa158cd`  
		Last Modified: Wed, 16 Sep 2026 03:31:40 GMT  
		Size: 11.1 KB (11142 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:106d2d105aa836b81bf8478a52cdee7e7c76e77b99d55df5c1022f3e94bbf6ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252154926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213480e9de750f5d210156e5ccb2712d74e68447afdb183f937269f1655aae35`
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
# Wed, 09 Sep 2026 04:25:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:25:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 04:25:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14e5cfd0a47122852a9394d26c07cae6456b13cb6687f5a063d358713b285ea`  
		Last Modified: Wed, 09 Sep 2026 04:27:19 GMT  
		Size: 217.8 MB (217778047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:360619dea3ca5b3f9fbfa6e02a5dce7df678820018ae1e22a7fdd625baec1b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde6589f84eb7b3f7243c2c81b8128a56688ff9b7d9dc389912b6ea890102e44`

```dockerfile
```

-	Layers:
	-	`sha256:9a96a06b1f0fe5018fd7d36c8f1779cbebf0cfef1024d74d82cd1046fdbb257b`  
		Last Modified: Wed, 09 Sep 2026 04:27:14 GMT  
		Size: 2.4 MB (2355692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c762a9aacbcb91f87121519c630e981436c69852396f0e3c18441c2a28015b83`  
		Last Modified: Wed, 09 Sep 2026 04:27:14 GMT  
		Size: 11.1 KB (11058 bytes)  
		MIME: application/vnd.in-toto+json
