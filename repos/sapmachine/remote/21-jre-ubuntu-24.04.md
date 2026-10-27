## `sapmachine:21-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:885749d1b8a03611967e81ae579de59d3e4e6b7bb43854d50a2cb6c28b506dc5
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
$ docker pull sapmachine@sha256:8e6ee3eff2d854f372fd7c16d41419ff48f319f30101edcc9c79024ece2ec9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93735188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1066e2fa1ddac9f17d38d7963424d7d83270a679373c7e3ffe7b421846dbc0`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:39:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:39:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59463f4e8846f21fad34b6c9426c116ca123f3a6d1bd26464b6d697629aab4c6`  
		Last Modified: Mon, 26 Oct 2026 23:40:04 GMT  
		Size: 64.0 MB (63967576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5feab4c16a043be5116ee766e3a18c4d8846023ff8ca5915617a70fde35d750e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af78fbd4fab4013ac32f0f1e4d8ed57bcaf8d4763ac1cc86b1dfc338b6101f72`

```dockerfile
```

-	Layers:
	-	`sha256:4f1f4396df0b08f7b279f1a526bbf32a1eda1aee572e6382fdca32390816f8b1`  
		Last Modified: Mon, 26 Oct 2026 23:40:02 GMT  
		Size: 2.5 MB (2522498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:051630917ac3c5f7621e81f532cbb8f7b2923ca199c6a853d85afc9927ffdf28`  
		Last Modified: Mon, 26 Oct 2026 23:40:02 GMT  
		Size: 10.8 KB (10824 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:eb7d6108fbd78a8ac43226d44830cce73a11c34a63ccfcbe319d7225c15d4832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92101782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4791e9316e8e6e25b14dbe0d8ba3c7d9eab699191fac706be297198bd1caf38c`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:44:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:44:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Mon, 26 Oct 2026 23:44:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206667e2ec1561dfc1a5bbafcd8706d9946d71c92db44b053a0f672f74f3ba91`  
		Last Modified: Mon, 26 Oct 2026 23:45:07 GMT  
		Size: 63.2 MB (63161656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d296aefde0be4131e9dace9d89c8739c9e4467a49fce44c22c8d507b136b32e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d40c24cde76eebdddc38b98395109467c7ce7fd4a6b1cae17f9185c751ee48`

```dockerfile
```

-	Layers:
	-	`sha256:9ecfe907996dd9fcd8ebbc473b401b2f088f87afb3a98e81052f60d6b2706b52`  
		Last Modified: Mon, 26 Oct 2026 23:45:06 GMT  
		Size: 2.5 MB (2523014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:957be67eb51f53fb7967b5e45fac2a500ce75a5e06f28e54f0eda069ee120741`  
		Last Modified: Mon, 26 Oct 2026 23:45:05 GMT  
		Size: 11.0 KB (10975 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a711e38c42d16ba3e78b42a3494613bc9eaa3a5507232ea7488d3f237fcdc69d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98151168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e6eaf5ddeed3d18c317bb7079bfcd0f15eb3c6c2c981e2c1e183c4fb5fa12a`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:37:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 27 Oct 2026 07:37:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c163506d05264b17e0dcfa93b286dffef04a3071e8f3c381bbae1063f8f9489`  
		Last Modified: Tue, 27 Oct 2026 07:38:25 GMT  
		Size: 63.8 MB (63772860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a6709da910e3c16c0f4e6dd1f4cbc7adec01547e8b0527b596820c8473d188eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98852757a24d29010b28a5225c1baa0947db00dc713a2a181e8a7635444de5ca`

```dockerfile
```

-	Layers:
	-	`sha256:8d93fac04c7349591c73bc906e7cb6f335adc9d35e757881a1682e48d0faa8a8`  
		Last Modified: Tue, 27 Oct 2026 07:38:23 GMT  
		Size: 2.5 MB (2521996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d97307036d2ee1086a4bfea87e0527b800b7997151ed1871a1dd1372cf631c59`  
		Last Modified: Tue, 27 Oct 2026 07:38:23 GMT  
		Size: 10.9 KB (10892 bytes)  
		MIME: application/vnd.in-toto+json
