## `sapmachine:25-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:3aa37000bc53529508d7b2f5bd3dd2e135d56557bdb3a1bd902a0be15bd8318c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:694ac699ba292723f4d23197761b5d83ce2397831bf3d03137c59585c4642f7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88625353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee334fcaec1b0ca0b46ba25e9132e4edca9921625d8a47332274ee932bf8fea`
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
# Tue, 18 Aug 2026 01:20:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:20:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f8b8409a2bb666f56c253745bee7d50ae73dad4ad6f5a0177678b35acf835a`  
		Last Modified: Tue, 18 Aug 2026 01:20:29 GMT  
		Size: 58.9 MB (58888410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9dc1016f48b72eb60dbd0fb840d2e2d77f8c3ae714a86603a920eccc9df99d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4c8814e882372ce84e3da6848e2a8bc692cb421b76b2ac2846070c8680636d`

```dockerfile
```

-	Layers:
	-	`sha256:af8f97fd66646e5cda74b4a480f662c3ccc2953b4adc040c29b1a3279cd469f6`  
		Last Modified: Tue, 18 Aug 2026 01:20:27 GMT  
		Size: 2.3 MB (2301741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a29eb446e555da50a9b0d9d53b2bfee2f7af9e82f8cef24ab07d9c9b1ca7991`  
		Last Modified: Tue, 18 Aug 2026 01:20:27 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1c1de574a1e361333786f3c84c87345e57f8244642145e6ee2b512fb1639a036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85433125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547699b5c9d6b241d3ea977acba2207dc04499a056ce4f56e545c448b63fcc81`
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
# Tue, 18 Aug 2026 01:20:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:20:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61aed65b1bdff9ef0302534a8eb87ed41c6171b60da63aaae24dab2b85f10e8`  
		Last Modified: Tue, 18 Aug 2026 01:20:14 GMT  
		Size: 57.8 MB (57812672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:74a70981aeb50dded8c3a2794ab3030d1112687425dfa6202752b06942d8ebe6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f383411bddbbe0ff9998d3c835e7e44dcced2fbeabc4704a3b99379cde29ddf6`

```dockerfile
```

-	Layers:
	-	`sha256:892aa9f9effdfc74f2f56e085228dce55f637c39a0de9832fa8d9b336fe25f23`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 2.3 MB (2301434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e270cdf1dbf3be8d8e15885dccaf4e8b3187c360cfedb58f9ae837b18246100`  
		Last Modified: Tue, 18 Aug 2026 01:20:12 GMT  
		Size: 9.7 KB (9712 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4e37667f3ba47f09483704e42dfd4153647a3653e1ddbcd10b6b52b43c1f8c48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92513814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28736b0b09aa0ccceb20529d95d6aae488e046a4d4088a2ac6738ee4a6a97b2`
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
# Tue, 18 Aug 2026 01:34:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:34:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 18 Aug 2026 01:34:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8e6159650e172c4a663429fb049cc8012a15d6322565d6a3f718be572f0fdc`  
		Last Modified: Tue, 18 Aug 2026 01:34:40 GMT  
		Size: 57.9 MB (57875669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:86fbf4137d2a7b5f3924af1eb2d92a6de6c26d310dc56df84de48fdbf084b8df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:134ac34c0814ced322211ee075507493c718a16b7263174af8ac76afcbd5f429`

```dockerfile
```

-	Layers:
	-	`sha256:ef9562cd3f6f6af36a7759001f664d204e0ee543f10378dbf81cc744c3602cc7`  
		Last Modified: Tue, 18 Aug 2026 01:34:38 GMT  
		Size: 2.3 MB (2300565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1bdd8730bc36412fcc9535b031d1716bf53126fe4f28b719e9a9f0ef97276d9`  
		Last Modified: Tue, 18 Aug 2026 01:34:38 GMT  
		Size: 9.6 KB (9640 bytes)  
		MIME: application/vnd.in-toto+json
