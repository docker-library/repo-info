## `sapmachine:25-jre`

```console
$ docker pull sapmachine@sha256:38d4ed7a54e9d7c6f94523d6416b32fb84c8c1cc8c58df7b52811ea6fd0960e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:6b67908f93bbbaa9cb77e9f6df54cd747f3273fc89b5690a2d4623e0fa9ea4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90773678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b25edfd10676876795e2b87a6d683c3a74ed144cddc0d1f7d674f956f517b30a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:39:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:39:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbcbea57c903a3e9aaf113470390076e172eeeb402f51f25e940522e926fa87`  
		Last Modified: Wed, 11 Nov 2026 23:40:04 GMT  
		Size: 61.0 MB (60980455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8b55c8c1034ce474e3e769af2bf3939aa078d695281297317762b98af4abd812
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f920053dfeb281fcc801d4263c7b0b1426b00df151c85a84f78d13e782c6c4f9`

```dockerfile
```

-	Layers:
	-	`sha256:b2090b815e68745049d4414d7e2f50f329530cf32c778ccdaf4067f0f4380da4`  
		Last Modified: Wed, 11 Nov 2026 23:40:03 GMT  
		Size: 2.5 MB (2528576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cbd8e8d129c7016973e80d14cf75ca533de0280216612d9db774c2764c87dc7`  
		Last Modified: Wed, 11 Nov 2026 23:40:03 GMT  
		Size: 11.8 KB (11801 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre` - linux; arm64 variant v8

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

### `sapmachine:25-jre` - unknown; unknown

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

### `sapmachine:25-jre` - linux; ppc64le

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

### `sapmachine:25-jre` - unknown; unknown

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
