## `sapmachine:27-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:8bd0a1f6b7789c6b46f0733672c3bcc291da8f49b93d7483cf4b2f025a927f5e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:21a030474785623dd02fe1eabdf7dee3224095dc84d89b9a383f6d12bd9a2c05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90598206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b206f49dc0b0bf9c1a2e6406eeb28ee91f44452997058c3d2a3bfdc3bc0b6d0`
-	Default Command: `["bash"]`

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
# Wed, 16 Sep 2026 16:35:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:35:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:35:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e6501e298eb05a4103e30c8ccd804972134c637ccba989ab3fd3bd0793f08b5`  
		Last Modified: Wed, 16 Sep 2026 16:36:05 GMT  
		Size: 60.8 MB (60834090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3f805ba418d42a24c31854c46f0236cbc3eebebf431691ebbe3e7d84a6d1330a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2535630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a40335afd3aad32c49cd8160973dd9351e51b24dc87dd524ffd832335fc679`

```dockerfile
```

-	Layers:
	-	`sha256:76b8ba78439273bc553b983246ffa9faf351991e6eb7def2b3b47072a64cae4c`  
		Last Modified: Wed, 16 Sep 2026 16:36:03 GMT  
		Size: 2.5 MB (2524923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edab6fbd9a9802e6872ac564d6f59d18265a326015d2325f87d1e1b666756e70`  
		Last Modified: Wed, 16 Sep 2026 16:36:03 GMT  
		Size: 10.7 KB (10707 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:db590fdb575ae4581fde9b7909e43355b5ed27f7328ef1b6f0d8e0341070146b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88807451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075bced4bf8cb2d7d3b27f61b5b5e067665814d5a4e0235e29d1348fd3c25c69`
-	Default Command: `["bash"]`

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
# Wed, 16 Sep 2026 16:35:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:35:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:35:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6263c205607718091083e0abacf6647aa8434971c585ee4c4cd86c53d4eb3937`  
		Last Modified: Wed, 16 Sep 2026 16:36:11 GMT  
		Size: 59.9 MB (59865871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5ffa5178f30860b1bf6166798e3ec442bc0dae62841acea74c0b8080190c337b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0735c252e05e01e2354e4f7580b75cf3dd7bf8438fa2afed1c703d40bb9f3f5a`

```dockerfile
```

-	Layers:
	-	`sha256:bade89a2bb107956405c28020b83b259a1c0022f90982aa96d8a5de27640ba6c`  
		Last Modified: Wed, 16 Sep 2026 16:36:10 GMT  
		Size: 2.5 MB (2525436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c28acc270911246fdc84eafa3eabf3c2267d968f429f03dcab59ba65cc10c493`  
		Last Modified: Wed, 16 Sep 2026 16:36:10 GMT  
		Size: 10.9 KB (10859 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0b6790d57f672e9dbc5cb8267908359384eda5db2bb14833f7e91bbe2a4e82f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94573369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2d2ee9363a4dab163a16c424681d1ec6f93445177e55cb3c8b7117d0402baa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 16:36:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 16:36:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 16 Sep 2026 16:36:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348d3e97dba62ddeda4fb66579f51746ad05a66513329f818b5d913a12e2d3d1`  
		Last Modified: Wed, 16 Sep 2026 16:37:04 GMT  
		Size: 60.2 MB (60196411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d045aa934a7b97db5b212a28944445446847153658d219d2f63db7f3c92bbbaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2534565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b261755648c929317c7099b5607a7b7f34d627c3f311592d396ff9dd1ee2ea8d`

```dockerfile
```

-	Layers:
	-	`sha256:3d0f752a33608d13a7cd3b779935d4045537c91dd9911c19ce3c50ede80f5478`  
		Last Modified: Wed, 16 Sep 2026 16:37:03 GMT  
		Size: 2.5 MB (2523791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffe5a800d59b06087ef9751f5c545704246ad932bdebb5270c5f70c886db5951`  
		Last Modified: Wed, 16 Sep 2026 16:37:02 GMT  
		Size: 10.8 KB (10774 bytes)  
		MIME: application/vnd.in-toto+json
