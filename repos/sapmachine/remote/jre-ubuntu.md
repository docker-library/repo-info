## `sapmachine:jre-ubuntu`

```console
$ docker pull sapmachine@sha256:8cb77aa5c857a03a685971fbc4f03d8cfa3be33f2062011356aa189dcddd5727
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:c3d401bd224c169df1670332587dfc04af23b776ab097bbe544b38542214b007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90691254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1aa83ed518d25f3cbe4ef89085ce4e8ce056db63522f4dc9c843a7a9ff2d31`
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
# Fri, 20 Nov 2026 03:31:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:31:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17e8b4400a3ab3ae6f436a5b3e543e4d7e0dc910d187cad8a2c30f760525c04`  
		Last Modified: Fri, 20 Nov 2026 03:31:16 GMT  
		Size: 60.9 MB (60897957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:081d79e9dbb727ffdd69e24314ee8b86565c4f570172f32265138e33aa86720b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:723fa66b1d339c082d2d35a8c88a596d09784d1c29c826531c9380782263650c`

```dockerfile
```

-	Layers:
	-	`sha256:9e4db92170b15b6aa1d412d09c88e9165c12dfcb5a3b5bcb52bc336382e8b564`  
		Last Modified: Fri, 20 Nov 2026 03:31:14 GMT  
		Size: 2.5 MB (2526937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:663825531bd7923afbe253ef35b414e5155f4bf6d8ded27c79f6d4ae4c0dcf37`  
		Last Modified: Fri, 20 Nov 2026 03:31:14 GMT  
		Size: 12.1 KB (12059 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:bd534cffde89aaae3537a41c0dcb1c7013880d9b55d787416a4d5cc7d1a56950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88901886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f504c1aa538a3154259417c4685515f1787697794395826ce54fe35877fc44`
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
# Fri, 20 Nov 2026 03:32:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:32:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b63d1a145882436dcea46dbc3109a9d392642f8f0debbb9447beef001f9d6b6`  
		Last Modified: Fri, 20 Nov 2026 03:33:01 GMT  
		Size: 59.9 MB (59936568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:70918ef48fa61df6823fffb679191b3823107dca04b6fbe6d4c448ea1fa303a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:158e403c962c7541e9764a65e290e35490b52aaff6a16ac50391f5838608d432`

```dockerfile
```

-	Layers:
	-	`sha256:fdc79353ba63fdcb2175ebe976940c1468129ab17cb3c24df535619e9cf0f0c2`  
		Last Modified: Fri, 20 Nov 2026 03:33:00 GMT  
		Size: 2.5 MB (2527498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6d43d41cfc766148ef158e3f31d41ea4a6f7d0fe226af226badb715fd54f889`  
		Last Modified: Fri, 20 Nov 2026 03:32:59 GMT  
		Size: 12.3 KB (12259 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2efc42b56e3624f143886a6bbaf0428883adab45463544430d8917b212852488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94649048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c8cc879d734089816d61d0ac9d746571f56cd8c70cbf293289e69fa17bebbd`
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
# Fri, 20 Nov 2026 04:16:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:16:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 04:16:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9951ac4f79499188677c9aeedad47bac74b780168228714fcb1ce5353a4b57c3`  
		Last Modified: Fri, 20 Nov 2026 04:17:23 GMT  
		Size: 60.2 MB (60242809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3cea7704e0d43baaf42ecc03b1a6948adebf2bf3fe6ebab08c38ab5e04b6479d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7c0c91702162728266685558841a6a84c0a9afbf1d71f3d6802432fb869937`

```dockerfile
```

-	Layers:
	-	`sha256:c9d35579c9deeed50117a9808df8dcbf165101f1d91404d3a5f5640aaf6c1327`  
		Last Modified: Fri, 20 Nov 2026 04:17:21 GMT  
		Size: 2.5 MB (2525829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa95def41e38e9b8a40f173db1a3ac5305caf951550f86ae2197f0c41531ffbb`  
		Last Modified: Fri, 20 Nov 2026 04:17:21 GMT  
		Size: 12.2 KB (12151 bytes)  
		MIME: application/vnd.in-toto+json
