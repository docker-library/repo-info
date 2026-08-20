## `sapmachine:26-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:fca886e3294c2754cfcaffb7ccb3a5ebb22e4856849d1ffb1dc924a923cd1d6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:d62bb3da59b2289a86cd2b0b48d466538be592b0e4b79a4a088c10fbb3373123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.2 MB (91191311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7757ab05c91cbf68da7ef722a410c12fb77b32b06d8e8797377c9a061c3b0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:05:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:05:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:05:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1bdc30f91b97e3a6e46b32f10d4a1988913bce799bd24ae33fbb479226aa579`  
		Last Modified: Thu, 20 Aug 2026 18:05:21 GMT  
		Size: 61.5 MB (61454368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4411207a3c4413c1c339d517d0b536010414351cd1d18d962065e3190b56212d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690bd401af35dbca75578871b58ea45cf7398d6965d35fd016ce5a75f1e975c4`

```dockerfile
```

-	Layers:
	-	`sha256:8f196477f6d660bb7bc79049ddb3a7cf2db6f63ed78fcec1295f1189396875d8`  
		Last Modified: Thu, 20 Aug 2026 18:05:19 GMT  
		Size: 2.6 MB (2551833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:679468d1e6415a11cfe4642b85fc7bfa5285a7adb0bdde2511464ce09263f503`  
		Last Modified: Thu, 20 Aug 2026 18:05:18 GMT  
		Size: 10.2 KB (10169 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a0fec8c51517617b96b7e511e5ff778532cfa1c816b46f17b7a38f0ed3981a8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88042892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08cdb89cfb31162ab7539e9e80975942c2bccd60bf9025648ca991b060aea0a7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:02:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:02:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:02:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95db43a7afe29f29fe3ef43f7c7565144693df5c9bc7d9145b2efef6a3f27272`  
		Last Modified: Thu, 20 Aug 2026 18:02:19 GMT  
		Size: 60.4 MB (60422439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7b33480de631faddcec518abb47d4c62146eb39129d8c3307009e3992866cd6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2675e6eb01306e44f21cfd817f1e75c1b981c766e75d50557a72dfed56b23a`

```dockerfile
```

-	Layers:
	-	`sha256:03c1741b6d181e101d8b6380131ecb5e97b3161e29ca5ec3c4f6f042679191c2`  
		Last Modified: Thu, 20 Aug 2026 18:02:18 GMT  
		Size: 2.6 MB (2551536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b024488e6427f6c325dc5cc25018ff181aa809b2aad96f5e875c23e9e4f0bcc`  
		Last Modified: Thu, 20 Aug 2026 18:02:17 GMT  
		Size: 10.3 KB (10295 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:02f18ece732f41834777d0509b1d6006fb93dc5aa139bb1ba2bfd1f5213f1892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95591750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327450e5f8c68d15d7be9a42a2a6ad4d62d1d339d1fb9f8249fac6581422bd33`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:00:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:00:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:00:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385a9b927fb19029d072fc957427d2f1bc1dc1b67ac4c99632d98b8d0ca480fb`  
		Last Modified: Thu, 20 Aug 2026 18:01:16 GMT  
		Size: 61.0 MB (60953605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4cfe6386b96ac0ab86795f664f2849b37ed71a37aa4c00e743cced31a15a987b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7c02e366c48847ad4a8de5c1162985cfeb43a398cc2033d8ab3f9f86c770a1`

```dockerfile
```

-	Layers:
	-	`sha256:fdfa5f55f32b840af62060c3247a83b74a3ce55383b561480588da0179aaad79`  
		Last Modified: Thu, 20 Aug 2026 18:01:14 GMT  
		Size: 2.6 MB (2550747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7883a0303eb716993da7ea81f38f4063267932178624a84a3790251b874cc860`  
		Last Modified: Thu, 20 Aug 2026 18:01:14 GMT  
		Size: 10.2 KB (10225 bytes)  
		MIME: application/vnd.in-toto+json
