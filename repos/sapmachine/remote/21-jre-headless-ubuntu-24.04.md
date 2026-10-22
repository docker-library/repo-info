## `sapmachine:21-jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:85ee6ac0f1e4ce1c88d73c2d0ae201318d98129bc678004401b8b3afae359850
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:0d97d8f4e3311e870a5002b1cd05f904d6bbc68bbde9322e310dfcf21fa1ed7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92141229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d35db094ce49aefc085cffb6feb4d9497a5f39381d4e58e3cd2269d9d581dc`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:14:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:14:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:14:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15572955786000eba539cdb59193e137b2672a95562727ecff1b3faa6cd784f0`  
		Last Modified: Wed, 21 Oct 2026 22:14:30 GMT  
		Size: 62.4 MB (62375471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0a60d1ff0e527b8c6dd961406e09ca9331d5c55e266d91743a41920a20e1baae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92384dd38a871585a319b983ae562c01781e43e10e3798aa7516690caeca73b9`

```dockerfile
```

-	Layers:
	-	`sha256:91c398d82802ced6126ecb35c2c0a89ede93850fcb04d8a41c84b8dea7eec863`  
		Last Modified: Wed, 21 Oct 2026 22:14:28 GMT  
		Size: 2.3 MB (2275340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7341eac4f4505992a110ede0fb01d0938c0a7bf003975a0230ff3598c85a2f91`  
		Last Modified: Wed, 21 Oct 2026 22:14:28 GMT  
		Size: 11.0 KB (10963 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1cb12c1721ccbaf7feefd15b13385112702d27bf3e222d52856c8dcea2dedf0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90501041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfaab56acb768100f522b6e0e4f96f413fe7aa25c1bf7772262f2cb081be1d6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:46:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:46:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 21 Oct 2026 22:46:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353ff9222d4064bbd2b43061a23f092c3e6afdb0294f3a2ac3cbac146d41a0c7`  
		Last Modified: Wed, 21 Oct 2026 22:46:28 GMT  
		Size: 61.6 MB (61561280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a07677983f0dfe9e0fa52c7bc04626b2535d610d003926c1fd25b56fccbfce73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a6b8a822b0dd8324985f204d7d8f46b12646642b5b87fa196d6e2621c589f5`

```dockerfile
```

-	Layers:
	-	`sha256:7cf29bc9dd8d2d6c58369af6ff99f45e5d978dfa8971aa3496fb6647c37e762a`  
		Last Modified: Wed, 21 Oct 2026 22:46:27 GMT  
		Size: 2.3 MB (2275847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07a508fc7aad6800cd78f8f40479e87762287b905471955fcb5151cec39aa476`  
		Last Modified: Wed, 21 Oct 2026 22:46:26 GMT  
		Size: 11.1 KB (11115 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e9826ae05e4a4000de8bc68a3be23466176a78ed4ccca7da56cb14159eeec1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96342939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d5ae7eb346f4b142ca9ba4c0c2b15b97064d60ccfcbbe4107118cb90004b0b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 10:03:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:03:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 22 Oct 2026 10:03:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1994bb1765d326a8661ca69e935873598dcdea96bef44a6911d2af7b10c40c`  
		Last Modified: Thu, 22 Oct 2026 10:04:17 GMT  
		Size: 62.0 MB (61964949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f17082ccf95cf75f4a24534f2141f594f53cd5bb252a83a6ee7f35d39d6a30e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d679e033c314201c33ba46c3df050dca7807bb2b00231f508d3415dcffc3e9d8`

```dockerfile
```

-	Layers:
	-	`sha256:a06b1138f4448d66bcf302d1f6f902350360945e54ce16343c6d9f4b8a89dcde`  
		Last Modified: Thu, 22 Oct 2026 10:04:15 GMT  
		Size: 2.3 MB (2274757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e33cfd9a710bafcf0ec4c53af762a3de65edf6cc4930162ed64dad2b3f8b64`  
		Last Modified: Thu, 22 Oct 2026 10:04:14 GMT  
		Size: 11.0 KB (11031 bytes)  
		MIME: application/vnd.in-toto+json
