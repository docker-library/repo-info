## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:5409a38a309df9cd98f83798b574c0cd48835a0f7d567286ffa786bc39d3ab1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7b63a50dddc591f839bc047d927102542ec6baa51ad239f3d3e0e773862c5640
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277847072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fca67f193efae987ce92af9b804198b3a720b06a89cdb29c96a9f4b689a1068a`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:08:02 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:08:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:08:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fc653740f8b3ac38755edc8f4bf0f61f65ffdfdc02845792a0b463ef148699`  
		Last Modified: Thu, 05 Nov 2026 08:08:41 GMT  
		Size: 145.9 MB (145864288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1050c5db81fe7eef512f887de484b1bc35660341f9c14ba305d375f5da646209`  
		Last Modified: Thu, 05 Nov 2026 08:08:40 GMT  
		Size: 82.6 MB (82569629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7a39c6dc303d89f854b063f00b33c9fd38be951c992986d8e60e7ff42415cd`  
		Last Modified: Thu, 05 Nov 2026 08:08:37 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:690d13812dee6a3afb714cfc859e369861787753d27db3b21b9e521dee5e2636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41f0733b571475f7749b56556f447cd4230f39760f70d67d645eb7a73f14f62c`

```dockerfile
```

-	Layers:
	-	`sha256:e84917c430094ebc93ab442600d2dbb6aee07f4e5a4f75fe9d8dd00cbca07fe2`  
		Last Modified: Thu, 05 Nov 2026 08:08:37 GMT  
		Size: 7.5 MB (7496283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d262f399ec917f9a6e8f3cb7c0d12f9d3dd92aaad1987cb439bcdd05eadd7eef`  
		Last Modified: Thu, 05 Nov 2026 08:08:37 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:51f6cb1d3b421dbf6511b1df3da1be1a00311a11470cc188b5be2f378812287e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274748771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96717247c1d87af940bfa2e4821ca171f58ad4e889b220e5b38a78012323a61`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:16:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:16:47 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:17:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:17:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c274895593251ed4559f7508c745195af4952131ad6d752bd3a51c84478054`  
		Last Modified: Thu, 05 Nov 2026 08:17:31 GMT  
		Size: 142.6 MB (142576602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902a380e9aa78416d470b21cb49b8781fea248c2e9e8eaa83833e6c40043b6b7`  
		Last Modified: Thu, 05 Nov 2026 08:17:29 GMT  
		Size: 82.4 MB (82392918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd521651c5e8c1c51a3562adacf07b3c2f49de9013cf23e1240516ca040a53f6`  
		Last Modified: Thu, 05 Nov 2026 08:17:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:074c467f0fc671872876e738ab95b3e864644b3fbf3a5e170c184578b22a9d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:610ac15049ac10735a3f939d3124692bfeefa3e2089423f383d95605f4a737b6`

```dockerfile
```

-	Layers:
	-	`sha256:5cf65d81d537f687673976bfe13e029c60ae2c6052c68756329940b2ff1fa48d`  
		Last Modified: Thu, 05 Nov 2026 08:17:27 GMT  
		Size: 7.5 MB (7503294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8639aadb98245555b7004c97637b632a7f9618639871ea21bb61abe5fb651249`  
		Last Modified: Thu, 05 Nov 2026 08:17:26 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:bdc7e2b575fb0875146a881ea5c490fc9e8b3162fec6686871ad98c831e3a5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274315055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff45f3523db02738ef0623d15755d9057aee9790af871f80358933527ac5f91`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:38:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:38:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:38:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:38:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:38:37 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:46:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:46:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:46:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fbd85de45b76e6dc5a41ac5124c7ce87ed521e7523ff6d4626251e1c168921`  
		Last Modified: Wed, 28 Oct 2026 09:43:25 GMT  
		Size: 133.1 MB (133095025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be04e2b5f223696c4cc76065b85bed3e0465d937ec54ac0975aaef43ea57ed7`  
		Last Modified: Wed, 28 Oct 2026 09:47:23 GMT  
		Size: 88.0 MB (87997144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843e659970b97eb806be6dfdee0a316da118b50e2fbaca41236f5bdc6d41d8c5`  
		Last Modified: Wed, 28 Oct 2026 09:47:20 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:91311f08015b133ce9759d9c61d817a1020f6acf89900c54dbfbdb6d19b67bda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7514472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f004858bfb92addf7ae3c14363d2e9b75f380bacd986ad008c6b8499cb5bfe`

```dockerfile
```

-	Layers:
	-	`sha256:6c3af5d1174c19bede649f71d64136fd358bda4c10b655db96b5d16d4def634c`  
		Last Modified: Wed, 28 Oct 2026 09:47:21 GMT  
		Size: 7.5 MB (7500085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8542d77bb8eab2abe2ef28929975a4f525c60f93f7d114e9565afa2edd71064`  
		Last Modified: Wed, 28 Oct 2026 09:47:20 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
