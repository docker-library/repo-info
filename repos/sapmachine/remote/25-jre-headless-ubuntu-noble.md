## `sapmachine:25-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:4d1d5ee4efa199c4bc6b50c4fcb0d68a95b9a9fe9a7bc8506fbd369230764cf0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:22ddbd0f81071fb970161e72b96369e1a820e62642560510f0415831a1681618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91458090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68e052bc3138b48b8dd7adadf2f6bee186a8a97ac48fe3acca8ab3c21e9e628`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:48:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:48:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1daee94cd0c00d243148b9cd4d94de23d3cd9db6dae4983363c83a4648c53e43`  
		Last Modified: Tue, 04 Aug 2026 01:48:49 GMT  
		Size: 61.7 MB (61706981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:21293a22dc7c558370b7b04158bab1c02e27b3e36fcfc36bdc5d39e19b907c33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0965086d9fa3f7eea6fe68e71667399b921e65899ca4a2b85a442bb6746e518`

```dockerfile
```

-	Layers:
	-	`sha256:efd7377aa0717cd2ebfa9e152d1f08cdd0972998cee9ac795c59744a7b1813fd`  
		Last Modified: Tue, 04 Aug 2026 01:48:47 GMT  
		Size: 2.3 MB (2280848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a148c5d9d4f6288e46af52e37833b67d5d19840e5b1f97dae8ea2f88e05c792d`  
		Last Modified: Tue, 04 Aug 2026 01:48:47 GMT  
		Size: 11.3 KB (11264 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c2674662c40e45ba9e2b3a85b6ad23bc316082ef4fa8d3bb004d12e077cd7e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87147500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c452b70a55ad300132af86a719a302280a9cefc1e35716572ffb9a44632d9b69`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:49:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:49:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 04 Aug 2026 01:49:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20c4139c0a41d434f5cbd1f189350b62cf5f7b6d7bb88efe0dd207e45e43f60`  
		Last Modified: Tue, 04 Aug 2026 01:49:17 GMT  
		Size: 58.3 MB (58260682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5d6d211b39e8be3bdafd2cddaa62fa15e2e8447c56e2d28df22bf859f816b1f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5433eb539f62b72926717b588a3c53f6156bb173344f7dfc27d6075e996058`

```dockerfile
```

-	Layers:
	-	`sha256:3ebf1431fe6bd1ac62eb599a7818ed694d24f97d0f08c8b053557f5891c4056d`  
		Last Modified: Tue, 04 Aug 2026 01:49:15 GMT  
		Size: 2.3 MB (2281388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c604017d798bcd913e8a3119c18b868ecb1809fcdbe06806b1085cfa13eb4c1c`  
		Last Modified: Tue, 04 Aug 2026 01:49:15 GMT  
		Size: 11.5 KB (11452 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4b32e275f4288c727b29e026eaa9bdc29b8b7177691d42c86542c95a6e6038cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92662252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5613dc526bf603f1eea6bb5c42193c243fde26d6599934cf662fafd0df979ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:26:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:26:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:26:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99afc0ec6d7741e083e32b433398c4388fc920cc6a34cee418968c4cccfff4b1`  
		Last Modified: Wed, 22 Jul 2026 18:26:50 GMT  
		Size: 58.3 MB (58348776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e5c0a494cb6166b040225730e31105b9b405d856e24bfb1f898637eee2ce579d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0821ba8542c922af2bc53be73b9d0174a57c5b1ca8534963cdfbfbd4883b57`

```dockerfile
```

-	Layers:
	-	`sha256:919795878b67eee4d2c0ff728549f35b9495fc1b00f09e06e15040eb75251003`  
		Last Modified: Wed, 22 Jul 2026 18:26:49 GMT  
		Size: 2.3 MB (2279627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f228008f02741d0124dbc65354c9c485ab210ff86ba875b480e31399671a697`  
		Last Modified: Wed, 22 Jul 2026 18:26:48 GMT  
		Size: 11.3 KB (11349 bytes)  
		MIME: application/vnd.in-toto+json
