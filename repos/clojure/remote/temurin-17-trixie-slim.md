## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:e9075b03df7f8284f2883617ab6ec271e2dcd4138271d9a9b598a89bf1275d75
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

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4b18c03883714e91de8748ae01a87845cd8401408a2c491f5f1665f973ae8f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244652058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70bb0d5b8355c5d9bc6593c2f1e6f8150b95c14da778a754e52cf534ef4b1b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:22:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:22:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:22:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:22:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:22:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:22:18 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:22:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e2678f811ed07b998d0be7a6ae6939c3cc892ebc7830f4fd457484280c436e`  
		Last Modified: Wed, 05 Aug 2026 01:22:41 GMT  
		Size: 145.9 MB (145905422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b0f323b06bdcb7ea52eeded63337d22e7a065dfce19698fba2945443514c88`  
		Last Modified: Wed, 05 Aug 2026 01:22:40 GMT  
		Size: 69.0 MB (68964834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c1c58359c88b2ccf4d0b9058a87de0e6ff49042f564c862d539e50a503087e`  
		Last Modified: Wed, 05 Aug 2026 01:22:36 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0260a3d1804db05d4d3e4b82cc6aadb5a404fc874c366c09abff0d417a47009`  
		Last Modified: Wed, 05 Aug 2026 01:22:36 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7fe6ebcec9bf5cd7aba1820ed09d20ff4cde9552e840a7b1a3e5bdc174ec818f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9f0211bb28fe6311b4a4fc1c6888b0d5e1b2cd4608891aa06db495effa27af`

```dockerfile
```

-	Layers:
	-	`sha256:c1c9fb43dc4c03d446c754f1e9d9e3a43d6db3717b0fb47ff0e9fb782101219d`  
		Last Modified: Wed, 05 Aug 2026 01:22:37 GMT  
		Size: 5.3 MB (5257364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7a22589d8c6200c7bac6397dfed5142b8de88021b8f75d6962ca57e962b4506`  
		Last Modified: Wed, 05 Aug 2026 01:22:36 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1bad26b93c20a9e794b4bc9c3eaec7cafb793ddfb39e1e6980c3136e990e4da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243655112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:920d4b6d1b147d9b8a279a8059a0280bdc40c1fe7ac69ca7eef7bbba95a67e6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:28:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:28:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:28:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:28:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:28:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:28:18 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:28:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a8a336c417f407d1876c077cbe37fed75a298a9493c59db9ef6a89c0a1b731`  
		Last Modified: Wed, 05 Aug 2026 01:28:41 GMT  
		Size: 144.7 MB (144724280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7f06911dbb42a6b899b84be1742cfdfd7385fe3a25d1e55b7765f0feb0ae2f`  
		Last Modified: Wed, 05 Aug 2026 01:28:39 GMT  
		Size: 68.8 MB (68786182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d96b1dac6053bc514bd90aab422bcb585b5f51d5dde1c4b8f7fac75eba836f`  
		Last Modified: Wed, 05 Aug 2026 01:28:37 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d45d81b6fc5aa471fbf959fe73ad9c9e8aa76f4f636b038c859bcdc99183be3`  
		Last Modified: Wed, 05 Aug 2026 01:28:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ce3e17b3028f7d4d3e2475528ed5f4e7d955df2bdac6ac72054cd5e63b928d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1b8de49c839281ac8e4867af5741324e3e724eda8fe098cfb17c9b8cc41439`

```dockerfile
```

-	Layers:
	-	`sha256:adfd3272cc242c64c046387504526a2600c0093dac44213b5f8bbbeda8d06ab8`  
		Last Modified: Wed, 05 Aug 2026 01:28:37 GMT  
		Size: 5.3 MB (5263125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee37209f68d8d3c55cc422700d709b0e960f80a984e35015ca09d78f391bd45b`  
		Last Modified: Wed, 05 Aug 2026 01:28:36 GMT  
		Size: 16.1 KB (16083 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-17-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:dff9c2d586a383c0566782038bf653d0527f4c0315318645709a78e56b992356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235703475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c830acac822c7210611a3607991441fa5bfe102f5bd9920db5fa6e53beaad8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:47:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:47:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:47:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:47:00 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:47:00 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:47:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:47:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:47:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:47:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:47:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26fcd02475ccfe616e7b1d4e678dd998de75439f31fee79dd412d53296450c4d`  
		Last Modified: Wed, 05 Aug 2026 01:47:47 GMT  
		Size: 135.9 MB (135910391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcc3562eed6556642630ab952c1dd7c5be12932560c497d58d8cb89c2e169b2`  
		Last Modified: Wed, 05 Aug 2026 01:47:46 GMT  
		Size: 69.9 MB (69945472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:703a0f672ca818fd5021bc48ef8892daec2091116f1aa6353452eea4fc6fe284`  
		Last Modified: Wed, 05 Aug 2026 01:47:44 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dad26f9febba0a96e1abf9ac7bb7bc0182dabfb2f450ab88262ae184997bc3`  
		Last Modified: Wed, 05 Aug 2026 01:47:44 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0e6a8c10cc374c6e292bdcaf6c865008ef221c97b35dad45bbec2c7f75ade76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5269254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452389f17bf1c30f53526a03f2af53d09ad6b62e16e54ac66eb84d92b88a5b29`

```dockerfile
```

-	Layers:
	-	`sha256:150f2740528c800d5433f1006d87605adec36784b82462121d9b8a660bc654a6`  
		Last Modified: Wed, 05 Aug 2026 01:47:44 GMT  
		Size: 5.3 MB (5253288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8f6f11f73a9102434255ead70675e66c83e492dd9d796fd432906ebb319419b`  
		Last Modified: Wed, 05 Aug 2026 01:47:44 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
