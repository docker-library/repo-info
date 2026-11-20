## `sapmachine:17-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:d6b82a8bc08d9c6119f07a666c81e1a78236f4bcda1e1ac062aef7d2749d4e13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:d24bf0b0423eba11c183a2476a0c1fb90addf24221bc37ca294389656368ecf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87783072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce26b6407b4d8fbad0f2f01aeb185802c0a4f80bae3f1b270ba1484b1103a926`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:33:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.21.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 20 Nov 2026 03:33:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac458fe64b76b34aef8b1c3fd2cc61e290eb97b79aa3b64ec320c64de5499e27`  
		Last Modified: Fri, 20 Nov 2026 03:34:05 GMT  
		Size: 58.0 MB (57989775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:79367492b7fd53831dc0721c6d8bd49dcdee8959eca728d832e2c570afe22ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30d4f91cb3a99bfd81d4c02f829ab3f8bda11ac8e5a37e78468a8ec89136113`

```dockerfile
```

-	Layers:
	-	`sha256:387eadcd6ef363f3314cb8b52745fe33afcd75d9cfb6e7f4f7e0182d870096b1`  
		Last Modified: Fri, 20 Nov 2026 03:34:04 GMT  
		Size: 2.5 MB (2522072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce73aa5b40fd1526585093d5797e7b8d6b3cc75c74e116cb170061ef31116c45`  
		Last Modified: Fri, 20 Nov 2026 03:34:04 GMT  
		Size: 10.8 KB (10768 bytes)  
		MIME: application/vnd.in-toto+json
