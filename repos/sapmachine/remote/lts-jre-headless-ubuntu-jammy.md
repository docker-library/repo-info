## `sapmachine:lts-jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:6323a09037729654969decf86918ff0e7e97f0c971d6c9a4aa0b05d0e734d0fd
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
$ docker pull sapmachine@sha256:72a03764b87279851e6a6e78f16da5df2c8feed95d0c11c46a24c809cbd1c8f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89062539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b76eb19191fa00877a5e6eac9fec74820b7d41c7374f79395e490d06cdc66e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:40:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:375292f15989907630b48c2bbfbc575a264ba2c8ef11506f4be82e1bc965a880`  
		Last Modified: Wed, 11 Nov 2026 23:40:47 GMT  
		Size: 59.0 MB (58993006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5fab030a3e743e92d932e50e15719ad9b90bc18498428837944727fdf85b0460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2334bb2de8f62fc3e3213dd73482763ab54affc8a24e9ed369ac57707b97cf2`

```dockerfile
```

-	Layers:
	-	`sha256:8b8b97a3cc803bce5e8d7e8482a5fb7b5b30fb070ddfcf7a409b30a9d566d0de`  
		Last Modified: Wed, 11 Nov 2026 23:40:45 GMT  
		Size: 2.3 MB (2302461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb8dafcc8a3dd17a731d9904e9e28836ff6a4eaa3c8369ab24d7eae156d06af`  
		Last Modified: Wed, 11 Nov 2026 23:40:45 GMT  
		Size: 10.3 KB (10342 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c8d1eb9bda761d6c2c815dc1cf09d47b48a38e0a39f07d639ca2a2a5b6f61d59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85907656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65ef94a5dc651ac9acc2d265b2c0805c1c592b863ca68e995f35ceaa946294a6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:42:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:42:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf92287777225cb8015bbcb2096f09911ed2b68efd2331ea315c9c45404141d`  
		Last Modified: Wed, 11 Nov 2026 23:43:09 GMT  
		Size: 57.9 MB (57906244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b1e61ff643b7ae94f83c8bd5a556ec5bb3b365e997e6d780bb7087090f459490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7f6536ef3b3c187422e8903aee40d9efe2ef4583be08e4d87b489588f26aca`

```dockerfile
```

-	Layers:
	-	`sha256:5150517c8984d0c9e68cdc7aa01bc08723fe873176ab46f1d0fd79ac1618fcfe`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 2.3 MB (2302154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31d409cbc98809e67127d93ec3dcf5e1c0c62e502256c37c82434b2f60261297`  
		Last Modified: Wed, 11 Nov 2026 23:43:07 GMT  
		Size: 10.5 KB (10469 bytes)  
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
