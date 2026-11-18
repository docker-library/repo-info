## `sapmachine:17-jdk-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:d3081c288c5453e3b9d1dd249f1a313761f15048c8365f7df7533bf475864b7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:22850baff4c1d8eff07984209382e394d5eaca2e8c673a141bd11953254612e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (235032901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa68348886bfaf34c16795656ea4c2b3bc11bd47786f3c5a8519b6c934de6822`
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
# Wed, 18 Nov 2026 16:42:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.21.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:42:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 18 Nov 2026 16:42:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed674bc4896b6123c268d6a048cf8e10989fe236db43227162b1b9eebbd5a14a`  
		Last Modified: Wed, 18 Nov 2026 16:43:20 GMT  
		Size: 205.2 MB (205239678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6e3e5f73bc260a900b3f64be1f27e6327b48f8d005959bb0ce52b4cea689f418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cc3379744352adb5ac91e66fdb2fd1ec54a4346a9518cf929a1b0721513cd19`

```dockerfile
```

-	Layers:
	-	`sha256:20ac08bde937262368fdd5ff493e788fac72f0562bf9f2d4e5e9535a80a07ab0`  
		Last Modified: Wed, 18 Nov 2026 16:43:16 GMT  
		Size: 2.6 MB (2607552 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a15b2aaed4820504a492247faad8f9e2b04d56bdd59e2e9c4279a727e6aee7c`  
		Last Modified: Wed, 18 Nov 2026 16:43:15 GMT  
		Size: 13.3 KB (13345 bytes)  
		MIME: application/vnd.in-toto+json
