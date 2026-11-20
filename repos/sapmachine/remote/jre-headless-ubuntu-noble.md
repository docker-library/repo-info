## `sapmachine:jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:18e79b728d80076c506e67bf31707d86ce566b276db7c059f935f03c0e60db39
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:7b01119a2ee3edee74f96433553afd0738e0efacecaf18a08d1554c951afcfa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89187906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cfa01300ee1fd4f8739845202345f4498efc0035e096b8d6fb9dde5259baef`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:30:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:30:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:30:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c6f554fd7d472ef887fe97340509bd0b9678388a8ca6f74d3aad3479148e7f`  
		Last Modified: Fri, 20 Nov 2026 03:31:12 GMT  
		Size: 59.4 MB (59394609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:458c2423192d2d4fa2a25dce34442eeb424078d46715b1fecc74172efe310b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416bacc365ced263a0c76c8a6a70b8213c3ffe25e927e97fd5d6158ea70b81b7`

```dockerfile
```

-	Layers:
	-	`sha256:731f9323408bede1099a7a65938675f599be05d3a8e54107a46e18b4c9d7be3b`  
		Last Modified: Fri, 20 Nov 2026 03:31:11 GMT  
		Size: 2.3 MB (2279911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:734293fbf794269d889f5a34e5f4e371bff6409fa6c9a41898c8832e374cceb3`  
		Last Modified: Fri, 20 Nov 2026 03:31:10 GMT  
		Size: 12.3 KB (12314 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2c3158540cea98a2a64c2c9465f330db8e44f99634859a0c1ff0ebaa07e5d6ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87396738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf76b5ec531b569abdbdfc0992e04aa2afc3ad5f66dded1677bd6a8f9a4c012`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:32:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:32:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37109a87b581fa4d9ef552daceec6be0302d96a8f8c9ccfc1d691aedd1b9463b`  
		Last Modified: Fri, 20 Nov 2026 03:32:25 GMT  
		Size: 58.4 MB (58431420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6535bf716c4f770a81f11bd970a39d6cdd90cc13cc40b9a24d1c0e205c99542e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4effd836fedbe59e33ee8d39af275025c1aba305c992e4906261d17d6931d5`

```dockerfile
```

-	Layers:
	-	`sha256:f0eb4eb4d4842bd4b2c8d2396ecd9ff1c1f1221416ae307b207a11f477266264`  
		Last Modified: Fri, 20 Nov 2026 03:32:23 GMT  
		Size: 2.3 MB (2280463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b82d61fa34f403a986e0184035af9c6cbd180374fd0a9cce31dfd521df1889`  
		Last Modified: Fri, 20 Nov 2026 03:32:23 GMT  
		Size: 12.5 KB (12514 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c8b995f24faafae57591dd277de3ae9d0af33b76e2fb0907ba5c51959778e04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92921703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7347e0eedc9ab58f5185671f17eb558d801e04cf6bc8224b66c71b47f73c500d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:16:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:16:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 04:16:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa95021590685d728a63c6a876cc41711a6774c969a90c9f6ff2134b4c15817`  
		Last Modified: Fri, 20 Nov 2026 04:17:22 GMT  
		Size: 58.5 MB (58515464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5df01fe7d809c15a5b9d4e01105b2f570e19e42eb08360adf19e1c797d2ce119
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e3b69826bdc2dd2fdd7e1c66b03c7c2a3ecaabd7f3d6202c343f4d35481144`

```dockerfile
```

-	Layers:
	-	`sha256:ee88ac80aacde3866b45bab951b2f48835cb8ac2980cc8fa85331c739ef6f702`  
		Last Modified: Fri, 20 Nov 2026 04:17:20 GMT  
		Size: 2.3 MB (2278722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35859810567b653ed40ac8fc837d35753c79c449dae48946ae17d77cdb3cb313`  
		Last Modified: Fri, 20 Nov 2026 04:17:20 GMT  
		Size: 12.4 KB (12405 bytes)  
		MIME: application/vnd.in-toto+json
