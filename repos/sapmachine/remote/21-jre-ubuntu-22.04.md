## `sapmachine:21-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:3ab1b2a94116407391e94f8649dc5f5414fc20fb40dcf148c4aa5e9fa3dc57cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:283f032e22feeaa8e20031a94198ee5775d91a05e801cc309f2c25621e935586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.3 MB (93331622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0901590de29a9b98bce42dfcf93cd91a24431b443d23e6ee5276cefbab03b9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:57:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:57:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:57:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0e6fb9297a4a13c17ab2e333289f6ccbec80aa6d93520f33ee607a517e863b`  
		Last Modified: Fri, 23 Oct 2026 16:57:34 GMT  
		Size: 63.6 MB (63579146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:df318bd079e97912fc793e374ac441e1b59a3a2ef59e0686bbcfbcedc423da4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f641f9e8f8b40acd39ee6d0d29e570f70eaf1399e2786d5750cd2a633d852573`

```dockerfile
```

-	Layers:
	-	`sha256:c637359938b01a095b0c8ae4c7634d00c5ed090426899a2533bf4262398d4c07`  
		Last Modified: Fri, 23 Oct 2026 16:57:32 GMT  
		Size: 2.5 MB (2548711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8845dd30b1e9459bfacebdd7149dba57def308255fa80fb4fa32c7daa002f4dd`  
		Last Modified: Fri, 23 Oct 2026 16:57:32 GMT  
		Size: 9.5 KB (9535 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:4e0e7b14d9117dff202e56cfa22a619b97bc6064d791aee5ea05926e365433da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90416015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf29abcf4718527c806ca9ddc0c08075a6d51dc3b8ed29e68a3a84df041c946f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:56:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:56:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 23 Oct 2026 16:56:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caac0a6f304f268cc281ceac2b4f4843e96256d31188302c2b1f495c143a44bc`  
		Last Modified: Fri, 23 Oct 2026 16:56:24 GMT  
		Size: 62.7 MB (62731292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:69ecb3b38910a58b126e38532f2a62a18e24b63ff01ec1597303d43d55d2a5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf91f3573cd7ed434bf7e4aaafe56f072299d98ae654ce1ed42782f578821342`

```dockerfile
```

-	Layers:
	-	`sha256:2246bde3b52390d48befb11b4fde52c8bae9fefccd98ad9b83bd197317742e46`  
		Last Modified: Fri, 23 Oct 2026 16:56:22 GMT  
		Size: 2.5 MB (2548393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ecca9024a36c430dacc88a569c27da0b5b0e27c3829970b3742ec8d494dc597`  
		Last Modified: Fri, 23 Oct 2026 16:56:22 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ed88e430cb3cbcf90e38ac22b8a0cacd90f54654fd0aaa8daebb37cded434c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (97997422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7feee92cbbc0be69c40471543bd22c887b5a014be5a0e9b10c7c8323c692904b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 10:09:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:09:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 22 Oct 2026 10:09:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9775f2744aafd50c361a805d05292394833362f1a1ea0f376e7a8e799e0c72a3`  
		Last Modified: Thu, 22 Oct 2026 10:09:39 GMT  
		Size: 63.3 MB (63293785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:95a62001ea95315394b26ea6c9e262eeae696cfd7cf9c8adc9b0061c92b0a2a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b93ea8ce24e33372effb58f4af3f9d02faff1546b42448806ee2270512cfebe`

```dockerfile
```

-	Layers:
	-	`sha256:ae9a697d95cf93c53c4b0c7937cdcc071b36b4fd7076b82523e91b7a6a59a00d`  
		Last Modified: Thu, 22 Oct 2026 10:09:37 GMT  
		Size: 2.5 MB (2548211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:795f8019146570e93cc58dfe9f79e9fb5e63881c26a99e60bca89faea1df6445`  
		Last Modified: Thu, 22 Oct 2026 10:09:37 GMT  
		Size: 9.6 KB (9552 bytes)  
		MIME: application/vnd.in-toto+json
