## `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:5eb7c3d69ce06c33626cebd131ac3865f5a3a165a899df87af720a5f54d12a22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0196b1eea1767f0d6e3ec69e4f8ebb8ac4d7e55ed52054d0ac53db056f459f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256951528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98005a4ea38b80ddcc24ce18a7020219ffaa5171539af39d9a4cf2a4e78a66d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:19:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:19:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:19:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:19:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:19:27 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:19:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:19:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:19:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:19:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:19:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c489f17008129a3336070d0a412e198253a08c30a69aeb56e1ebcba5cb53c65`  
		Last Modified: Wed, 21 Oct 2026 01:20:08 GMT  
		Size: 158.1 MB (158117455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e26f839ed161401e43eef5350ea4cd652415c9fe0aff8036a71ed6b11aeb2c`  
		Last Modified: Wed, 21 Oct 2026 01:20:07 GMT  
		Size: 69.0 MB (68989452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0751b25428e89da0ac3cdf42c61ce571d8b2da8a67dc95feb67b38f5a654a1ea`  
		Last Modified: Wed, 21 Oct 2026 01:20:03 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb50ca9f912d38efca602d20b7b59af0fe2ce5245db50e9ff997db0fd81be46`  
		Last Modified: Wed, 21 Oct 2026 01:20:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2d93f69355236cb7335146c1d365a5fbe8aa0d114fd1d9c216563aff6eaa670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fabc17958d81770def54280ec2a4aeaf0a6c9e5ecdacbe41c10e9271b88d3b`

```dockerfile
```

-	Layers:
	-	`sha256:6a4f97c7edb5c76ddfe9e0a91ab4027f096ef5d5608ae5b4f4e18d158bfe8237`  
		Last Modified: Wed, 21 Oct 2026 01:20:04 GMT  
		Size: 5.3 MB (5263889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a99ebc9b69645788dc926a36785108afa334bd79e06500b4da0d116e0c9ed564`  
		Last Modified: Wed, 21 Oct 2026 01:20:03 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:801f426ead241e547b4cd575e1014d8b9999c48d057a769d889aeef678a3c91d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255407789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dbe36a5683212d177a1b38f64df342ecacc54314e4b347b2bada9b602179607`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:51:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 00:51:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 00:51:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:51:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:25:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:25:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:25:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:25:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:25:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:25:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08dfb8b97285a31214e7150e9b83bbddd99304ff906ab879296bf807f8ce6df7`  
		Last Modified: Wed, 21 Oct 2026 00:52:32 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d65593c721b2c030b875b6bc7e0754681948ae04df79d799b10add1339df520`  
		Last Modified: Wed, 21 Oct 2026 01:26:05 GMT  
		Size: 68.8 MB (68805593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd15b4651e20ef7a2cb712691ec189b096c3f16072365de22bd73382bc1f5b92`  
		Last Modified: Wed, 21 Oct 2026 01:26:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266688f3115316dbd27fd070460e9819435b038750acc893be8ee3ccf52792e1`  
		Last Modified: Wed, 21 Oct 2026 01:26:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a1524d0cd89ef854f4b95d4881b94dc99f8349862be0af510cc42971bb8e3dbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5284779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd2217c7b67a470c86c5e82c6f7bbff557d0733d79d481d57f359ae37f80baa`

```dockerfile
```

-	Layers:
	-	`sha256:21737fbf34768543a2520cc006c4638663865f6c641f22dfdb11e07519f57ad4`  
		Last Modified: Wed, 21 Oct 2026 01:26:03 GMT  
		Size: 5.3 MB (5269650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d0651b4a776fc0a198fe26ccc71ab70e35a706c15d24428446264e349cda35f`  
		Last Modified: Wed, 21 Oct 2026 01:26:02 GMT  
		Size: 15.1 KB (15129 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:db19e66f9e09c93c681a1f3763dec73fbd21428acab185dc54e4f4e39e708962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266352657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893c2c5544324fb7f4c4f12de8e4e2c39a93a40710793bec118f213d248ae0ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:03:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:03:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:03:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:03:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:03:33 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:15:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:15:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:15:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:15:57 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:15:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc8db92c8093631fa89d93420542c74f3e69613279092fa836d43403c3a23fe`  
		Last Modified: Sat, 17 Oct 2026 06:08:53 GMT  
		Size: 158.3 MB (158282682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79c8d29e30a4fe3deb1d0059acf39757d609265b2cc298280f22a29a51b61c3`  
		Last Modified: Sat, 17 Oct 2026 06:16:47 GMT  
		Size: 74.4 MB (74417333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c11f4ed22204271226fa01bf6e6998ac4f9e7c47e03f09bb96c52399f3e38a`  
		Last Modified: Sat, 17 Oct 2026 06:16:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e53236869370cc3d6c36766fb35ebd7580fa709281463ef06cc6bfbd14bdab`  
		Last Modified: Sat, 17 Oct 2026 06:16:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0fe5f78dbe95233dff2e9ef5c56094253a34341ca44efa8b876ab0ef5d65d300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4881ca7a26cf380269c267854b59301ae3ce3fa54ada7fafd0e070e362963c4a`

```dockerfile
```

-	Layers:
	-	`sha256:1b24f4891f600c70ea25eb4f194e5b443f3cc56a702637e45bdafb74ff05d312`  
		Last Modified: Sat, 17 Oct 2026 06:16:45 GMT  
		Size: 5.3 MB (5269537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce127336e9414606efa763569caa6098586d7dcd12bae15d1da3f8cec8161767`  
		Last Modified: Sat, 17 Oct 2026 06:16:45 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
