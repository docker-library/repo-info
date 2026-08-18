## `sapmachine:jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:858d102e4426fc05c477f6e143c005f4a32d113e2c3018abb7376ff205cc049c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:8d04b78e4eeea83535eb7cfeb4dce227613c8047fdd05917bd3bff639f700adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169072351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c2ee04583fe1bcea145f69b09bb7175e176899799a5870fff721aa4ba4ef4fe`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:20:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6393fa723b1b544d9fd22d5d092b4f22194a0030ee86bb6c36b8544e62347426`  
		Last Modified: Tue, 18 Aug 2026 01:20:36 GMT  
		Size: 139.3 MB (139335408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c85d9acc5213b5743b82318276e8c652137a79b0675fcbca5e092a9634c7037c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0558856ab22b52370bcec412316dbcf18ed8802cb488aaddbbfd492f6a1ad1de`

```dockerfile
```

-	Layers:
	-	`sha256:41a3a37a25d7c055282d2b84a364e91f016db454bc0005741f4c6187bae8275a`  
		Last Modified: Tue, 18 Aug 2026 01:20:33 GMT  
		Size: 2.3 MB (2323103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0e284935687aab259d4e44f05c9abbe29a0bd28e9d9abe66667e62ed1b6fa29`  
		Last Modified: Tue, 18 Aug 2026 01:20:33 GMT  
		Size: 9.6 KB (9569 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:7a33b629f847939690b0739942f47d96f27f72f8b740d03af218765ffea9b0b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165967439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cdf6ccb431a8c2fbfac93b3523781cdbe7eca7c0abad302482fec01c07fcdd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:20:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921d0b29dabeefb27915b4d7bd98a47a66b5298589c89ae56d88f916460592da`  
		Last Modified: Tue, 18 Aug 2026 01:20:19 GMT  
		Size: 138.3 MB (138346986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7671d7dbfc5061c5853a668c559476563358c4db73d8147c9ab394b8dd5e7259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6320b65bad1298b0e913d20d3882afcd7dbfe75e5892e9007313edf5cbb73837`

```dockerfile
```

-	Layers:
	-	`sha256:559e5a1e8260be388a6d16cb559629205cb57643f744f46786dacbc67fb3699f`  
		Last Modified: Tue, 18 Aug 2026 01:20:16 GMT  
		Size: 2.3 MB (2322796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f316ade65aab4d44f679faa054b69b3b77b6777d8be893dde45cd703d62f5169`  
		Last Modified: Tue, 18 Aug 2026 01:20:15 GMT  
		Size: 9.7 KB (9697 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:bf47dc8b447ea4bab8fd0b00d87791ed93631a827e8546f4c5e31da9e215ce59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172808489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf98f5501261dfdce2c941460a6a4d8b933acd0d036e11c752296df323a1b5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:32:31 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:32:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5128958c4ad488552f3844d92f8ef6488403cde41b756e03f049379b9357e5b`  
		Last Modified: Tue, 18 Aug 2026 01:33:09 GMT  
		Size: 138.2 MB (138170344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5bf24a548b84e04e715fc89197ecfcf3ad8fef23d4654383c5e5880285576226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22fcbf45d01ea67231a5c5ed6d1568a1759b6da37fefe6a24ec8343017e4e4ba`

```dockerfile
```

-	Layers:
	-	`sha256:daa5829a1a5ed992625c5ef5a83328db21f8d3501dcaa5c5d7ceeebe55440a6a`  
		Last Modified: Tue, 18 Aug 2026 01:33:06 GMT  
		Size: 2.3 MB (2321927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e301dc6f508e27eb5ad9043b4ce97d424809328bc097e7660d041dce5ea30e4e`  
		Last Modified: Tue, 18 Aug 2026 01:33:06 GMT  
		Size: 9.6 KB (9625 bytes)  
		MIME: application/vnd.in-toto+json
