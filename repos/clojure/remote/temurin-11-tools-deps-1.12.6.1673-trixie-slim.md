## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:a5f3f4cf9027fc98952b87bcffbf36820276971b83c9ba70dc084aa9f9a09546
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b330b7932ab123f888050116c48b345c3e8360577eecc04162ec894f9cf8c007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247582647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a490ba9b6df61875247524f9e7a47d23995ecafc862b4cf3455d1619fc18aa8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:01:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:01:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:01:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:01:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:01:49 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7441950a214faf9a3e6598ca41ac4ff8cd6930ae21c2d059732790963026cbf`  
		Last Modified: Fri, 04 Sep 2026 00:02:28 GMT  
		Size: 145.9 MB (145861363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c27f0268d1d3f1585573df01a8372177e37c72e621fddd637b6c25a1c0a9aa`  
		Last Modified: Fri, 04 Sep 2026 00:02:25 GMT  
		Size: 71.9 MB (71927980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45db921c26450dfbd3c38f227979aff6d1ef3e3ad7508d55be32f8c02a2b512`  
		Last Modified: Fri, 04 Sep 2026 00:02:22 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6283fb4f6f5e79b48110797c4d84ee2f9687be4ac82f79517bc1d0881c3d802d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e93d2b116790b66e05fafed122c27d2437e72b8143d16b11c9c65686d8576e9`

```dockerfile
```

-	Layers:
	-	`sha256:fd2ec6b016ba962ed2350c38bbe9917336efe36f5a5194aa56e4df5691063e87`  
		Last Modified: Fri, 04 Sep 2026 00:02:22 GMT  
		Size: 5.3 MB (5277076 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfc136432d7634252270974926cdb34592396aca09a76a9db103b5c52e3cc80c`  
		Last Modified: Fri, 04 Sep 2026 00:02:22 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:63bee8d081c35475cb183acfdd1e344b09612b99ab0dc66fc4881ea0660f23e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244856861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3488604cc282a7af8af4b538b2a0950d84acbabf60296a05576cae46480083`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:06:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:06:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:06:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:06:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:13 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:06:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aedf261cfc29822883bba9fbbd510f1c7cdb19bcb0d66c4efb2ff25270c7e4d4`  
		Last Modified: Fri, 04 Sep 2026 00:06:52 GMT  
		Size: 142.6 MB (142566585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d10c3ee9d853b3049523ae6310376d17df2dfc74ea07320f62a2ed497511e7f`  
		Last Modified: Fri, 04 Sep 2026 00:06:51 GMT  
		Size: 72.1 MB (72130050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b3be8bacd48ef3d4aa26510d0f43586b51728743055adbd2e37fcdf0636dc7`  
		Last Modified: Fri, 04 Sep 2026 00:06:48 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eb4f4e2239d6e1085adf03b2de9944fcdcf3db52c3f9238182514c86d520e103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3eedf2fab8eb4c5df5cd5a0428778f41de43b05e01eed2d6f19e5d6dd05e8e6`

```dockerfile
```

-	Layers:
	-	`sha256:01bb703d078a08c4ceb80bfc67988ff6afc7f1716f2fc865ce5dd31829a0c5b6`  
		Last Modified: Fri, 04 Sep 2026 00:06:48 GMT  
		Size: 5.3 MB (5283455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4491efc35a8890ceab226b93a62e6ba017ac229020635a09acfdca030e2e4360`  
		Last Modified: Fri, 04 Sep 2026 00:06:48 GMT  
		Size: 14.5 KB (14514 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:eaa9c758b4769807137d254feabcbd4e51080c1554a042d8cf885e159b2a59ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244281642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff76396f74ce1b18be53577304e6c4f921bda18a07f69cdad435ca31112c3d0`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:13:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:13:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:13:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:13:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:13:37 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:14:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:14:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:14:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170aa6d6fc63a3983af3aaf935d46dc8958d04e46efc534361b25399f3368299`  
		Last Modified: Fri, 04 Sep 2026 00:15:18 GMT  
		Size: 133.1 MB (133089942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1610a6c257cb1a1c852d6b7eb0f476477c5e597b152d70a4719c098ff0c24f6`  
		Last Modified: Fri, 04 Sep 2026 00:15:16 GMT  
		Size: 77.6 MB (77575593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e1095c8232afe41d6da1241b112d582dc1f56eb29c495236ca0d0b6dcacdef`  
		Last Modified: Fri, 04 Sep 2026 00:15:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:32e49ad13276c48313ea80f4e18484c5ff3c264994babc6a3e15c60a313236d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbbdd8b583c16cdbea806a58df3c320fda075d64878da6a8c5f9ae145df11fb5`

```dockerfile
```

-	Layers:
	-	`sha256:686bf52b254787115a64dd09eaca3b77cdc7f98b91c962d4f3877f856cb98b12`  
		Last Modified: Fri, 04 Sep 2026 00:15:13 GMT  
		Size: 5.3 MB (5280832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6070b80eb141cda60c69edbcccb6fd56a88e07262a9662608ab57d0361037571`  
		Last Modified: Fri, 04 Sep 2026 00:15:13 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
