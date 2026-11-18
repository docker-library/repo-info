## `sapmachine:17-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:6906d210a00e150065b75ef1bd40d197d0515d2f7918a4e111115bef10c994eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:54af39ab58966afcf9e229ee1ed5aba2d1169906c598bda0f5eef7b7890c9d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f44b65c79d755365a8c89b490461a6a6c788fa4de64f62c041a969fb294ef5`
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
# Wed, 18 Nov 2026 16:42:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.21.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:42:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 18 Nov 2026 16:42:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abb6d69b427495f0306065ff951ae674234ed25bcf6880b833b005aa4ad1e43`  
		Last Modified: Wed, 18 Nov 2026 16:43:11 GMT  
		Size: 203.2 MB (203245755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:35350a8c475ad3c2dd4a9d9349c9d21565b919f48782639a137580fd89457daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcc0bdfd201f8d5137ed54d1e63c4e06417d33f137c8cc93f73e76a11abbb4e`

```dockerfile
```

-	Layers:
	-	`sha256:566b0f742a6dc25773cc928eb74adc03c0d97f50af4d701eecaa4686b3a27a06`  
		Last Modified: Wed, 18 Nov 2026 16:43:07 GMT  
		Size: 2.4 MB (2357882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9acb0b80a6529ea9589d0d866b3269742f86470628be4c6c7ee5a2d0515e842`  
		Last Modified: Wed, 18 Nov 2026 16:43:06 GMT  
		Size: 11.0 KB (10956 bytes)  
		MIME: application/vnd.in-toto+json
