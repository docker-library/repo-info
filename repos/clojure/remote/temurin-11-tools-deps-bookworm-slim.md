## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:d0657a9e30be4b53ec8e35104e8d939f6870dbc8c48a7f1bc2160bf2c99dd246
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:edade77e66a531a242887e41fd03f9c7e139fcf4533c8f9f9dcc7b48f8759fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240790863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a1a6f96fb82dd4e731271c324f70b33044451dd90a9a1045686ca60c4a0553`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:20:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:20:02 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:20:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:20:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7a6343483c38cf39849a7f45eab525b2a8b6b2e8aabedda57226fd1002daff`  
		Last Modified: Fri, 25 Sep 2026 23:20:41 GMT  
		Size: 145.9 MB (145864132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cdb41dd3c74f3c9f9b0687db3d502d77bb11bc8025dbf26a3605f7bbfa9fa4f`  
		Last Modified: Fri, 25 Sep 2026 23:20:40 GMT  
		Size: 66.7 MB (66687643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e29c1b0a547ba23afc3b9cabd4e3a6f858497e45370d0b190ef56300127e4d`  
		Last Modified: Fri, 25 Sep 2026 23:20:37 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85c88f58fdd2cbd085476969902af431b09f9b39f67cbbce7671f313cd92808f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7201846e9f5a82f7271ce67e4c1f8bb43769d897aa626da5fde989033bff5c`

```dockerfile
```

-	Layers:
	-	`sha256:93a581cfa88d954ccebdc315e9f565aef4cfcae10629236986d08b1a8d635d00`  
		Last Modified: Fri, 25 Sep 2026 23:20:37 GMT  
		Size: 5.1 MB (5138824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ec66b13f3373feb1c694e4bb81c37866a4950e5d75a1727de780dba6b16302a`  
		Last Modified: Fri, 25 Sep 2026 23:20:37 GMT  
		Size: 14.4 KB (14420 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ed14d5fb44b941ef833e75d1213e7f8aabc18e9813917b7330af06f241bc62c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237382555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c482f9a283dbbbf95dc5532bf113d8a7cf1e0fa874a50768938b2a12ef204b4`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:17:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:17:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:17:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:17:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:17:18 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:17:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:17:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:17:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d659e063a65a9a48f9537138650f559e13a4dbce0669d736d42197492159188f`  
		Last Modified: Fri, 25 Sep 2026 23:17:56 GMT  
		Size: 142.6 MB (142576544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2aeb12ad395e2477182c8146627bd8c5d3dbd43fb3249e474d2ee0817ba1620`  
		Last Modified: Fri, 25 Sep 2026 23:17:54 GMT  
		Size: 66.7 MB (66681686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0b4f9c8b7ece87b6bba3411e009953ff1663bf1c2b8168c61a5991d6329c08`  
		Last Modified: Fri, 25 Sep 2026 23:17:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5be9153333af036980a4c001a57e9bc9e078f1db0028ade492915efc8f11322c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea21e7394e5b7d9550bcd7ea78a0238252c3bd0511f9476c13dc2c7e1d46dc3`

```dockerfile
```

-	Layers:
	-	`sha256:cd15818821a2cf119609de0701f8bb175cf2abc5747ed2736db93b5cb8b788da`  
		Last Modified: Fri, 25 Sep 2026 23:17:52 GMT  
		Size: 5.1 MB (5145203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a9375849e62f7bf35e63d456546e845518c9d742e3872bd36d4a8f6a5710a25`  
		Last Modified: Fri, 25 Sep 2026 23:17:52 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0d0b064d333b9685cd2b70554bb8365bd503339e0687c3fa28e6fff3b47b4b01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237673545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ecb7aa0f220642323145fc78d088b69bf6fb2718267b57c435aeee2f4af142`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:39:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:39:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:39:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:39:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:39:50 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:49:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:49:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:49:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7832be33f5be5ca91512a73659985bd243d53c718017818675483432c66cc8c6`  
		Last Modified: Sat, 19 Sep 2026 07:43:38 GMT  
		Size: 133.1 MB (133090146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b0f5b2499696cc4389699a3b5ee41d6bd94893d3a8aa30216c701077aa3c5c`  
		Last Modified: Sat, 19 Sep 2026 07:49:53 GMT  
		Size: 72.5 MB (72499193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b817c9887fb427e4e30254111f8f12e46d378de2c6432e4127eb73226a4a7d`  
		Last Modified: Sat, 19 Sep 2026 07:49:51 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4fc4311fd09262646f2efe86bf0a0209d5f7a1f57221a83b61d2cb13c1af8721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c301045795527d64e0c75010a7da9944b764901a8ab8e692626e147da8b31b05`

```dockerfile
```

-	Layers:
	-	`sha256:e09893d8e6deae0f56f5da06845c9f31ebbbb4d93e7b38838f137c24d73d8dc3`  
		Last Modified: Sat, 19 Sep 2026 07:49:51 GMT  
		Size: 5.1 MB (5143359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89a95adfd93da90419e5cc1b1ce5d1519c270a85aa0dcfefd9d1c04695b0b89a`  
		Last Modified: Sat, 19 Sep 2026 07:49:51 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
