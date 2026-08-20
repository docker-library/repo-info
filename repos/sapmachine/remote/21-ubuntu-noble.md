## `sapmachine:21-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:ad7f27c9cfa3dd0e1f470a76d428161591a1a9ca99048aa241eec219b810dafe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:2bddf22f846eb4804f0ca312fa1e660db948695f1e692acc4bbd032f033b1f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249740534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f553fbb0e8d97c157bb6fdcd1e0c2200ce60b1ec1c35a13cb201c69d563bdacf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:27 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 19:29:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ce7b578a02e5b97a3ddb7ab0b9bbcda2493c9d0ea8cfb50e8faded7192104c`  
		Last Modified: Tue, 18 Aug 2026 19:29:50 GMT  
		Size: 220.0 MB (219987727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:19bcb73878d7c5128e0592565c59a1d66db3970c7978f5979c0d7a4894afa398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8dba0af2c7096564a0d9826930c4a611b8a81f8a6580ef1747016a1b2f48a58`

```dockerfile
```

-	Layers:
	-	`sha256:10f677e940a3ca577a3a085b9940858723a230f5c5d0e56a3e20d9decd370932`  
		Last Modified: Tue, 18 Aug 2026 19:29:45 GMT  
		Size: 2.6 MB (2607825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0781e8e16b92a295d10812c0675ce38b8aecbeab63af6e8d1a9a71692783860a`  
		Last Modified: Tue, 18 Aug 2026 19:29:45 GMT  
		Size: 12.6 KB (12607 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1c4c6fe16cee7567cf870bf6729507b0ddad384f44e5b4b4768d1db0f877e2a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247083683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff0515802a733cd4e66cec7a128f84155843cb16584fecbba2bcc6c86cfc089`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 18 Aug 2026 19:29:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7a668752475bafdd5d7730bf0810d8b39a72e25de985d0971ba201af3f670a`  
		Last Modified: Tue, 18 Aug 2026 19:30:24 GMT  
		Size: 218.2 MB (218196448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ddb47d42b0735b8d5dc5fd206e9607a9d7b2631156da3b8e7d87f7b8d7ddead6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2621292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71cd4b310647641038671ae5cd30b3f2d8e9effe27afcab46209d3c280ff0e19`

```dockerfile
```

-	Layers:
	-	`sha256:ea645c11a443037203456fd4b5fdf88d906f9a93203434bdad98a38ae4117728`  
		Last Modified: Tue, 18 Aug 2026 19:30:13 GMT  
		Size: 2.6 MB (2608437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6ef47c5b5ab97e573a5bed4071fc58c9fb6cbd5f9fd39a08dfc57af07493c64`  
		Last Modified: Tue, 18 Aug 2026 19:30:12 GMT  
		Size: 12.9 KB (12855 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:65753c0813ff69bf719d8180ddf510a4421ff96cb9cc9c85c4772fd40a8ddb3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254317091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c267428dade5150286ab66cc54aa27a7d3c485878df17c5b8359d0ed1ffdbbaf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:40:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 19 Aug 2026 22:40:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc05064bdf941ca5012424c229942e6db8a80e8c2d02d79b13f8a6f880679ff`  
		Last Modified: Wed, 19 Aug 2026 22:41:21 GMT  
		Size: 220.0 MB (220005896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:09b410f11db9425c77f9df21325140e062de635f6e7c35078ade6788280fb0b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2618148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45761210f16ae9793f2b8e89d652b615eb7bc83532230d8bc6926275156f196`

```dockerfile
```

-	Layers:
	-	`sha256:717dc2e40c05fa83d109881b5f7ea913d36b33e3da229e090fc5a8accb462739`  
		Last Modified: Wed, 19 Aug 2026 22:41:16 GMT  
		Size: 2.6 MB (2605425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aeef8b441beccc903d2da64ce5ebd938a7b7b91a21e4bcf1ee02589725b1e47f`  
		Last Modified: Wed, 19 Aug 2026 22:41:15 GMT  
		Size: 12.7 KB (12723 bytes)  
		MIME: application/vnd.in-toto+json
