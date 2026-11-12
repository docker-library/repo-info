## `sapmachine:jdk-headless`

```console
$ docker pull sapmachine@sha256:da89aea246cf08e6dfa0bc52cc5c312d7793b4bef51cb9ea3705415e1c4ba898
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:c9d10742d6417f59f5ac30252f5d65f6d894d7ff217bfad6a2325926bba3ef85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167972703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91623e2337a4ce6622409857137f66c78e28b7a0a373161a799e37d8f3146767`
-	Default Command: `["jshell"]`

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
# Wed, 11 Nov 2026 23:38:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:38:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:38:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4e0bcd358c6b3896780d4e5f2bc8e87482bb9fbb1915120daf04245e427056`  
		Last Modified: Wed, 11 Nov 2026 23:38:57 GMT  
		Size: 138.2 MB (138179480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7be3306882579ec5e3e0702ef65fa8ec184d8cbced80bf1e0a3bf970a82f02ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39efa950a4ecb2145b9412a4035dd6b1635f0547056cb4c608ecdc337f00490a`

```dockerfile
```

-	Layers:
	-	`sha256:55c12b5e4d9f4c23c2c6ae9c7e7cd2bf0b36c3389dc0911972f9a3c8517fbb1a`  
		Last Modified: Wed, 11 Nov 2026 23:38:54 GMT  
		Size: 2.3 MB (2301307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:402fe7203105c4199a87794e7540b30ad86eae7d7a4d7f3d7b9fac83fa4b012a`  
		Last Modified: Wed, 11 Nov 2026 23:38:54 GMT  
		Size: 12.3 KB (12336 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:6c32539bf34d51026f2e2123baece8a8947f9e359492dfb300c6b222b44388f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166226826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f857aeb6b1ea8b0071cc13c17ee2cd8dd49d5f006dcd738d9a583402412cfe`
-	Default Command: `["jshell"]`

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
# Wed, 11 Nov 2026 23:41:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:41:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45d02287bb95ba46d22c73e4d51aba161911144cb2cfdfda29841dd0f34c3d0`  
		Last Modified: Wed, 11 Nov 2026 23:41:42 GMT  
		Size: 137.3 MB (137261568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1a459f2c8c3e588904c9b8f5ee173c70f445d442201112a0d9887e92edd181bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304e58d5770a0a7b4160daf8d110a3b1d41c207bc71ff54b7408a1b4d30d41cd`

```dockerfile
```

-	Layers:
	-	`sha256:2407de7feabaa8e379502476f3c8aa15d358a005630e0dda690a3de1215ae060`  
		Last Modified: Wed, 11 Nov 2026 23:41:39 GMT  
		Size: 2.3 MB (2301859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d9af695aea0abdc78fc790efa31a0c7d771801ee64c3890d6b6c5f869f4aed`  
		Last Modified: Wed, 11 Nov 2026 23:41:39 GMT  
		Size: 12.5 KB (12537 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:13c82f0d908f9baf78b38454294d746d16f4e6164091758a800eb6a99726ab95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171626329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf62624fde8d7135a43e254647ccbefc77d7d1181edc63f5e176920460c731b8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 04:47:02 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:47:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 12 Nov 2026 04:47:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51614cfec13408947fa55852cb72b3d0146557ac32205949aa96e40a8e39c650`  
		Last Modified: Thu, 12 Nov 2026 04:48:00 GMT  
		Size: 137.2 MB (137219818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3c1c21bf985949c2a06a5e241c19c77c2ab7baa40ff3c9145bee088a8e274a08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4230bc2b279ec46e2d245c484de086ae1c6e6d9717682e7da67bf637614453a3`

```dockerfile
```

-	Layers:
	-	`sha256:261fb7a0399d49161882ca4ccf0c3dffeaebd0cfd023c1d21df654195075d25d`  
		Last Modified: Thu, 12 Nov 2026 04:47:55 GMT  
		Size: 2.3 MB (2300118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01b39dd676a0b8ce290d7d30bba17dc401d7ed9e1411f60438d795633c19a6c1`  
		Last Modified: Thu, 12 Nov 2026 04:47:55 GMT  
		Size: 12.4 KB (12429 bytes)  
		MIME: application/vnd.in-toto+json
