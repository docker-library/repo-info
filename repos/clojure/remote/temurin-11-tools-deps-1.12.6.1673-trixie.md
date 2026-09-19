## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:82320f127ddba23771260b0c90d0028a533bfd0c00fc699ae76b5ff920a679fa
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
$ docker pull clojure@sha256:e4bc8d360e04a0191a3d11ed0fda831a2a367ac2205a84c92ae71cea8307ced9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277808517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d64b5098cd5648d747abb6188f1a910ead6b470de62da29dc8a1712387f83f`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:14:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:14:20 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:14:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:14:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:14:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1963ccec48934ca24df688cbdfbe6c6c6fa168a362580458759499b899f395dc`  
		Last Modified: Sat, 19 Sep 2026 01:14:59 GMT  
		Size: 145.9 MB (145861439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728db1512b393ec67fcdb0f20aaa0f7ad524e4f2482130ba87798030184acf33`  
		Last Modified: Sat, 19 Sep 2026 01:14:58 GMT  
		Size: 82.6 MB (82566737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d97306c8105eaf973e6a5a1b1d2e6fa2bbba0ad111b02123ec4d165ae32f80`  
		Last Modified: Sat, 19 Sep 2026 01:14:55 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2c5f60857ce3aa4f8945325e964c3d671296f5ecf015d06d841dcc56b7f69fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7512667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d6c841235cdd20aeef2831983b3cf135fbd86d77aa795e48139a66f08e50d0`

```dockerfile
```

-	Layers:
	-	`sha256:833880c857ecc8875a33f699c016219dbd2e90849d80d58783ac238a8b4d2610`  
		Last Modified: Sat, 19 Sep 2026 01:14:55 GMT  
		Size: 7.5 MB (7498328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae08ef83522ad99eb5db55f6c8342f522740c2317305f0ff3d8a6ce18a5480e6`  
		Last Modified: Sat, 19 Sep 2026 01:14:55 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ec24095cbfcae5ca37f48dfc348b9c125df7dd2c838df367c49149b75899f06c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274705362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed1c665041db2489d1ffd68af4f312bf63b6ff6c14f7f2c90374e4210fb5fe3`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:21:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:21:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:21:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:21:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:21:29 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:21:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:21:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:21:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1ba89e6c619c5c4fb8c72eaf03544d0fc10dc59d80895b0ed2e98caee8dffc`  
		Last Modified: Sat, 19 Sep 2026 01:22:10 GMT  
		Size: 142.6 MB (142566313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fcae9203ff803876076e2572023e558a5aaee9bd1499571dda9342dd851ae6`  
		Last Modified: Sat, 19 Sep 2026 01:22:09 GMT  
		Size: 82.4 MB (82389569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30b536afc709c4662ebc3e606dfb63c38c5f0f6df8f2e35686e49f0e6dab270`  
		Last Modified: Sat, 19 Sep 2026 01:22:06 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:694a991ca33257c5403e7c29208a202d0fb49e358526db4d38c1e8938d18948f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76e83b0711127aab4026e6e734b07bca1b8a426df9c96657d33bc8824e05bbd`

```dockerfile
```

-	Layers:
	-	`sha256:c9b9acd3cbb5e4e057bdf75668934da5a3c484af2d85f0089447df3129eebdb5`  
		Last Modified: Sat, 19 Sep 2026 01:22:06 GMT  
		Size: 7.5 MB (7505339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5725b253041348ea2ea8246ccc0d03a07b1cbdb33db31979e4599073fc15919`  
		Last Modified: Sat, 19 Sep 2026 01:22:06 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a505be84634e439b8acc928d5ec6ce8be6eb4a3497eb347bde63de294fbcbe82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280559159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb8fe9774d282c932df9ed437f7c8d65b4cfd315fb60dac6b243aba15b2d8b2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:25:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:25:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:25:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:25:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:25:31 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:35:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:35:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:35:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e0b01e0e4cf6bb11e02241e47204dbdd57076f27f098eed815aeb5f868baa8`  
		Last Modified: Wed, 16 Sep 2026 10:30:05 GMT  
		Size: 133.1 MB (133090163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ca4549844fac0dee3ae177e3c5d75dc66c12ca8a960f69c68dd89ad438abf4`  
		Last Modified: Wed, 16 Sep 2026 10:35:50 GMT  
		Size: 94.3 MB (94304066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f69d5a0908d7188f23e068a54f25f41a2df07f9aebb7c4b083e592a810195ce`  
		Last Modified: Wed, 16 Sep 2026 10:35:47 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a76324dd5f55ded5d45e2afe9a58a3e1181853f0f4a099ba648c895c9e2912d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7511650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900d158142bcb453710c32caa0fce9245ddb08011a5b98880f2d6a5df07fb685`

```dockerfile
```

-	Layers:
	-	`sha256:6c21cf3621b1bbac33dc1e7e7cee54906248619f549b814614712e49ec7d17bf`  
		Last Modified: Wed, 16 Sep 2026 10:35:47 GMT  
		Size: 7.5 MB (7497263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0224ef74e28cb0831371a8671a26342bdd720fa7c60cd4539d2ed296ddcc4f94`  
		Last Modified: Wed, 16 Sep 2026 10:35:47 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
