## `sapmachine:25-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:1cfd6167b945ac03f46dc03f29926f2b3a6c815a2874bd61ce9c4d00011e0576
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:0f0336c25a8139be59cf30461aa4c0a602c66ca7a92e53bf6e408bbb7fa2d2a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90748049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce1cce0baa28651d69c8f4841feae5262020120c9c31dc7aec2e437a75ccf6d`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:38:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:38:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6aa4cebc21f43a2da9c0a2aee4df82d5b41d6791e4ebb2e48447a8941b9a69f`  
		Last Modified: Mon, 26 Oct 2026 23:39:10 GMT  
		Size: 61.0 MB (60980437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b97eb2b11a72c008ab173c882f14d50e9ce50496f1cde4238897d84108ee7a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714c46586af9395cdffbc105456a5bc4e19646972da37530cdee3ccd948e37e0`

```dockerfile
```

-	Layers:
	-	`sha256:2ef618675e02bd97df8cd60317bb9cfec08f0fcaed65bdbf7371d5c8773f7475`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 2.5 MB (2527972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5e8688c52340db58d678649d81f5ba33c9834056d86994817935863523d1be1`  
		Last Modified: Mon, 26 Oct 2026 23:39:08 GMT  
		Size: 11.8 KB (11801 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:43b09fa53445596f6d444c30c70b7ccd20a0eddb1f2fc2d21dde2436fdb5aa0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88902917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8200c848cada649dd3560521ab2cfb8f7637431dfce4a725bae04886779d2a77`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:42:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:42:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5f3977a7d96b611bdb2cdfd579b7acd5d4b7c19da8f99ac08ddd15b8a1eaeb`  
		Last Modified: Wed, 11 Nov 2026 23:42:55 GMT  
		Size: 59.9 MB (59937659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d9dbb7ba565cc62fcfca002d2549dd211360fc7b38754ddbae7df8546de44bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2541114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c9b6d3d00e0f061aec73152d8058702e01f2e6c550b799431f596e3549a4ca`

```dockerfile
```

-	Layers:
	-	`sha256:c4578eade5b819259716f0d1456257c1186a3387d60a76775438c8fdabd95f2a`  
		Last Modified: Wed, 11 Nov 2026 23:42:54 GMT  
		Size: 2.5 MB (2529125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24b05986eed89c136db034237fb7585f2561cd8148e1ca608398b94c4c018898`  
		Last Modified: Wed, 11 Nov 2026 23:42:53 GMT  
		Size: 12.0 KB (11989 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4433efd0975b3aec86cd84e2fe0ddc8f0418ae3540015a91709cb25f3acf5301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93726490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ba63665bc6c1ba3289688dd3c8351222402a2d670b6a5c5a75e8c0c68fc20f`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:30:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:30:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:30:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebef75a3984a84a8487d399d030ffb1b850266ece970d3fb7267f571730d523f`  
		Last Modified: Tue, 27 Oct 2026 07:31:09 GMT  
		Size: 59.3 MB (59348182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:872e6b515e480e6bc8773717630b2cfe01e233a538d39d36ce1cb3e651597104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e7ace5a4a3a3e11841b4e15a9859edb26f8f827c541113dc8c54acd225d864`

```dockerfile
```

-	Layers:
	-	`sha256:67d79ef1b42659d382719b980452f82484fa8a6d926947ba5f563df2fe2bd4a4`  
		Last Modified: Tue, 27 Oct 2026 07:31:07 GMT  
		Size: 2.5 MB (2526858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07ec26bd7521205e101b1dee9b0aa502d0d49078f6d90111686f8377fc60d8d9`  
		Last Modified: Tue, 27 Oct 2026 07:31:07 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.in-toto+json
