<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sapmachine`

-	[`sapmachine:11`](#sapmachine11)
-	[`sapmachine:11.0.18`](#sapmachine11018)
-	[`sapmachine:17`](#sapmachine17)
-	[`sapmachine:17.0.6`](#sapmachine1706)
-	[`sapmachine:19`](#sapmachine19)
-	[`sapmachine:19.0.2`](#sapmachine1902)
-	[`sapmachine:latest`](#sapmachinelatest)
-	[`sapmachine:lts`](#sapmachinelts)

## `sapmachine:11`

```console
$ docker pull sapmachine@sha256:4f1e78ba9e390fca2e44fa7a7330d04927362f87b49afec5c3e7187530c7dafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `sapmachine:11` - linux; amd64

```console
$ docker pull sapmachine@sha256:e1f80cacae00ae0bfe139eaf7c5c7c379514d0e21244302753ae22403ecabbdf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235419805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748df5221419a35466d202569bd3ba97f1e289e37eb68ea4d6becbf7c8c815e7`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:08 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-11-jdk=11.0.18     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-11
# Wed, 18 Jan 2023 20:45:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9829f76f3bad367d27d5bf3e91e6bc0f738874c547c1b6c35ea445acb9f11`  
		Last Modified: Fri, 09 Dec 2022 06:10:29 GMT  
		Size: 7.9 MB (7912181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67edfe5e2c0bc5add5bb810b9aa844411545f3822cc38bab69803399395adffb`  
		Last Modified: Wed, 18 Jan 2023 20:46:19 GMT  
		Size: 198.9 MB (198930742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:11` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8fb13ad4a615157687daf93848500593939cf4c0d91847ff55b5f18d43d4f77d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.8 MB (231813939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ee23dfd23bc23677a5e7e9f234070f33d5b52687bdb399a539a41c8baa56cb`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 23:47:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:21 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-11-jdk=11.0.18     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-11
# Wed, 18 Jan 2023 20:55:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c00c408cc2d94c0e75087f6aa9151688fe5b2714a5acb9a30aaf9ec603b385e`  
		Last Modified: Wed, 11 Jan 2023 23:49:41 GMT  
		Size: 7.8 MB (7754081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03fd417d0847d78615eb0ecb81776af794abfb32ccc4a38dd5343c762835551f`  
		Last Modified: Wed, 18 Jan 2023 20:56:24 GMT  
		Size: 196.9 MB (196866690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:11` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6258aae4a05b79a419714433e094bbe277e9f5bf9fd15ca636dd5bd77e34da74
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.5 MB (227460618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682d48f3aa3954129049fc0ff11d3a1081051f09a8bfd504cccc16e2828ddae4`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 00:36:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:18:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-11-jdk=11.0.18     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:18:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-11
# Wed, 18 Jan 2023 20:18:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbada04aab656bc06ae2d40eaeb8eb9f9173689e7ed896896e37d12276ef867d`  
		Last Modified: Thu, 12 Jan 2023 00:42:51 GMT  
		Size: 9.3 MB (9312481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62dbca2fa4a6bd622369faf806188005703133136294c1ef4acff7c6080fd0f`  
		Last Modified: Wed, 18 Jan 2023 20:21:28 GMT  
		Size: 184.8 MB (184848664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sapmachine:11.0.18`

```console
$ docker pull sapmachine@sha256:4f1e78ba9e390fca2e44fa7a7330d04927362f87b49afec5c3e7187530c7dafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `sapmachine:11.0.18` - linux; amd64

```console
$ docker pull sapmachine@sha256:e1f80cacae00ae0bfe139eaf7c5c7c379514d0e21244302753ae22403ecabbdf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235419805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748df5221419a35466d202569bd3ba97f1e289e37eb68ea4d6becbf7c8c815e7`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:08 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-11-jdk=11.0.18     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-11
# Wed, 18 Jan 2023 20:45:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9829f76f3bad367d27d5bf3e91e6bc0f738874c547c1b6c35ea445acb9f11`  
		Last Modified: Fri, 09 Dec 2022 06:10:29 GMT  
		Size: 7.9 MB (7912181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67edfe5e2c0bc5add5bb810b9aa844411545f3822cc38bab69803399395adffb`  
		Last Modified: Wed, 18 Jan 2023 20:46:19 GMT  
		Size: 198.9 MB (198930742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:11.0.18` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8fb13ad4a615157687daf93848500593939cf4c0d91847ff55b5f18d43d4f77d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.8 MB (231813939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ee23dfd23bc23677a5e7e9f234070f33d5b52687bdb399a539a41c8baa56cb`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 23:47:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:21 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-11-jdk=11.0.18     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-11
# Wed, 18 Jan 2023 20:55:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c00c408cc2d94c0e75087f6aa9151688fe5b2714a5acb9a30aaf9ec603b385e`  
		Last Modified: Wed, 11 Jan 2023 23:49:41 GMT  
		Size: 7.8 MB (7754081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03fd417d0847d78615eb0ecb81776af794abfb32ccc4a38dd5343c762835551f`  
		Last Modified: Wed, 18 Jan 2023 20:56:24 GMT  
		Size: 196.9 MB (196866690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:11.0.18` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6258aae4a05b79a419714433e094bbe277e9f5bf9fd15ca636dd5bd77e34da74
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.5 MB (227460618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682d48f3aa3954129049fc0ff11d3a1081051f09a8bfd504cccc16e2828ddae4`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 00:36:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:18:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-11-jdk=11.0.18     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:18:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-11
# Wed, 18 Jan 2023 20:18:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbada04aab656bc06ae2d40eaeb8eb9f9173689e7ed896896e37d12276ef867d`  
		Last Modified: Thu, 12 Jan 2023 00:42:51 GMT  
		Size: 9.3 MB (9312481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62dbca2fa4a6bd622369faf806188005703133136294c1ef4acff7c6080fd0f`  
		Last Modified: Wed, 18 Jan 2023 20:21:28 GMT  
		Size: 184.8 MB (184848664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sapmachine:17`

```console
$ docker pull sapmachine@sha256:6003080a985661c85d5344d37d877de2ffb3699236033453c9ebd18e10dfa112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `sapmachine:17` - linux; amd64

```console
$ docker pull sapmachine@sha256:3712e4b1edc51ebdd83c2c41f45544cd2eff4518696f7f4692e77c08bb9fe65d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234569669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a35785a6f5015f01b930939b550c91a2bd018f410e66a5bd82489b4ae90e0fc`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:20:39 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.6     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:20:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 19 Jan 2023 18:20:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9829f76f3bad367d27d5bf3e91e6bc0f738874c547c1b6c35ea445acb9f11`  
		Last Modified: Fri, 09 Dec 2022 06:10:29 GMT  
		Size: 7.9 MB (7912181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7612ccb6e62faac68cba8857a2fe1a8584b8d0aadd45d3847cddde5f6a4ef3`  
		Last Modified: Thu, 19 Jan 2023 18:21:12 GMT  
		Size: 198.1 MB (198080606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:17` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2e7f74d82695c527959e4b99821d37d55ca55ffa804ca87be61df04ad6915d6b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231055486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba3eb4cd9f6b61bb508def1d7921a180e974149ad858bdf32a7bcb997d4f6b1`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 23:47:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:47:41 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.6     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:47:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 19 Jan 2023 18:47:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c00c408cc2d94c0e75087f6aa9151688fe5b2714a5acb9a30aaf9ec603b385e`  
		Last Modified: Wed, 11 Jan 2023 23:49:41 GMT  
		Size: 7.8 MB (7754081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b0742027ac10a92860f5f0b12238d6de8079600b5d0cb64b900f11ee39b9a1`  
		Last Modified: Thu, 19 Jan 2023 18:48:16 GMT  
		Size: 196.1 MB (196108237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:17` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:7935a7aa1ce2026f8bf6f52932fd21ed046fc85f6fabc5e6c4c7676a0994586d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240788634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b7591ced004315b74576553b9d7a09e5c5d2e52c43d85636c2fa7f7dd6f779`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 00:36:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 00:40:00 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.5     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 00:40:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 12 Jan 2023 00:40:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbada04aab656bc06ae2d40eaeb8eb9f9173689e7ed896896e37d12276ef867d`  
		Last Modified: Thu, 12 Jan 2023 00:42:51 GMT  
		Size: 9.3 MB (9312481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0079af51e1c2c2d114f5378f1338e4186f17292bb3d584ee778696e8c5cf7a8`  
		Last Modified: Thu, 12 Jan 2023 00:43:50 GMT  
		Size: 198.2 MB (198176680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sapmachine:17.0.6`

```console
$ docker pull sapmachine@sha256:0c3f1f7d3bdda1a04ebcfc1e9c1dee4c626c5fdb3a24acd2ab4581c27dfaf0d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `sapmachine:17.0.6` - linux; amd64

```console
$ docker pull sapmachine@sha256:3712e4b1edc51ebdd83c2c41f45544cd2eff4518696f7f4692e77c08bb9fe65d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234569669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a35785a6f5015f01b930939b550c91a2bd018f410e66a5bd82489b4ae90e0fc`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:20:39 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.6     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:20:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 19 Jan 2023 18:20:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9829f76f3bad367d27d5bf3e91e6bc0f738874c547c1b6c35ea445acb9f11`  
		Last Modified: Fri, 09 Dec 2022 06:10:29 GMT  
		Size: 7.9 MB (7912181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7612ccb6e62faac68cba8857a2fe1a8584b8d0aadd45d3847cddde5f6a4ef3`  
		Last Modified: Thu, 19 Jan 2023 18:21:12 GMT  
		Size: 198.1 MB (198080606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:17.0.6` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2e7f74d82695c527959e4b99821d37d55ca55ffa804ca87be61df04ad6915d6b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231055486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba3eb4cd9f6b61bb508def1d7921a180e974149ad858bdf32a7bcb997d4f6b1`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 23:47:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:47:41 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.6     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:47:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 19 Jan 2023 18:47:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c00c408cc2d94c0e75087f6aa9151688fe5b2714a5acb9a30aaf9ec603b385e`  
		Last Modified: Wed, 11 Jan 2023 23:49:41 GMT  
		Size: 7.8 MB (7754081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b0742027ac10a92860f5f0b12238d6de8079600b5d0cb64b900f11ee39b9a1`  
		Last Modified: Thu, 19 Jan 2023 18:48:16 GMT  
		Size: 196.1 MB (196108237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sapmachine:19`

```console
$ docker pull sapmachine@sha256:1cbdf63fe3f56d769869a13d452566ba826d1b2870a9aef0daef1f1dbc8c04a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `sapmachine:19` - linux; amd64

```console
$ docker pull sapmachine@sha256:1134e6db15c109f15a4e4de78cbdb9002f09b9aacdde88555c24c1082e911385
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242926939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc100da972c4fb99eab938e1359c975dddbe00c0a11e0a2cb272f94bb7a4ed2`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:49 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-19-jdk=19.0.2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-19
# Wed, 18 Jan 2023 20:45:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9829f76f3bad367d27d5bf3e91e6bc0f738874c547c1b6c35ea445acb9f11`  
		Last Modified: Fri, 09 Dec 2022 06:10:29 GMT  
		Size: 7.9 MB (7912181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d370e1b47359ef194ba5a821b17f44f182fa15749c1b5dd3d83541b1c6472ac4`  
		Last Modified: Wed, 18 Jan 2023 20:46:44 GMT  
		Size: 206.4 MB (206437876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:19` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a8656866c162f3e045bdf35c94c03dbc62a787f400b3cec84a1fb2b684a7747c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239514852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2773ad06be8385fee75f75fc14f1b5b5b54083fd4f2e9b1a863a7ee9214791`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 23:47:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-19-jdk=19.0.2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-19
# Wed, 18 Jan 2023 20:55:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c00c408cc2d94c0e75087f6aa9151688fe5b2714a5acb9a30aaf9ec603b385e`  
		Last Modified: Wed, 11 Jan 2023 23:49:41 GMT  
		Size: 7.8 MB (7754081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fa65fa2ef4f4c725b1293e9fadf1574827dea7e8153c609f8b9071c4b779f2`  
		Last Modified: Wed, 18 Jan 2023 20:56:47 GMT  
		Size: 204.6 MB (204567603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:19` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f2ab97c9c7481c9df9dfbd22309469d86ed5e16d0e649e8d5007825aab54b4b8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249077017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463066d676bdb25d999c747a0782f37f18158d08f0ba35f9663a209d1b65ef2c`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 00:36:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:20:22 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-19-jdk=19.0.2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:20:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-19
# Wed, 18 Jan 2023 20:20:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbada04aab656bc06ae2d40eaeb8eb9f9173689e7ed896896e37d12276ef867d`  
		Last Modified: Thu, 12 Jan 2023 00:42:51 GMT  
		Size: 9.3 MB (9312481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9262753dc41267e89d5a62abe940e069d3dbed5d1cbd9a4e321b3806aef032b7`  
		Last Modified: Wed, 18 Jan 2023 20:22:10 GMT  
		Size: 206.5 MB (206465063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sapmachine:19.0.2`

```console
$ docker pull sapmachine@sha256:1cbdf63fe3f56d769869a13d452566ba826d1b2870a9aef0daef1f1dbc8c04a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `sapmachine:19.0.2` - linux; amd64

```console
$ docker pull sapmachine@sha256:1134e6db15c109f15a4e4de78cbdb9002f09b9aacdde88555c24c1082e911385
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242926939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc100da972c4fb99eab938e1359c975dddbe00c0a11e0a2cb272f94bb7a4ed2`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:49 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-19-jdk=19.0.2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-19
# Wed, 18 Jan 2023 20:45:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9829f76f3bad367d27d5bf3e91e6bc0f738874c547c1b6c35ea445acb9f11`  
		Last Modified: Fri, 09 Dec 2022 06:10:29 GMT  
		Size: 7.9 MB (7912181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d370e1b47359ef194ba5a821b17f44f182fa15749c1b5dd3d83541b1c6472ac4`  
		Last Modified: Wed, 18 Jan 2023 20:46:44 GMT  
		Size: 206.4 MB (206437876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:19.0.2` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a8656866c162f3e045bdf35c94c03dbc62a787f400b3cec84a1fb2b684a7747c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239514852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2773ad06be8385fee75f75fc14f1b5b5b54083fd4f2e9b1a863a7ee9214791`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 23:47:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-19-jdk=19.0.2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-19
# Wed, 18 Jan 2023 20:55:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c00c408cc2d94c0e75087f6aa9151688fe5b2714a5acb9a30aaf9ec603b385e`  
		Last Modified: Wed, 11 Jan 2023 23:49:41 GMT  
		Size: 7.8 MB (7754081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fa65fa2ef4f4c725b1293e9fadf1574827dea7e8153c609f8b9071c4b779f2`  
		Last Modified: Wed, 18 Jan 2023 20:56:47 GMT  
		Size: 204.6 MB (204567603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:19.0.2` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f2ab97c9c7481c9df9dfbd22309469d86ed5e16d0e649e8d5007825aab54b4b8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249077017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463066d676bdb25d999c747a0782f37f18158d08f0ba35f9663a209d1b65ef2c`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 00:36:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:20:22 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-19-jdk=19.0.2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:20:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-19
# Wed, 18 Jan 2023 20:20:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbada04aab656bc06ae2d40eaeb8eb9f9173689e7ed896896e37d12276ef867d`  
		Last Modified: Thu, 12 Jan 2023 00:42:51 GMT  
		Size: 9.3 MB (9312481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9262753dc41267e89d5a62abe940e069d3dbed5d1cbd9a4e321b3806aef032b7`  
		Last Modified: Wed, 18 Jan 2023 20:22:10 GMT  
		Size: 206.5 MB (206465063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sapmachine:latest`

```console
$ docker pull sapmachine@sha256:1cbdf63fe3f56d769869a13d452566ba826d1b2870a9aef0daef1f1dbc8c04a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `sapmachine:latest` - linux; amd64

```console
$ docker pull sapmachine@sha256:1134e6db15c109f15a4e4de78cbdb9002f09b9aacdde88555c24c1082e911385
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242926939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fc100da972c4fb99eab938e1359c975dddbe00c0a11e0a2cb272f94bb7a4ed2`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:49 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-19-jdk=19.0.2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:45:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-19
# Wed, 18 Jan 2023 20:45:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9829f76f3bad367d27d5bf3e91e6bc0f738874c547c1b6c35ea445acb9f11`  
		Last Modified: Fri, 09 Dec 2022 06:10:29 GMT  
		Size: 7.9 MB (7912181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d370e1b47359ef194ba5a821b17f44f182fa15749c1b5dd3d83541b1c6472ac4`  
		Last Modified: Wed, 18 Jan 2023 20:46:44 GMT  
		Size: 206.4 MB (206437876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:latest` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a8656866c162f3e045bdf35c94c03dbc62a787f400b3cec84a1fb2b684a7747c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239514852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b2773ad06be8385fee75f75fc14f1b5b5b54083fd4f2e9b1a863a7ee9214791`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 23:47:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-19-jdk=19.0.2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:55:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-19
# Wed, 18 Jan 2023 20:55:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c00c408cc2d94c0e75087f6aa9151688fe5b2714a5acb9a30aaf9ec603b385e`  
		Last Modified: Wed, 11 Jan 2023 23:49:41 GMT  
		Size: 7.8 MB (7754081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fa65fa2ef4f4c725b1293e9fadf1574827dea7e8153c609f8b9071c4b779f2`  
		Last Modified: Wed, 18 Jan 2023 20:56:47 GMT  
		Size: 204.6 MB (204567603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:latest` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f2ab97c9c7481c9df9dfbd22309469d86ed5e16d0e649e8d5007825aab54b4b8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249077017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463066d676bdb25d999c747a0782f37f18158d08f0ba35f9663a209d1b65ef2c`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 00:36:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:20:22 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-19-jdk=19.0.2     && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2023 20:20:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-19
# Wed, 18 Jan 2023 20:20:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbada04aab656bc06ae2d40eaeb8eb9f9173689e7ed896896e37d12276ef867d`  
		Last Modified: Thu, 12 Jan 2023 00:42:51 GMT  
		Size: 9.3 MB (9312481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9262753dc41267e89d5a62abe940e069d3dbed5d1cbd9a4e321b3806aef032b7`  
		Last Modified: Wed, 18 Jan 2023 20:22:10 GMT  
		Size: 206.5 MB (206465063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sapmachine:lts`

```console
$ docker pull sapmachine@sha256:6003080a985661c85d5344d37d877de2ffb3699236033453c9ebd18e10dfa112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `sapmachine:lts` - linux; amd64

```console
$ docker pull sapmachine@sha256:3712e4b1edc51ebdd83c2c41f45544cd2eff4518696f7f4692e77c08bb9fe65d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234569669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a35785a6f5015f01b930939b550c91a2bd018f410e66a5bd82489b4ae90e0fc`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:08:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:20:39 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.6     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:20:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 19 Jan 2023 18:20:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f9829f76f3bad367d27d5bf3e91e6bc0f738874c547c1b6c35ea445acb9f11`  
		Last Modified: Fri, 09 Dec 2022 06:10:29 GMT  
		Size: 7.9 MB (7912181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7612ccb6e62faac68cba8857a2fe1a8584b8d0aadd45d3847cddde5f6a4ef3`  
		Last Modified: Thu, 19 Jan 2023 18:21:12 GMT  
		Size: 198.1 MB (198080606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:lts` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2e7f74d82695c527959e4b99821d37d55ca55ffa804ca87be61df04ad6915d6b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231055486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba3eb4cd9f6b61bb508def1d7921a180e974149ad858bdf32a7bcb997d4f6b1`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 23:47:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:47:41 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.6     && rm -rf /var/lib/apt/lists/*
# Thu, 19 Jan 2023 18:47:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 19 Jan 2023 18:47:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c00c408cc2d94c0e75087f6aa9151688fe5b2714a5acb9a30aaf9ec603b385e`  
		Last Modified: Wed, 11 Jan 2023 23:49:41 GMT  
		Size: 7.8 MB (7754081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b0742027ac10a92860f5f0b12238d6de8079600b5d0cb64b900f11ee39b9a1`  
		Last Modified: Thu, 19 Jan 2023 18:48:16 GMT  
		Size: 196.1 MB (196108237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `sapmachine:lts` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:7935a7aa1ce2026f8bf6f52932fd21ed046fc85f6fabc5e6c4c7676a0994586d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240788634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b7591ced004315b74576553b9d7a09e5c5d2e52c43d85636c2fa7f7dd6f779`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
# Thu, 12 Jan 2023 00:36:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends ca-certificates gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 00:40:00 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23     && gpg --batch --export --armor 'CACB 9FE0 9150 307D 1D22 D829 6275 4C3B 3ABC FE23' > /etc/apt/trusted.gpg.d/sapmachine.gpg.asc     && gpgconf --kill all && rm -rf "$GNUPGHOME"     && echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list     && apt-get update     && apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.5     && rm -rf /var/lib/apt/lists/*
# Thu, 12 Jan 2023 00:40:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 12 Jan 2023 00:40:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbada04aab656bc06ae2d40eaeb8eb9f9173689e7ed896896e37d12276ef867d`  
		Last Modified: Thu, 12 Jan 2023 00:42:51 GMT  
		Size: 9.3 MB (9312481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0079af51e1c2c2d114f5378f1338e4186f17292bb3d584ee778696e8c5cf7a8`  
		Last Modified: Thu, 12 Jan 2023 00:43:50 GMT  
		Size: 198.2 MB (198176680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
