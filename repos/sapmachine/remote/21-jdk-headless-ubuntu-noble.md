## `sapmachine:21-jdk-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:cb57d0cff337413b189209b5c3b1d60e490cd0af1f95cd3dd444b4d1d0ff5030
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:dcf438e92410476bcf4f027cb1f6c45cd9e2b0d80ea268ab0907ccda050258dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247846081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d25c8e396331d5bcea95324ec861eaae025b2ffbc30c6f12f53375414b7c816`
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
# Thu, 20 Aug 2026 18:07:03 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:07:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:07:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a1165f04ec64a9b14eb9a5c0730a13f0ae80e87ccce4654f059e06483fa488e`  
		Last Modified: Thu, 20 Aug 2026 18:07:27 GMT  
		Size: 218.1 MB (218093274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a4c7e9947c8efa16fc4a78fd675e4fe9ef9e7361eb804dde6f87bedd21ec5b53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d829acf6bf48e6630d85c043827dd2ad42ea8f20ddb80613c5dd74ff1e00d57`

```dockerfile
```

-	Layers:
	-	`sha256:bd64c48f69ff0bb446f951b314500cfebfc57c1e06d62d27ed6fde983e366d64`  
		Last Modified: Thu, 20 Aug 2026 18:07:22 GMT  
		Size: 2.4 MB (2358207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8ddfde6f290b8adb065dea7e639af09a1ad1e26aa0d9c3de166cc703afc4439`  
		Last Modified: Thu, 20 Aug 2026 18:07:22 GMT  
		Size: 11.0 KB (10990 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:54772bffaafc732be8d5b9bead488d1e10c18f1035bf8b647e36f18394d4d2bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245181612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615e2d28551c172a48bcbfe1d24326f9b43c7e28cef0cbb19cfa5a8b93b92f52`
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
# Thu, 20 Aug 2026 18:03:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:03:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:03:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:274e23a9d33f346ab05aa4d72f227bf486beb720158bb1b2370fbf2cac4c022b`  
		Last Modified: Thu, 20 Aug 2026 18:04:13 GMT  
		Size: 216.3 MB (216294377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e6022d44e43d3c41447adeb1883f4a831b7344d3e1698ce2fd84499ed00d210d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e821fb8c122b263f66c635531d6d47cdf3a8531b9ae68b3b56fe9b47d4b08c`

```dockerfile
```

-	Layers:
	-	`sha256:2bc08cf0d502fbebc3387a830244ee1df180ab0610b068e06254a473efc6dcce`  
		Last Modified: Thu, 20 Aug 2026 18:04:09 GMT  
		Size: 2.4 MB (2358714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75e4a6a703dffc93b0fc7edc9edb32ac5eaf3d9b8d1748f29b76a16f7b4d4855`  
		Last Modified: Thu, 20 Aug 2026 18:04:08 GMT  
		Size: 11.1 KB (11142 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4f291aefeb06c1016a1fdde82f1caa0d2e1d7e46ecffcf63064d457020decf6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252088667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30d88307ecbcc921f2e3e8bcbd765ff61f114a6d0257408ec3b1e752523f33af`
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
# Thu, 20 Aug 2026 18:11:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:11:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:11:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1371f81018602f4113f3fc8626c3e802f712afa16e1ccb6adfea19488bd5b82`  
		Last Modified: Thu, 20 Aug 2026 18:12:41 GMT  
		Size: 217.8 MB (217777472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ed457054ea950db76d57e442bec52f7cc825512dae23f4004eb78c7ae12f6f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2366736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:370d7fd55044d650cd68207bad6a57a6ebfcd438307e8939b3e27970cd65993d`

```dockerfile
```

-	Layers:
	-	`sha256:899c23670dae04f5220b5a6548a22d7d7d929f73f6d03e5cf198a90e1edb8495`  
		Last Modified: Thu, 20 Aug 2026 18:12:36 GMT  
		Size: 2.4 MB (2355678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c84d5ae8230ce7310dc797f8795506dc3d85d01a9d5ee83bbe78b4febb23c0c6`  
		Last Modified: Thu, 20 Aug 2026 18:12:36 GMT  
		Size: 11.1 KB (11058 bytes)  
		MIME: application/vnd.in-toto+json
