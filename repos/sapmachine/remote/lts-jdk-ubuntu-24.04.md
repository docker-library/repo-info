## `sapmachine:lts-jdk-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:ad7632ba8e3bf342989092ecf12d66acf06042e333eb9e35a2e1b24220442250
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:59ac0bfc03e7365ac3c96c8baf9d94033cef78f1dd5ef1d267210e74bd0ee335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168610585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55959f6b4b945ad20f6f55f106c0fc07cda335399eb69eaa499e7ed7e855268`
-	Default Command: `["jshell"]`

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
# Fri, 20 Nov 2026 03:32:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:32:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7003dd31f9fcb4524b04ca4eaf8001ffcbf125fd7e72ef5b1e2e65df9c653a`  
		Last Modified: Fri, 20 Nov 2026 03:32:40 GMT  
		Size: 138.8 MB (138817288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1061fc7960130cc32ea2fb5a2c266b9d7d98bb3be16db8e1c39fe79db31530bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2571271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b169d8141e01fe2297940930587816ae10c6d01edb814253a27521bbb3c572`

```dockerfile
```

-	Layers:
	-	`sha256:9a029c9b018fbe012b772edaaa093b147bf6827afa01053bcbd9ccb7763fd88b`  
		Last Modified: Fri, 20 Nov 2026 03:32:37 GMT  
		Size: 2.6 MB (2555658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7dcb10dfdc1d64e76fdcd56591c735820022b6dce618c6025c30fdb6db110136`  
		Last Modified: Fri, 20 Nov 2026 03:32:37 GMT  
		Size: 15.6 KB (15613 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d5f3ded9d8ae0c1ab813568e0f00b6c536fe6842535ec87ea9e48534562fdcff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166772174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518be378b5709d1baca5bdce1a7f2d80d1b90ea2594d47eac3505db808f1efd0`
-	Default Command: `["jshell"]`

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
# Fri, 20 Nov 2026 03:34:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:34:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:34:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de6f6a2012a1e58f2deda2590b5bd13cc325d54a5ad0d85e1b0afeb11aa9456`  
		Last Modified: Fri, 20 Nov 2026 03:34:47 GMT  
		Size: 137.8 MB (137806856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:81a518b1b5b74e9b9bfe3656187e6231a4fc53b302236781fe5f3d937347c425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2572296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96cee35ca1f83fdf5d209ef81b3dc9f7b28562faad6e3d9af5dcfbf18624c01`

```dockerfile
```

-	Layers:
	-	`sha256:ed08d6eb8e3497799f6468eb5e86ee4d112f414e3a9dbf2dbfade4b105d4c454`  
		Last Modified: Fri, 20 Nov 2026 03:34:44 GMT  
		Size: 2.6 MB (2556351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0805fbd53d937c2051087fd65a56730aa7d274ebffdf72c7af8824ee0dbae8b9`  
		Last Modified: Fri, 20 Nov 2026 03:34:44 GMT  
		Size: 15.9 KB (15945 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:bb8c320b6d5949ffeaef7fac9674bfaea1c8dc9709102d38427adf6992b4b452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171095705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68aaa3404b8ec3ff3c868fc4ab92ac8004ed364ac383af6b1072ee9a3b04bf00`
-	Default Command: `["jshell"]`

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
# Fri, 20 Nov 2026 04:22:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:22:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 04:22:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de2deb3560b3d401c22621cf13639140edd6cfbfa7d434c418f577a27665df0`  
		Last Modified: Fri, 20 Nov 2026 04:23:06 GMT  
		Size: 136.7 MB (136689466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:768809ed7034eb30252e46d45772bda19eed87d5f157b749c900b47c9eac053e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2570388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d129d1f72f2e0cf171f54cd60806a1b5b36df5f57de653f95837687b1d8df850`

```dockerfile
```

-	Layers:
	-	`sha256:355e712565f1b46a6cecb6744d74f3ecaa2c49125bf9e3fbd61a95035bd7576f`  
		Last Modified: Fri, 20 Nov 2026 04:23:03 GMT  
		Size: 2.6 MB (2554616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c94c2d8bfaff5506bc3e2c87bc1091a9e6f4795d42383a2d6ada2f2758787b2f`  
		Last Modified: Fri, 20 Nov 2026 04:23:03 GMT  
		Size: 15.8 KB (15772 bytes)  
		MIME: application/vnd.in-toto+json
