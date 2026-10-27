## `sapmachine:lts-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:7c1d1b1e4461b3584139b624da7b60b5e301cdd2d2ff06137e33339476537786
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:dd15ac2181508203b0fd83ef6f05a70d76535e94271bcbda90b69ee42111fa58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88745554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6509755ea4d7820adb879aa2b653f1560fdbb9d29cb00da83e11722be5b2aa56`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:39:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:39:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c085a62ab9742c151a00915808d59ad7b344493c195af34b9b378ed9e977d7`  
		Last Modified: Mon, 26 Oct 2026 23:39:13 GMT  
		Size: 59.0 MB (58993066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3bd3f2ee8ae4eb9b568c0abef601d1bcbcb2c0ddf9a1bdfc288d2792f069e88c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bba667a5ddca16d30d05d02c1677b4ce480d0cf8602dae8c6a824a9578756b`

```dockerfile
```

-	Layers:
	-	`sha256:bce374312bda411a70169b7d768495c00af4e9d67ef08311f404172ca423a32d`  
		Last Modified: Mon, 26 Oct 2026 23:39:12 GMT  
		Size: 2.3 MB (2301853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d29aa180008d4f88d608f1edf4dbcbd36ba21c3f61f0d821f585c1561207232`  
		Last Modified: Mon, 26 Oct 2026 23:39:11 GMT  
		Size: 10.3 KB (10342 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:da187ab87a62a242b33ab8aeef2ae13a0ccb9e497e290896835cdf9b878049d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85590710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb537489dbe685c863406739d96e2eb0a4988c16ab327c7d910c7a2e7c593faa`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:44:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:44:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:44:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265ea44c1e1f2a0a6027ecb586d7bdf77141df930c23553a623088e4bf073384`  
		Last Modified: Mon, 26 Oct 2026 23:44:26 GMT  
		Size: 57.9 MB (57906103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4c15441e9aa423651c8850ea2b12b1ea39a913d452dc44baea37fffc6d52c766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c3c71c2279bacf2ea0dbecad4b2b52c5ecaf5410383145a93dad85de179036`

```dockerfile
```

-	Layers:
	-	`sha256:c191b5cba4134168809d25db0256ae1a6a07e9827c329a5c914b5ba3413d2387`  
		Last Modified: Mon, 26 Oct 2026 23:44:25 GMT  
		Size: 2.3 MB (2301546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e4025ec93cf9f10e8c20493f483095254d974ea9daa2630270f152fc35aebd3`  
		Last Modified: Mon, 26 Oct 2026 23:44:24 GMT  
		Size: 10.5 KB (10470 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:78139e6540ae0c9ed5479adb7be7ea97f7a2266ba2cf5f07fad7627b4068ba27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91813200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6f615b8e45018f45bc58d873da27e7c462b08ba8a980d612a624fb256496b6`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:33:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:33:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:33:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fdb6ac2cc90380db0a4a111f7e17d793d4d368dcaa45198f4e9485ff2a7323d`  
		Last Modified: Tue, 27 Oct 2026 07:34:25 GMT  
		Size: 57.1 MB (57109267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e7c9df4a5b6ac3484d204bc72d0eb77ebc10f9c384168a09c999c6a8883a4383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d8e5d128b0660bbccbce372cf4292f3b70cfa8633fbe869b63da6cd7478120`

```dockerfile
```

-	Layers:
	-	`sha256:b5461e41972ad50eb981124d3a2cb50da4a450f003053ea53a6e220f9d3ad0f4`  
		Last Modified: Tue, 27 Oct 2026 07:34:24 GMT  
		Size: 2.3 MB (2300677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e54e19e71e0de21fd5b8cbb9eee9cbeec2ab38ce5e4909b520fac543a4dd141c`  
		Last Modified: Tue, 27 Oct 2026 07:34:24 GMT  
		Size: 10.4 KB (10398 bytes)  
		MIME: application/vnd.in-toto+json
