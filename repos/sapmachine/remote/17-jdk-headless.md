## `sapmachine:17-jdk-headless`

```console
$ docker pull sapmachine@sha256:eff4dad11615e86dbf2d415e98108e808cdb9f4389b7ed05fac2b1dddab1b8c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:9d59b73a7d7b81741372df5eff9e00bf19b4e0eeb6069ba6e8cff0927fe97560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232997959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e71ebe887a1910db81967058a08a2dcb397eab4f5979d5af1662de2814a4f8`
-	Default Command: `["jshell"]`

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
# Mon, 26 Oct 2026 23:40:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.21.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:40:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Mon, 26 Oct 2026 23:40:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0226f9a64aca920945403e6312ec003440cc115c9e7d83c2596abdedfd53b8fa`  
		Last Modified: Mon, 26 Oct 2026 23:40:59 GMT  
		Size: 203.2 MB (203230347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:628908f4a9b4a60119d34bcdf4b9b46bc60dafbcdc61152ab983a1298f044f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d14adf421883ae6a8dc3b36fe007c7424b68c0b9aeaecd94a8ea72966c7975a3`

```dockerfile
```

-	Layers:
	-	`sha256:b0b78d799e11d7bb043eda227da3d0bc6952bbbba584c69715e2d1f4d2cf3653`  
		Last Modified: Mon, 26 Oct 2026 23:40:55 GMT  
		Size: 2.4 MB (2357302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72963dfb71ffe443165d45185e9a019cf9d1c34fd5e76eee7989efacff9b7c5e`  
		Last Modified: Mon, 26 Oct 2026 23:40:54 GMT  
		Size: 11.0 KB (10978 bytes)  
		MIME: application/vnd.in-toto+json
