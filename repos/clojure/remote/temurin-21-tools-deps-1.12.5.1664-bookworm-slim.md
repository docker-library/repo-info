## `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:b48c494575d014c27834dfe88d271063dfbd6b47b00cfe7744a4f3d8dad7fcae
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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:79683046d44961b5b01cd06ac07626708d6f6a198f1a3d31211f0d78e04b4df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253057880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f0f0d1b0e5a4ef82838474f6ebc757254983e8247bc7660eac2afa2be20c01e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:56:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:56:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:56:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:56:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:27 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:56:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:56:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf8ad058f793adbfab776882c958eb8a7519b2ed45eabe6de7968b3157bdde5`  
		Last Modified: Wed, 29 Jul 2026 17:57:05 GMT  
		Size: 158.2 MB (158166925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7feb8a3e13a7cf678f0189eba7775f56a6f108d467064809a30a88f8148c92ed`  
		Last Modified: Wed, 29 Jul 2026 17:57:03 GMT  
		Size: 66.7 MB (66657269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f91f43ae4b18cd06f846bd07f348f1bc131dde85cde0cf882f406916e4a93ec`  
		Last Modified: Wed, 29 Jul 2026 17:57:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e50d312f837700bf19792359a9bcb0155ca5bbb35b70a6b87a0a1afd8cefe41`  
		Last Modified: Wed, 29 Jul 2026 17:57:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:60d20afc3c9f504cd5be97868f07f9f5eebb6194388436f59a05a9b6cef04eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5131877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8aa0df7059e104ac5e2da83250b9deb1f3e846c6927c2340cfe54eae5ace9d4`

```dockerfile
```

-	Layers:
	-	`sha256:c4397778c38ccf67dde661318abc1dcad409689f30d2c9301ec9610657648bf5`  
		Last Modified: Wed, 29 Jul 2026 17:57:00 GMT  
		Size: 5.1 MB (5115887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1872ec499d3c9ac4de8f920b978c795d696f7937d65a33c80c20db460e204864`  
		Last Modified: Wed, 29 Jul 2026 17:57:00 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:93214d7a26fefdb25a32620e27d011b26d50be68ea897f0a8dddd411f61a3474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251227892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239a0e832bb43c9e241e9ae6b384e7b3b93371ea172adbd608a80d9f9894daaf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:05:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:05:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:05:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:05:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:05:07 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:05:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4301c1fe907baf297bcac830ad89204748465731a206ee594ca7b86f9ecb3c13`  
		Last Modified: Wed, 29 Jul 2026 18:05:45 GMT  
		Size: 156.5 MB (156461262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e28e12ed6cc5783a50f5625dfe38a66b6f966b335fe8e0fb679ffd1039a9826`  
		Last Modified: Wed, 29 Jul 2026 18:05:43 GMT  
		Size: 66.6 MB (66648335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7558238f02b2e28523736b07580e2cff400ed93bc65d38485fbb7fc52ecb19`  
		Last Modified: Wed, 29 Jul 2026 18:05:40 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f740ebf0a51ed7a1d60ed1fa8b5123c28ecd8641990d31ab664e4a685051bf3`  
		Last Modified: Wed, 29 Jul 2026 18:05:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1e7e7d3dadb128ec64516df962652438c8a24328a34275cce49973340168586b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a02b0ea6a726cf3f58bcb291cc5f7048f497cb3caa4233b3543f783bda8852e`

```dockerfile
```

-	Layers:
	-	`sha256:dc910a92e8aa5a874cb2f166a92a4e2587980d1bfdd379ed960452139f8a85b0`  
		Last Modified: Wed, 29 Jul 2026 18:05:40 GMT  
		Size: 5.1 MB (5121648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a82be39fa99a06a608059e3ad8044389a8ab49bc30ef1bf5dab83a16e47f1966`  
		Last Modified: Wed, 29 Jul 2026 18:05:40 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:88049e131f94c1ea1a157f4e91dc7f091e95633a02e9a2af9e5fcdaf5bcba2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262907391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6395534d6536a9fba187084c904ab2d51013f200757faab59ed63ba1a40e8ac3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:06:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:07:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:07:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:07:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:07:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:07:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ded0617a63b7f6b4c9d5392e7ef958bfd86290adb20bb7270e2f90faf26603`  
		Last Modified: Wed, 29 Jul 2026 18:07:46 GMT  
		Size: 158.3 MB (158343252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1274443b5250c08a06f03f87309bec72f72cc75af7f0a3efffa91062d65f62a7`  
		Last Modified: Wed, 29 Jul 2026 18:07:45 GMT  
		Size: 72.5 MB (72486681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2fc57edeb44b0157f9ff51ef827d1fe5c9dc1ff78fd9099e24015a8175ee30`  
		Last Modified: Wed, 29 Jul 2026 18:07:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632c54d8b24ec6cf3c1162f54497b16b82bb87b33ca2da7fabbd0dfdd55f7b02`  
		Last Modified: Wed, 29 Jul 2026 18:07:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e060ea5288098ccc9c1008f38ad05b7de6196a583b04f2d5096a16385728b757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ea726af2d0ffd40faf784a55ef9c81c8c85a1dc0eb3b20a5fd204aebe2cb79`

```dockerfile
```

-	Layers:
	-	`sha256:8df10ae6d963a3281ba42ec1eb2b4de7afa93160e9241123984ef73c74a0e0f0`  
		Last Modified: Wed, 29 Jul 2026 18:07:42 GMT  
		Size: 5.1 MB (5121045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:845aef1d76313c69c7e0d3255bccd77d1bd72e6f53727bc8a2bbeea9152f5cb4`  
		Last Modified: Wed, 29 Jul 2026 18:07:41 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:af5d919fd760cbd87e89de4c69fc0977fb9933327b7cda7cad6d6aa978fb28e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239733673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0633d115c3de14687660c48c6b02830ff1178d6b69affe1d0258fd8f46ba66`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:21:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:21:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:21:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:21:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:21:01 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:21:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:21:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:21:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:21:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:21:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fcbf2d2bd0e69225e4714672c30affabd9d69df5d2e5b11b16fcfeff86936f1`  
		Last Modified: Wed, 29 Jul 2026 18:21:55 GMT  
		Size: 147.4 MB (147388387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595f2fcc89b639701213c14765b00c5696f9cdb8c928a72c79dfefc66badce7d`  
		Last Modified: Wed, 29 Jul 2026 18:21:54 GMT  
		Size: 65.5 MB (65455977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8caaeb9eef2f1941f3e3d3bd782564b1a8816e3772a3fa9f00b295870ce7283a`  
		Last Modified: Wed, 29 Jul 2026 18:21:52 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bc88842bed15ddedc16c84bf6b779edf2ef916ed1b0c92e5b69aeac397d287`  
		Last Modified: Wed, 29 Jul 2026 18:21:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a4f7eb3a1d14a6b1d7bec6fa18b1e0395d7695e8c7502f7819747bf515a7adb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd751985543f488785f7f97d3bf71cc0fcd4e9b0e7de05d5c7abbba86273fd9d`

```dockerfile
```

-	Layers:
	-	`sha256:703fb6b2f0c868461fad650e19dac926d1feb19e90a794c0df9dfb3aa1e5693e`  
		Last Modified: Wed, 29 Jul 2026 18:21:52 GMT  
		Size: 5.1 MB (5107208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a8d209df64b8def193b5c2aae567e9cb10985abba7a3f7c405d67102c8e3529`  
		Last Modified: Wed, 29 Jul 2026 18:21:52 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
