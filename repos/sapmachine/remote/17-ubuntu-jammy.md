## `sapmachine:17-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:7afefa5aba318f7015aee512c9c7decd144b5b5fde6fc5b03fc8207cf9aa22c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:a781f0bc4218dbf9eba211cb52a607aa9006b85f62f0b2f051539737d4afb765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234922073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ddc1653ee1d66423f46aff12f072a5d229c0723df1ce194b1232ab606ae01f4`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 16:43:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.21.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:43:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 18 Nov 2026 16:43:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c5596111ac00be98b0b8ae843bb94ce9d864b41978f9f398a6b4aa52c92902`  
		Last Modified: Wed, 18 Nov 2026 16:43:33 GMT  
		Size: 204.9 MB (204852540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5efc07865791cd4ff81897d7e8d44b6f8700c6bea416dbcb712580bbc5674ebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2643358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df0081bdb811477e54872992e397649f1662d0f9b2a110bcad48f55094630958`

```dockerfile
```

-	Layers:
	-	`sha256:3217adcc0d69dc132e2138d4fa89c322430d0b75472fa14688ebe41da17910ce`  
		Last Modified: Wed, 18 Nov 2026 16:43:29 GMT  
		Size: 2.6 MB (2632541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d194780275a14f61bf6c036567af98ee144e78e638193ba1cad7026dca3fa83f`  
		Last Modified: Wed, 18 Nov 2026 16:43:29 GMT  
		Size: 10.8 KB (10817 bytes)  
		MIME: application/vnd.in-toto+json
