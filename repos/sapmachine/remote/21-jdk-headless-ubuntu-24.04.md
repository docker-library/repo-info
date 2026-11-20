## `sapmachine:21-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:6a26b0c2e8f118466775006421fc6648fb46a3acd3595cc2cac30c358d377bb8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:3a8ba9402239a4282f4a37b79e825a7657d8a40238c81fbb90688e2760a5fd5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248323509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8390b4067dad252f28a69c0471736a059b4b296f3a448aff0316f19d1abaac0e`
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
# Fri, 20 Nov 2026 03:33:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:33:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd653d8d19722a42ad6ebdd8a800acc75af23ecb9333573f7b852f4767ef3dd`  
		Last Modified: Fri, 20 Nov 2026 03:33:36 GMT  
		Size: 218.5 MB (218530212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f690e71df0b6029765c4dadcaf5ca1d713813c9fe17d2fccac946c4bb9e65377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2370491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933b1be8f912365c00e76d0c3ef93d22a93a975ed7454e3784fb2b3148fcda27`

```dockerfile
```

-	Layers:
	-	`sha256:1cc6f5a0c9c631cdad325bf6e561a32ec60ad56060e209db9a55a77496898519`  
		Last Modified: Fri, 20 Nov 2026 03:33:32 GMT  
		Size: 2.4 MB (2359501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7efbec28a34e8718276709b9b0db36857496076ebbc5414e23488bcdb63472b`  
		Last Modified: Fri, 20 Nov 2026 03:33:32 GMT  
		Size: 11.0 KB (10990 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b18facbf52be39b0ded654b28d5d19bc0d470f3b419777582218d2245dae4fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245704854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4fb66e76a7c4422980ffb890b0594f7e287c786c2a9897195c0f172e138345`
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
# Fri, 20 Nov 2026 03:35:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:35:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:35:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d10b36c13912872a7ffc684c46d8afafa674fe21a2c1bd8e23dc932f9fb286`  
		Last Modified: Fri, 20 Nov 2026 03:35:42 GMT  
		Size: 216.7 MB (216739536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d9bacdb454450f9b9659beeaf27b87371d5cf5e593d75ca70bf67b2dfe3a3be0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2371150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428390d2abeac64126e21c6211d7040cdb5db3bf1423d750f78ca55dc1039ab4`

```dockerfile
```

-	Layers:
	-	`sha256:d8cda839b5cf6e3afb22e4dae7fc38401e3811ea7cd8920577bf03257f93de16`  
		Last Modified: Fri, 20 Nov 2026 03:35:38 GMT  
		Size: 2.4 MB (2360008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fffcd04b301d87f5b00c7b58f699e432e437005ed8c84bc1924df6101b33604`  
		Last Modified: Fri, 20 Nov 2026 03:35:37 GMT  
		Size: 11.1 KB (11142 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:93775859fe5aa7252fbbc7132e4be530d658def8bdf41dc227fe2093263a2267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252560233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc6633d28e44a1c2e665c7f2650efe40ae99e6652c8e7ce3a4d2381b7ec5daf`
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
# Fri, 20 Nov 2026 04:25:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:25:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 04:25:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7cf00d02bda6016e5324f3dce8b1ced0a6d17bf0e7d989b82fec4aec959d51`  
		Last Modified: Fri, 20 Nov 2026 04:26:31 GMT  
		Size: 218.2 MB (218153994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0f76bf97a9673ce8a0ecb0cd54fef8d8c4478cf31196a7ebbd3329265d3ae62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60387ecb7f5336ad746e2bae39129dc5129ec636531f637dfeedc98b13472a0c`

```dockerfile
```

-	Layers:
	-	`sha256:08d9e8a8cce50d32efd9927f43cb8af59fb47b951ff79f1826d0d5ef81cecfcf`  
		Last Modified: Fri, 20 Nov 2026 04:26:26 GMT  
		Size: 2.4 MB (2356972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b82e221359218245dc45df46063689f365eebe9ac0ec4a38c8a008d17239c5b1`  
		Last Modified: Fri, 20 Nov 2026 04:26:26 GMT  
		Size: 11.1 KB (11058 bytes)  
		MIME: application/vnd.in-toto+json
