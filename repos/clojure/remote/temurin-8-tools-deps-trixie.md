## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:7a9fbeffb6a2f12bcba858ee105dbfcd2b858396ef6e62f8295a0f47ebda3ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:c1c8d07591faac615a50f769ae4c0ef82de046f0eb7ec6bc5a19341a07e4e8f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.0 MB (192985850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3461298cd3a7921dd3f0752123f716d2905de1c1fa9004309979eff257a9b825`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:32:08 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:32:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:32:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:32:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604a01c0233a89cba6f9fa4b6606f94511664d183f3a3d49582320b92f425815`  
		Last Modified: Wed, 16 Sep 2026 04:32:46 GMT  
		Size: 55.2 MB (55164416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487549132345ad4a22e2eeae2c7bd5131576cf7537175e457ba3f67a755417ac`  
		Last Modified: Wed, 16 Sep 2026 04:32:47 GMT  
		Size: 88.5 MB (88482960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f9b52799fd4c524f2c56a171ecc2c384faee2c9e4b90fd6c53bb51e88bc70b`  
		Last Modified: Wed, 16 Sep 2026 04:32:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2005c4e7a2bb8681f97f7f59bc440f7e7d928754c0c5880477c317500fbb47e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9cc603d244125dfd05d254c851363a0385540dd07e014e77ac19cd5ef0401d6`

```dockerfile
```

-	Layers:
	-	`sha256:5a1dd5cb4fb53a798ab98b40daf95aa887e9d8646801978c13f75b70268a9df7`  
		Last Modified: Wed, 16 Sep 2026 04:32:44 GMT  
		Size: 7.6 MB (7594303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6447a212111379206b3c6f48695bc41facbc56b07e5bd0e83a63ab8b5f03dc55`  
		Last Modified: Wed, 16 Sep 2026 04:32:43 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:59bf823c4c4b534489243a3da03b29d197b60b6b3495385977b716cf37656195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192597296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c0c5c63b0db413eabe62eef19f2a5a881663c35afeb0f9b90a44ea5da34646`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:32:25 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:32:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:32:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:32:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0ebfc364a2ca4a2330ecb8802558110cefed70ac779eebb1b66d2b6d34c1ee`  
		Last Modified: Wed, 16 Sep 2026 04:33:08 GMT  
		Size: 54.3 MB (54262765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1f19025e8131b1734435c4d2251e9d46a19336264b1eacd9c176b5e8576a0fb`  
		Last Modified: Wed, 16 Sep 2026 04:33:09 GMT  
		Size: 88.6 MB (88629030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4845577565666dd04371d2b508ae72d06c2d709c8d8552d23d26ac42393ac2d2`  
		Last Modified: Wed, 16 Sep 2026 04:33:06 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4099b18ca30037f6f598702bbfb3601b546dc8ad45583c3a46187f823f8cc186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7615838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b394ff67b1d54cc7bbf605d3b7f0fb221c08cbb7104d39f4eb45748749854d6`

```dockerfile
```

-	Layers:
	-	`sha256:ea360012aaba4c393afab1a2bb7e26a20b3daecc7d59f74a36b12822a727f7ff`  
		Last Modified: Wed, 16 Sep 2026 04:33:06 GMT  
		Size: 7.6 MB (7601396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f918ee67dfa79db352370ec3030f45a868f0db514a8f0cafffd47c4a2546a03`  
		Last Modified: Wed, 16 Sep 2026 04:33:06 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:bca82e1ab2b44b456382f184df2883a7e479f76952fa234d9c5f0bff7da52fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197552300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03582f31e000d2056e2f7da8730a83228490c524309b8c703577a8ef9464011f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:58 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6d6dd11415fde80284cfdff67a20a05744a67bb1d841cb6e0604cda6f3c8cb`  
		Last Modified: Fri, 04 Sep 2026 00:07:51 GMT  
		Size: 52.7 MB (52670660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1c9aa47577f9e4a7942396f28c1c3b41470ea3d0ce382e1a86a0a5bfcdaf2e`  
		Last Modified: Fri, 04 Sep 2026 00:07:51 GMT  
		Size: 91.7 MB (91716710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41621a4b7f1ac22a7d0d247df15b0c1ff040238933cf24ce5129c4946d6345ad`  
		Last Modified: Fri, 04 Sep 2026 00:07:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0342ef84ef503089ea67c92a434993e29c954bab678ba97c93769a5541c66664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d87c9a1bc8eb3cec35def422a06d21f2d58f18d30d9900ffe919447ddc060f9`

```dockerfile
```

-	Layers:
	-	`sha256:7b8debb7a428c022dcb4427c99a236304663aeb46b445d38b36a858516917a25`  
		Last Modified: Wed, 09 Sep 2026 10:30:04 GMT  
		Size: 7.6 MB (7599247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b772a904687c3781dbb6e0ecab1d21c0600be6c3d3d5513608cf161ed014ca43`  
		Last Modified: Wed, 09 Sep 2026 10:30:04 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
