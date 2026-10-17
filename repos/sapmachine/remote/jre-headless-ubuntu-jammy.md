## `sapmachine:jre-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:2cb49507cd4ec62a3bfe7ba0b4ef46d4b9a76af57df2bfb947d3609e2c73af2c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:8bafa824e3889fd2340e87a1c151da6392ae104912f542865b6e782bc9472738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88683784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a21b266a78a88ba8c6f84a8348063db5cd214092a9b3cb47a5b7e067fd2357c`
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
# Sat, 17 Oct 2026 00:38:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7332cf237e93300891fb3799cf5037fac8468d12cb7e48ecb35d1176432ccbd`  
		Last Modified: Sat, 17 Oct 2026 00:38:48 GMT  
		Size: 58.9 MB (58931308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4e9e4701f0a797e7db5cbb2c076017b7876c539064eaea1fb109e3c00fb091b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2308748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ecea0ca7050fa042d4ede7413b32e934071d66adae9e641960520a648fda1c`

```dockerfile
```

-	Layers:
	-	`sha256:c1d8dd4b02ee5765f35472f61590c9eb744b775b17692e311a71d75eee270e64`  
		Last Modified: Sat, 17 Oct 2026 00:38:47 GMT  
		Size: 2.3 MB (2299170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eba8fb0ae8d46830151270e416dbcde4b4b496abb69132f5d2d5e010163ed7c5`  
		Last Modified: Sat, 17 Oct 2026 00:38:47 GMT  
		Size: 9.6 KB (9578 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0b6b87740796843ecb21b2795b8a54d0fb955f3d38002bb857d4bd05a68ce120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85611098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1b5065b5e7d9d9a223db1579c6c977a79fdd214f88d9428375cec2e8634ea3`
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
# Sat, 17 Oct 2026 00:38:17 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:38:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 00:38:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3860e3923e599c3f45efb0c1a296eb90d137fce99524e56d290d714db705cb13`  
		Last Modified: Sat, 17 Oct 2026 00:38:32 GMT  
		Size: 57.9 MB (57926375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5ba323c331c12a94227b99b6061e94eca1b852b0e53b63e42be097bd7fc3ecb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2308521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc205ac0af4c0b09798145ece17acabc09181064d97b73b1970c5f475e30ab74`

```dockerfile
```

-	Layers:
	-	`sha256:6efe76a20ed80ff2bf33be2953a6afaa9ff08fe02472ce220d7fb43ff9603454`  
		Last Modified: Sat, 17 Oct 2026 00:38:30 GMT  
		Size: 2.3 MB (2298839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:779877c16b3af73c15fae7968d7c860e959a6e72e3e62603b8360277c8c9a07d`  
		Last Modified: Sat, 17 Oct 2026 00:38:30 GMT  
		Size: 9.7 KB (9682 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:92f47343b0e6430da3ec54f7b6d41b2c94f3b9cff688adb0726f68f1826936be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92695458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeebb4696fdd218bc113168c5796f24f9494b33c76d7e1b8b54e1963aa6b838f`
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
# Sat, 17 Oct 2026 02:24:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:24:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:24:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e97366d78368934a7236e0d0ac1ef388917e47bd733ed62fe521ef0eeb31575`  
		Last Modified: Sat, 17 Oct 2026 02:25:18 GMT  
		Size: 58.0 MB (57991821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:920225fdd4eb5e7e0079557d6832d3d0433ce609f5388f6b3f90ff1ffa3198af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2307604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fdebe3e57d4b9ff2b670ac2c3d0879f1cb6df68e89fbc9c41e162791afe6ab`

```dockerfile
```

-	Layers:
	-	`sha256:3aab98984a072c7e2d41b9a4cece9c36c638c1d2f375685b77bc20573108965e`  
		Last Modified: Sat, 17 Oct 2026 02:25:16 GMT  
		Size: 2.3 MB (2297982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6390a3737ef52e991b2ad90b158bc860caff334750cad0edf23099bba1396cc3`  
		Last Modified: Sat, 17 Oct 2026 02:25:16 GMT  
		Size: 9.6 KB (9622 bytes)  
		MIME: application/vnd.in-toto+json
