## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:00d17a70c2a14cf71a01e46b6a33330ea5ba4dc6a1d1114bfb6e70ff4dd9108a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8c7a76f9218161928fd9c693fdcc7cb401d168f9f26e54f0fffde33fd3035b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.0 MB (149964615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46488f57f60c2f39ef2c14554665f385cbaf3d0fce94852318f9678f8ffba54c`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Mon, 16 Nov 2026 20:14:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 20:14:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 16 Nov 2026 20:14:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 20:14:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 20:14:27 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 20:14:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 16 Nov 2026 20:14:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 20:14:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a657f8bab675f3144aa83d69fdb29ad65165b68fd3be2641ed196a4bc26877d7`  
		Last Modified: Mon, 16 Nov 2026 20:14:55 GMT  
		Size: 55.2 MB (55207916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57c074750238d423a7b90fdae968fc09ccc1f1cf998882478e426a6e607a71a`  
		Last Modified: Mon, 16 Nov 2026 20:14:56 GMT  
		Size: 66.5 MB (66508071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f6d38cd7f3d56cd99d2d4eb4e38f1c71202f456a82c51eb20e3768bd07b27c`  
		Last Modified: Mon, 16 Nov 2026 20:14:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2a5cba651f91f88d476ba02afc67b670f5558ac80ade2d98f016693207390268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62354d280b9073cca719f5ca7cd5d846037950a2c8003e5e855aefce5993f1b`

```dockerfile
```

-	Layers:
	-	`sha256:e5e519c8239674ac9c9d31453ee78f2bb205b50e0519127ca8299aaa76870250`  
		Last Modified: Mon, 16 Nov 2026 20:14:53 GMT  
		Size: 5.2 MB (5238467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bf2bceccd3efd362e06f72d9fc71d39a2940703b3394cddce8783b47a5865ae`  
		Last Modified: Mon, 16 Nov 2026 20:14:53 GMT  
		Size: 14.4 KB (14400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f8f801ccd69dcdf0cbc9512637c284cffe264dd6694fbda0265c18b2a1385959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148915398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834f19080e6d65b0fbdc1f3f4c4dc01b62742deb8dc727171bffa85a2358c4b7`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Mon, 16 Nov 2026 19:58:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 16 Nov 2026 19:58:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 16 Nov 2026 19:58:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 19:58:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 16 Nov 2026 19:58:34 GMT
WORKDIR /tmp
# Mon, 16 Nov 2026 19:58:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 16 Nov 2026 19:58:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 16 Nov 2026 19:58:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc06748c3e8feebdd0c41973b0a4e415d5dd305aba8d4287ca1811bd87259abf`  
		Last Modified: Mon, 16 Nov 2026 19:59:05 GMT  
		Size: 54.3 MB (54270362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82576e5850759ccd36ce7540cddcc5e62139eb2cab85a31af53447387b11d166`  
		Last Modified: Mon, 16 Nov 2026 19:59:06 GMT  
		Size: 66.5 MB (66500031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74a43aa65490eb8881106a57a084d0f82ebdc68313099dae20a335bccdbbd5`  
		Last Modified: Mon, 16 Nov 2026 19:59:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f95a2197fc234e803da916118448cc8b0cfab3a6846c5ccc78e9f1971f05f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50488117ef772981101cdea52af2e3e9dfd0ffa6b4ba7a81ca93f7568bf71a55`

```dockerfile
```

-	Layers:
	-	`sha256:c324d8029575ec156ec5c0031feafa479a1c079795a4b96757db2110490f8dd8`  
		Last Modified: Mon, 16 Nov 2026 19:59:03 GMT  
		Size: 5.2 MB (5244928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42896b9d6b8b3f5540f1e372277d642ba559fd4f538fc18b43ae205beb350f12`  
		Last Modified: Mon, 16 Nov 2026 19:59:03 GMT  
		Size: 14.5 KB (14519 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5407c1f83b23dfcdcf3294631206a1003c1f68d15248bb42bc3fa3c0e4831e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157117231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5ebee97138e3a828c6bfbf45aeb6d672910c207858d5e8567237d1aa023a3d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:11:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:11:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:11:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:11:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:11:25 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:12:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:12:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:12:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a209ffa50a25fcb47e851538b91037f7af1d05cb89e6ad23aa249e44a560ab`  
		Last Modified: Tue, 10 Nov 2026 00:12:54 GMT  
		Size: 52.7 MB (52689135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:773b07e8f30535c49b4fc323144033148398400646b9989f17d8e9af702b7ce2`  
		Last Modified: Tue, 10 Nov 2026 00:12:54 GMT  
		Size: 72.3 MB (72333890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d1dcb583277ee206e58e4e267a0788e138770960f86caceba113a9e6a5b166`  
		Last Modified: Tue, 10 Nov 2026 00:12:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fde2e86a36972eaf13532ab510e78b3be958b1b717295d3bb7e22b98ab45a90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5258670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8ebcc44721612171dad33422cc92e2a30973def16b1b4ac4f47c933c741755`

```dockerfile
```

-	Layers:
	-	`sha256:446f684db7efc28e3408bd7bb1eafbe9a292eec379547d495f82547aa6c79a04`  
		Last Modified: Mon, 16 Nov 2026 20:55:12 GMT  
		Size: 5.2 MB (5244220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2f1eb6670f467785efcf9ac51ccd3660cd1d4f6917f2e5c243b0a4e24692d77`  
		Last Modified: Mon, 16 Nov 2026 20:55:11 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
