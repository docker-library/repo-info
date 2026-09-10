## `sapmachine:21-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:2f92ed50c87d9b94514bc68eb79c2cff7e86729029aaca1bac71dae726f2a30c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:d73ab0bd3aa530b9970297348316313ca918382a06f0111575c20817544482be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247417133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d055c2fe95c9771c94b58239a8889fad696f47f5740086fc7e5a88a6cb15a73`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:42:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:42:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 02:42:13 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483cf6be30ce931f74eb898b3c2b92d1b52792fa3cc2391070101370c43b2e13`  
		Last Modified: Wed, 09 Sep 2026 02:42:36 GMT  
		Size: 217.7 MB (217666882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:74501058ae8b8ddfbd6b57d22ee19de0eba6bd1a33bb7e595c2bd1a22f53041d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddef57164c54ca7ac7200f6e1c81b5d390a569101e04e04edb2d36b28d4cbe60`

```dockerfile
```

-	Layers:
	-	`sha256:5bb283c8c7fb1af220296d476b9417768d564b37ed6cfd244a0a7eb24e3038c1`  
		Last Modified: Wed, 09 Sep 2026 02:42:31 GMT  
		Size: 2.4 MB (2379468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17f8ab9d5a22a479bfd8a79193a4bb4ed971b2266244244f6020db67d588cfdf`  
		Last Modified: Wed, 09 Sep 2026 02:42:31 GMT  
		Size: 9.6 KB (9638 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:374dac03c93931484fc37f5914c11d3e09db547281c7a861bfaa9c372971ea89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243522976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a914d0ea79ef31cdc4c0265b8a18d5345704f793a837cd415631c773f0de45`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:42:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:42:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 01:42:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989b3c864afc1da01e641d2e72e504d86c74cd0d76b4e9c5daf8841a82f4fbb0`  
		Last Modified: Wed, 09 Sep 2026 01:42:27 GMT  
		Size: 215.8 MB (215840229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fc366b8ddb0907d8513f90c700f53bd440773313af38c31ec79f241a27ee32b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50fe80d7a26c9bd2df76b2d03c197ae14dbcd34580d2710d669f2881d1ae11c`

```dockerfile
```

-	Layers:
	-	`sha256:a05ef147b04ce145164fb1b07ac4b933de197107aa343b9fca41833e4d3f8bf6`  
		Last Modified: Wed, 09 Sep 2026 01:42:22 GMT  
		Size: 2.4 MB (2379140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f36d94c68424cd5e1641270a6db6678753c42be7f6c7af1520367a977a7f4005`  
		Last Modified: Wed, 09 Sep 2026 01:42:22 GMT  
		Size: 9.7 KB (9742 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:2bf06bff0606604ec4de9488356e65ef1be0231774381edb5c51c1c79ee2017d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251992325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0c46ccbf07f886f9debccb26208fdbc9c6d8413fe15a198b5fe8ace8bfe539`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:33:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:33:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 04:33:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab447dae99b043dd3c64077ccdd1625718e39ae73a67035b185cf7f164fcc47`  
		Last Modified: Wed, 09 Sep 2026 04:35:07 GMT  
		Size: 217.3 MB (217289646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3277c6a3e9e6a294ff6d22f4c2a657e99ea7c75f20900c7e0391e98a8eef6cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35a4c1df6ab88937fc06bf808dd04cd4e92617a5dd2701200c3739281db45f3a`

```dockerfile
```

-	Layers:
	-	`sha256:706941bb3ba75d81906e2b56d548b5baf022111e128d1f43f288f52318d8eeba`  
		Last Modified: Wed, 09 Sep 2026 04:35:03 GMT  
		Size: 2.4 MB (2376964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:285e925a7408fd6130ba3487143613f914dfa72000e972733c12404e06f5c581`  
		Last Modified: Wed, 09 Sep 2026 04:35:03 GMT  
		Size: 9.7 KB (9680 bytes)  
		MIME: application/vnd.in-toto+json
