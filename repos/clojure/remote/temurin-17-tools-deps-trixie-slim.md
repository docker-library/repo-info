## `clojure:temurin-17-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:a37c480cfc0fff428e5e097ab10e5c0773ec0882a2dc00f3627f5d26ff2d588b
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

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:62b6f444e50038a97110c0a9d41a5ed145bb5448e0ee0ca60c17ed1cb1c1f903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244652462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef09cc01d3364dfa4fedcb8cd87185df71d04a88aa85dedf3526642e14478a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:45:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:45:29 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:45:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:45:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd860aff94d963ce568d8200f9457d2ae6dc51ea334345cbd01f613b19d0ea4`  
		Last Modified: Tue, 18 Aug 2026 20:46:05 GMT  
		Size: 145.9 MB (145905453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36cd41a839d77f040d8d3d1e4aceed47423df93298c7fbc3831ab31ee4c3d981`  
		Last Modified: Tue, 18 Aug 2026 20:46:03 GMT  
		Size: 69.0 MB (68965203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2039e0fabd1ed190442d8ef6c1bcff4d8662b59c8f1bdf7d8c9e4c231c77182`  
		Last Modified: Tue, 18 Aug 2026 20:46:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61aa3d67a342bc7bc8f800ee91c8bcbf91ba77926875039eb3bf94c4b190c4d4`  
		Last Modified: Tue, 18 Aug 2026 20:46:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cfd4e6232ac4aaf8c21195813a24ecdc3c2dd164d556bcd9cfb2e38be8fa0cb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e86cdbf1f39cd264d7a20b5b371bdf2fa2d84d691eea5e1875c8fb05a75e16`

```dockerfile
```

-	Layers:
	-	`sha256:c8ca9c47c27cf64b52d70ae1ec2b65fbe6396c62ee6843b1285b1ba022c5f621`  
		Last Modified: Tue, 18 Aug 2026 20:46:01 GMT  
		Size: 5.3 MB (5257364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34f3dd90a38f78441eb5aea16ca19f80765569ce0559bd9bfcfea112b056da0c`  
		Last Modified: Tue, 18 Aug 2026 20:46:00 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:339e34659ad2e7814f8acfe6fa0af75d00bdac72d2456acc27935134b26898e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243654571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8b6dad78553a982e4b044fa11bd8d6fecd9ec15c463936ff90f3846be0c9ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:45:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:45:41 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:45:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:45:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a024e5afb9c2d327f11a88ae92dbf9528322e73bc0a8c2c8a9ed6edff2feedf`  
		Last Modified: Tue, 18 Aug 2026 20:46:20 GMT  
		Size: 144.7 MB (144724292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e867420277f7bbfe455c040f5464528438ea3bb542998328a47383aa159d07`  
		Last Modified: Tue, 18 Aug 2026 20:46:19 GMT  
		Size: 68.8 MB (68785629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288614aff1d04e069b225ef41c69ab289e406a39e180f3dde68f686974246cd6`  
		Last Modified: Tue, 18 Aug 2026 20:46:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4035f8a41e686c6a1405136a2d1319f172fd3add702530139d5ddaa926c5e2`  
		Last Modified: Tue, 18 Aug 2026 20:46:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:34646dd219078e211d172f30aaba2850f1b8d5a20dea5dbe9ff02accc4bca638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab148adfd414b8ece74ad306fad299a67fbeeb9ec7c9bf898b454c6430f6ee5e`

```dockerfile
```

-	Layers:
	-	`sha256:05e16a168cee069a60e67e1290bcf628ad599bde64843d89a23474ac1da9ab9a`  
		Last Modified: Tue, 18 Aug 2026 20:46:16 GMT  
		Size: 5.3 MB (5263125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:608e2fa46bb0b08b240f6aa511ab6592219b59bd14f3106de195cabaf8895c21`  
		Last Modified: Tue, 18 Aug 2026 20:46:15 GMT  
		Size: 16.1 KB (16083 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6f43a4680042af4d6b47997430e4eeb971bdb9587e3af11d52f47a96b32cb5ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253744575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd8580ebe51b88ae454687467521b70450988fb61124a59fd437400aed1f5a8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:43:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:43:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:43:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:43:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:43:35 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:47:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:47:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:47:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:47:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:47:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bc9ac95bae09b895d65d01a3dc3287bb777a358cde18c692ef70e9e7d7502c`  
		Last Modified: Wed, 05 Aug 2026 07:46:43 GMT  
		Size: 145.8 MB (145766106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ded17930d48f95d85b989b680ee3190cc16f19be1f2f1bce035f56655e69e1`  
		Last Modified: Wed, 05 Aug 2026 07:48:05 GMT  
		Size: 74.4 MB (74376084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423ae7f8355337c9df1dedffb37425b4941c7704ce5b4316300e9625ddd6c263`  
		Last Modified: Wed, 05 Aug 2026 07:48:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81509bfdf89d2a93091e7b931a2e04430800ff098512ba6bc464f9c5be2c0011`  
		Last Modified: Wed, 05 Aug 2026 07:48:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6db87e9ca2fd0a8e2cadd1586147cc55459635350304a1b73002b050818a97c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397b7713c6c923a7227bb771880e154471cf2ad71fa2381048d1d0cc88958deb`

```dockerfile
```

-	Layers:
	-	`sha256:9e1db18e7f28393920bc793da3a3a5e73a2b42419c1cd6813f34750932517ed3`  
		Last Modified: Wed, 05 Aug 2026 07:48:03 GMT  
		Size: 5.3 MB (5261735 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9753b8d7ee7422e9abaebc10612cd879172558ce7326ffc5c4b949d1772fe43`  
		Last Modified: Wed, 05 Aug 2026 07:48:02 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:0b12efba44b38d73cb38882106d1e7b789894c97ccab3e50712b3b5c6020a719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235703382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b28ad701a431b2cc069cb038d7c2117749f333329c8dd249fc95db23b5743f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:35:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:35:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:35:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:35:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:35:35 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:35:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:35:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:35:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:35:50 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:35:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee90c53d2072e13027c4178bedd9aaea2571b8f10503347ce2e959ec461f0378`  
		Last Modified: Tue, 18 Aug 2026 20:36:19 GMT  
		Size: 135.9 MB (135910448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f0101a5e778988d3d047f176f99cdfe56ab25e755c158513a060253834e9fb`  
		Last Modified: Tue, 18 Aug 2026 20:36:18 GMT  
		Size: 69.9 MB (69945325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199f327fbe1ab6b84c5848e3219c07ec2be4be1815c229178d7a6e45f7f40544`  
		Last Modified: Tue, 18 Aug 2026 20:36:16 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6930ae06166ee81086fba377468b366ade9af2e6006e424d9357e9dd9ab1dd7e`  
		Last Modified: Tue, 18 Aug 2026 20:36:16 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cdcbedada892dbc2a707712ce4d0d06b0f510a16a7f9d4943e4d59749dbd7181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5269254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072a59f1561fc94dd0b2bcdc2b706e46bf2c49d5b0d154f413b9822436d2ae40`

```dockerfile
```

-	Layers:
	-	`sha256:4e763108187e22aa9affe533b0a916ba77fd244e24c1fd55f539bc09658f4df9`  
		Last Modified: Tue, 18 Aug 2026 20:36:16 GMT  
		Size: 5.3 MB (5253288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:284c4b6d7d003e1894247ae37ef148437852093abb5209963265b6a35fbfa1f8`  
		Last Modified: Tue, 18 Aug 2026 20:36:16 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
