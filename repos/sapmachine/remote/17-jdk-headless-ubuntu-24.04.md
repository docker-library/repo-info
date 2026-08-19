## `sapmachine:17-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:11f640fff7c3e2112b9a248075f034e5a8c26e4409b25e907176d85907348fa5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:a56a6302ae84d60f946a0fa7139eae90304dc230fb3e00822a6efd94ca322b2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232877799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b88e24164a1b6896147a0a442dcf1a7aa573b2bea683092bbadccfb0b2cec5`
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
# Tue, 18 Aug 2026 19:29:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 19:29:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89432d4a552fc074f0d3f29e5247902eeb284e1adcab6598eb6e5f2ab7396c23`  
		Last Modified: Tue, 18 Aug 2026 19:30:12 GMT  
		Size: 203.1 MB (203124992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d8740823d38dc966a9ac78d3fc3b1fd29ef1737b997e2dedfefae9f35a0277da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1153291667ee18ed682d6dd23456957dbde067a93a8a08970d76d74cbf02d10a`

```dockerfile
```

-	Layers:
	-	`sha256:0354c090752b6334d9cc91bf68d09c5c199620b21bc60feb576896ead0bfea16`  
		Last Modified: Tue, 18 Aug 2026 19:30:09 GMT  
		Size: 2.4 MB (2356564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:476e24b76a913cecb71723d3ab361c044f3fa0e9dd1e5e416822e4da49cf8b47`  
		Last Modified: Tue, 18 Aug 2026 19:30:08 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:806164ec96372a051dbfa6c53996fc0fea7a0e16231eea5100b0850dfe85a3b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230785730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f25f3a0d95d48f1f9a93af97167677c68acf75d4c490160fb23a999e0f0c23`
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
# Tue, 18 Aug 2026 19:30:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:30:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 19:30:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f889ed4f384138d398f3333c52d963750f5ad80f98a814b9a539a5d23eb5427`  
		Last Modified: Tue, 18 Aug 2026 19:30:30 GMT  
		Size: 201.9 MB (201898495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4d97c6af2fbe21fd8d195789f3686ec6940e4b5e2d880ccd1a611072787a3814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28548db86c3bcb3794389f7678867263683faa8c93885e71eef3b303f488aba`

```dockerfile
```

-	Layers:
	-	`sha256:18f49a68bc57f0e98135acc5cd889cd7bfc425c07637e99b2f94895c175f2fb9`  
		Last Modified: Tue, 18 Aug 2026 19:30:26 GMT  
		Size: 2.4 MB (2357071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:989a53a701cf2acdc7a82339343c1d12568796a5d60437b270034702eddaabae`  
		Last Modified: Tue, 18 Aug 2026 19:30:25 GMT  
		Size: 10.4 KB (10386 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c2e9902accb5c5ba38c956320c09a3058868a9fadab21e5adfa00904d66f9a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238899591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334bb47897d7471467601c09032995d9e83945f6afc5fa5a93b6724dd7fd954f`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 03:03:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:03:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 04 Aug 2026 03:03:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635d856a457dde7901bfa17ce3ae64b5e58d3f4fe893c38cb8209cc2cc91a5cd`  
		Last Modified: Tue, 04 Aug 2026 03:04:27 GMT  
		Size: 204.6 MB (204588918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:697f7e07e1a5f3447022d7639b0e8c22c8cc5c00b3fd6c0454ddc8296a42d522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2364337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601621a8c11142e78fdb6fb013d2f84754f6c42b6552b4662a5d4ce001258bf1`

```dockerfile
```

-	Layers:
	-	`sha256:7d05e614183f3f9a6a8fc88cda068c3ff2ca3fd4c791663a6c823e8c6004f843`  
		Last Modified: Tue, 04 Aug 2026 03:04:23 GMT  
		Size: 2.4 MB (2354035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dadcc9549b82f4356d5eaf3c8fc977d7ccf2c7220dfdbc3e25ea8f0a834a3621`  
		Last Modified: Tue, 04 Aug 2026 03:04:22 GMT  
		Size: 10.3 KB (10302 bytes)  
		MIME: application/vnd.in-toto+json
