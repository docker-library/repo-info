## `sapmachine:21-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:f3252af5a1c9e5cee14553478f31f02275cc682fe560272409917b5749fd9193
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:bc079c9a78647d1e33d4a5bebf15ded6ecdb3039225eefe6da17109a86896d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247789846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71618d841a1f6427463c4b2addc52e20f0644cdec1d10a0b45487cfe0de71dd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:25:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:25:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df788265f15ea141c828ae3d408e13ae032d981d759d27480d08afebf78bf64b`  
		Last Modified: Wed, 22 Jul 2026 18:25:25 GMT  
		Size: 218.1 MB (218054245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:86538a2d6455c16874f3f55853cb19003560df47e4a386c3b14fcf0e7e1765fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c25483c4cd08146db2408c579bbd3138c9597b4efc7027d35355c122cc46932`

```dockerfile
```

-	Layers:
	-	`sha256:caa7de53d0155de235673344aec9414721fdb688274921264556318ec92c8648`  
		Last Modified: Wed, 22 Jul 2026 18:25:21 GMT  
		Size: 2.4 MB (2358157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:997a9835bd89400a295f8e13b69efc0876bbe809d371c8d1e867bfb1d99b2e0e`  
		Last Modified: Wed, 22 Jul 2026 18:25:21 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:bc7c1b537cecdc558562e67a57df21bf2172495d34183693ecfce0ebd6d932eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245134078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fa77175f34fb8689f2f3997b082a6f070d23cf6c8f5f997ec020c7eeee07f9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:22:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:22:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:22:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7c8e3422d4aeddb0a90ea0964366989e92313c8977417eb13c5d32f16c56d8`  
		Last Modified: Wed, 22 Jul 2026 18:23:06 GMT  
		Size: 216.2 MB (216249898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:08169d4e407a99fc189a91615036cd4a24090ef4c6fa843308a0a699c54f5393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55605fbaf44e35097c84d7079216d53697c09598d83864f664f46150e467431c`

```dockerfile
```

-	Layers:
	-	`sha256:c5599a4e9e1c97525f3d6c1f9a1564bd12452ec6c7456300f79ac56ccfe9aff1`  
		Last Modified: Wed, 22 Jul 2026 18:23:02 GMT  
		Size: 2.4 MB (2358664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43fed17e89bca47a7a523315055ec79fc42c8b0e429af3952790b291215122e`  
		Last Modified: Wed, 22 Jul 2026 18:23:02 GMT  
		Size: 10.4 KB (10385 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6be268c0fa8402d46ee23b0427fef2f12c8eaecc97b95cf5233e329d236f6395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252085565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618893f9b6132635e980802037ff7f8d6912e0173dfa9cd86b35397be654d5ff`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:33:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:33:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:33:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28f7a242a73cbc97c2b184d27b77177047156fcd38c82a7d6b556db0b80e68a`  
		Last Modified: Wed, 22 Jul 2026 18:34:10 GMT  
		Size: 217.8 MB (217772089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:18ca2120017a24e80a42924845c91752471480efd084896849a103876265ee66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2365930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a876daed89a8368f445b8efe94079b5e1ee42292a58bf98c5f927b98866cef8`

```dockerfile
```

-	Layers:
	-	`sha256:a2b121237d7de281e309e01424ade01f65a9398bf5d6eeb21a20d76abd4a427d`  
		Last Modified: Wed, 22 Jul 2026 18:34:05 GMT  
		Size: 2.4 MB (2355628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8287a5296fc1f50f0366049f96dd12547c086ede86ea03a5d0b77dc4f3de2e63`  
		Last Modified: Wed, 22 Jul 2026 18:34:05 GMT  
		Size: 10.3 KB (10302 bytes)  
		MIME: application/vnd.in-toto+json
