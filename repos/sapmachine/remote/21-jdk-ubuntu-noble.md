## `sapmachine:21-jdk-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:8e5324772ff5a5a95ca4c1f056a89e70894af9abc97c88dc5b23bf8cfb3aa070
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:fd6dd03702b1f5237a1789ba6383766fb6532f39eae9d4d13b7302ea921f6715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250262025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df99823615cb416164d6e917d222230ebec700626c24db5f9372ce9a20d42e54`
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
# Fri, 20 Nov 2026 03:33:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:33:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c838a2023fdcf80dfd0e2ff79f02e6ecb71b87eb6c2240a39248ac3930f726`  
		Last Modified: Fri, 20 Nov 2026 03:33:41 GMT  
		Size: 220.5 MB (220468728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c091ea9f887ec6c97cdfbea6b58043d0e5979e1e2dc3f0dd1f8636195f577361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef57fb1eeef61280f3e123b583bc9f37285a645802027be23835d359e51e91c7`

```dockerfile
```

-	Layers:
	-	`sha256:3d4eea838b88b99a28faeb69b61f251d0d223738adea3387367007cd1695342d`  
		Last Modified: Fri, 20 Nov 2026 03:33:37 GMT  
		Size: 2.6 MB (2609171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d0898badf665a9ea7a320f0feef0ab7320842ef1659bad02be0598c1207afaf`  
		Last Modified: Fri, 20 Nov 2026 03:33:36 GMT  
		Size: 13.4 KB (13378 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a85d3ad2755f36c42da13a3229086c61c7b83f8b9991262967fefd854f2709d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247640922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0ded196ad4927f8303753a57d39ba27e6831ace94f74519bf0a0f615426737`
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
# Fri, 20 Nov 2026 03:35:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:35:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:35:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6868bc61b17ca178fd68c758c5d22bce47681b84ff24a25dee714338823131`  
		Last Modified: Fri, 20 Nov 2026 03:35:39 GMT  
		Size: 218.7 MB (218675604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:060781f0d3e3ca61f966a17b7227a79a16a40f4352a62ce5e659022ac0bea3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2623410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d123813298e7e2eb20640e4b7084b614cb04ba2804acb23685c620971d22db`

```dockerfile
```

-	Layers:
	-	`sha256:7c6dea28726a4910d24076ca27be22b433c07d48107ae070e30801462cc22363`  
		Last Modified: Fri, 20 Nov 2026 03:35:34 GMT  
		Size: 2.6 MB (2609783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:505af9c9cdd2e7ce64fd9f27bd992cf4f19e56eb375bab5ec8c585f7d5fdb6fa`  
		Last Modified: Fri, 20 Nov 2026 03:35:34 GMT  
		Size: 13.6 KB (13627 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:322e457c872690ce1c48f16cfab120e2bd9909ad3c4cf6d5a3ef20b33c24b12d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254783423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f499581defd99a43ebfbf970c4214eb65f26cfe3cfe8c64e6e4223fc68ffa49`
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
# Fri, 20 Nov 2026 04:25:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:25:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 04:25:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec72392af98405efeb7105112920e7ad0b8e99ec9d49d071d033aa5d9cd126ff`  
		Last Modified: Fri, 20 Nov 2026 04:26:31 GMT  
		Size: 220.4 MB (220377184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b3e4c0b75e7dded05fa521460251b91445f3f8db49bb204f5a1880cbfd6cedfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880e23751e81a7950808ae054ec2f93adbc4d0452b06dfdaa291695c2f57682f`

```dockerfile
```

-	Layers:
	-	`sha256:cbf84fc674b051dad5eb547dab701281d176efa39b1d7c8aae2e6501aa9f145f`  
		Last Modified: Fri, 20 Nov 2026 04:26:26 GMT  
		Size: 2.6 MB (2606771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd219e1431391ec7c89fd79fce7f0c28f0d5d3f206e998ed0d0441101b7bac25`  
		Last Modified: Fri, 20 Nov 2026 04:26:26 GMT  
		Size: 13.5 KB (13494 bytes)  
		MIME: application/vnd.in-toto+json
