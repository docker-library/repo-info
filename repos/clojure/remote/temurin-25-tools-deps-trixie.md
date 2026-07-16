## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:6af4c0dd1291c9650cf3580761d28887c1680a647f1672af8500e68da3d83b85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0fa58da9ea90eefd803917bba6d0585d19a3464480b6ce4aaac0ac0d3a5d73c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224421906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47d877fdee329c43dd376dba6eeee2d449dce655d378d1a8f1761bf3ccbe55e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:35:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:35:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:35:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:35:14 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:35:14 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:35:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:35:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:35:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:35:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:35:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37e9331d583661f285d6d60d5a942a343a65c96b2ffd1c3a9fc69c31b0a745f`  
		Last Modified: Thu, 16 Jul 2026 01:35:50 GMT  
		Size: 92.6 MB (92574571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a7015330770c5dcc37d4d072216e3cdee8af533230d0db5fc2353127d5e27b`  
		Last Modified: Thu, 16 Jul 2026 01:35:53 GMT  
		Size: 82.5 MB (82533722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ab33cc1c79c4fc371ccb11b1dce95cab2d447764f58593167472ed68d40cd8`  
		Last Modified: Thu, 16 Jul 2026 01:35:49 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118a1e7dae648066919d1c590b4042696415c6e251560b65dc9f713c51bc4101`  
		Last Modified: Thu, 16 Jul 2026 01:35:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2ee6da706e375be9fbb3dd52a31b9ff164a154fd1ec5cb1e31386232031af868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1213ecc6b899ee58fdd36d37e9343775c0c63adf78952c87aee1a4f92f8041f3`

```dockerfile
```

-	Layers:
	-	`sha256:966dbb245a9566488e60e4315450e3cf471093e850c38fc10fe96c5443def3b5`  
		Last Modified: Thu, 16 Jul 2026 01:35:49 GMT  
		Size: 7.4 MB (7436923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0888de69509b9311b1271c7a84f6bef3f4720464c06a70bec6e32d37277f8541`  
		Last Modified: Thu, 16 Jul 2026 01:35:49 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:23180f3e942f9bdf70fcbb73ad485e0e79ae1c2d78b19f0f2b93dcdcfc19d591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223561253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c614ae5a0ca85e71954d4b506708939986caf6408fba9ca4122978ec163f653`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:31:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:39 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:39 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878595566ef8bc36749e6a8eb220338d3947160813c204836121a57e9139c334`  
		Last Modified: Thu, 16 Jul 2026 01:32:19 GMT  
		Size: 91.5 MB (91542278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa442109867fd11fefe4b96ddfb1fe86e11b8077260a4b5a963ac7d2e005785`  
		Last Modified: Thu, 16 Jul 2026 01:32:18 GMT  
		Size: 82.3 MB (82343751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e82c5272560b382f90e514478fdcc29a16600b9bc4831a81082a4e5a81d881`  
		Last Modified: Thu, 16 Jul 2026 01:32:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0cd0cb1698370ef12d34c6ea3ed768305f05cf7fa3fad3cb94948f20e2325d2`  
		Last Modified: Thu, 16 Jul 2026 01:32:17 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:786cb919fb50edec3415f009584e69361a8627a40627e516c1b022aafb93452c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7e2df32951825b520ef58528b5a1c0eb371f7d66efe4393bb1578e852574e2`

```dockerfile
```

-	Layers:
	-	`sha256:bc81d6266b408b21d1a0ffadaaf37ccd1fdb85b7a354bfde957025f78c8350e9`  
		Last Modified: Thu, 16 Jul 2026 01:32:16 GMT  
		Size: 7.4 MB (7443337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14e6d751c6ba653092af1d51edfa4e0517b9f4856674772054e8453a74980010`  
		Last Modified: Thu, 16 Jul 2026 01:32:15 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8cf938c1fee5507ff5f23258410ead348e164b294ef8c3ff1572b85cb7050511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232988190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205ac498a55a30b3f7601227964d5fc92b4f81c8cb544811033b751999905ca6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:59:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:59:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:59:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:59:37 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 02:59:37 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:06:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 03:07:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 03:07:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:07:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:07:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023419aaa22bd51cc990854874a746aee97263909b476e5f2d18f55629bb587e`  
		Last Modified: Thu, 16 Jul 2026 03:03:13 GMT  
		Size: 91.9 MB (91914003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b502f573886e2d0fac3e2cdab55fa256842e6f53fdf964f6182ffaf2f4997576`  
		Last Modified: Thu, 16 Jul 2026 03:07:40 GMT  
		Size: 87.9 MB (87939136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed5319632c383c5166c230de0614a351e65494bdf0ceb927103a711b3ce253d`  
		Last Modified: Thu, 16 Jul 2026 03:07:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf6833c452e5bf477ac0c24072e5fad56bae181cc9ff18e9ee5cef475733eac`  
		Last Modified: Thu, 16 Jul 2026 03:07:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:84e6cc263117ee3c2ef074ff66793767dbc1ec07d467a3ddd71dd855a8b29dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f57d1d2a56a8e224a301dbf2a6bea9242359f3641c4cdc63aa1fc019ec22dd`

```dockerfile
```

-	Layers:
	-	`sha256:4ed981b74cd78872a3a0fa4c0953f124c42c23e3e38dacf070975ab1432cc308`  
		Last Modified: Thu, 16 Jul 2026 03:07:38 GMT  
		Size: 7.4 MB (7424668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e57a05dce7b9646b1677a7ae093c0c8cb1e287b6ac66ca801a506e02be65847`  
		Last Modified: Thu, 16 Jul 2026 03:07:37 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:cd3c0d97a948a0c847eb258d8eac7a83f3fba2028a08f43f366e6b539ef50f67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221305253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ffc13b4f2d6d2ac3aea47a29c3df0ddfbefc7be991767b86ef7865adb519ae`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:55:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:55:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:55:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:55:09 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:55:09 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:55:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:55:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:55:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:55:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:55:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41f8eb66b241fc5b3506357f94e0b36e7a2ae296cad325024b0923eb5bf51e8`  
		Last Modified: Thu, 16 Jul 2026 01:55:53 GMT  
		Size: 88.4 MB (88420315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f37730ad7be6f53a302f2ab2d937e380e8cb8fc46b2147cd6634bc07e71c564`  
		Last Modified: Thu, 16 Jul 2026 01:55:53 GMT  
		Size: 83.5 MB (83502186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fee2d642fe5a73fc18173b4f3419a79d2cd2babbecc8a2c27b4c35c162680d6`  
		Last Modified: Thu, 16 Jul 2026 01:55:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f6622c40dd9b7f5069e8501531fff3e3fb137a68e61f8b3e19cb93803e9f48`  
		Last Modified: Thu, 16 Jul 2026 01:55:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1ed2953e8f77276a5bd9e4c78ab98e430fced856bc0f039f96cf4f5a0b53d436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7433976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65439337dd3cf5f99abcf7ce7eb69d081f0c6c04a975998aea6f56505007f4f6`

```dockerfile
```

-	Layers:
	-	`sha256:23daabc4cce28f959717a38df6720dac364b2ee953d6b1a89d7e1bb86ec86427`  
		Last Modified: Thu, 16 Jul 2026 01:55:51 GMT  
		Size: 7.4 MB (7417407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:117058040d213b00d472f06e879fe2d136421e61a05fb44a0b70753f5eeec226`  
		Last Modified: Thu, 16 Jul 2026 01:55:50 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json
