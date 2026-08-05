## `clojure:temurin-21-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:d078bdf7609d115a4b130c64232295d57b5e495174276ccdb23d59f471aa2aee
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

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d538606a8336d2f048e5689c147da68b96d16777b05631d7937957af28bdcb28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290017937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6810ebd6f328a5921f5e9572f4e38fb0b281a905be7e821914097094f049d000`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:23:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:23:18 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:23:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:23:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:23:33 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:23:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83557960b585920d3c0ef0643d5f0a890bdf5c260124650255f52093a6cecf6`  
		Last Modified: Wed, 05 Aug 2026 01:23:55 GMT  
		Size: 158.2 MB (158166900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fee610820b8810708986587e8d8044a802335ccdc13737e027b616b08db176a`  
		Last Modified: Wed, 05 Aug 2026 01:23:54 GMT  
		Size: 82.5 MB (82537686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1842aaf4ef6f6369d7025afe78fdb8b8c63842842fc343079e3c0deb886b2562`  
		Last Modified: Wed, 05 Aug 2026 01:23:50 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff37f0eac090b373accd972a2922708247faaacfb43f0460c7a976bf2696c2e2`  
		Last Modified: Wed, 05 Aug 2026 01:23:50 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:67a5070bc3f06b3d1058c6b59a73b7f04c8d34edf037360d779c4127ed5773a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:132a2eb2e268c89e9972f995ce7212fe5286a936e09f7cf1cf8f8bc133ab94ff`

```dockerfile
```

-	Layers:
	-	`sha256:060ef3687adf9cb9aaed6b749bf2e66cc11be2f97b9f5424ebf617f4f1b3debf`  
		Last Modified: Wed, 05 Aug 2026 01:23:51 GMT  
		Size: 7.5 MB (7470745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c9d5412e1faba0b88135769b7aa11651c5aa9bbc388f7b30473f1ca4911de57`  
		Last Modified: Wed, 05 Aug 2026 01:23:50 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:072f8438b9013332086becfbe24c44f571e2b09d1bd15daef845782a531ed77a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288495408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e145a50110d1d2bd4b3ab08d318e9b32106edcdad32a355e0033e4e5865b22c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:29:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:29:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:29:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:29:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:29:04 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:29:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:29:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb75c70debc7d9ed1cb1f90c01546023f16e7d67f99b355fc9570255c4b7ab8`  
		Last Modified: Wed, 05 Aug 2026 01:29:46 GMT  
		Size: 156.5 MB (156461250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d37d03d364a3e638002fa4baa4179654baf960427d1343d15cd8a436a5c201`  
		Last Modified: Wed, 05 Aug 2026 01:29:44 GMT  
		Size: 82.4 MB (82359272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52110f2d5cd954f3460a557f4b2a8922011265ca4019718b92b95b0bec4e7954`  
		Last Modified: Wed, 05 Aug 2026 01:29:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23be18df887699f5f48956167423bb87d262f1f2acc5a8eebcbf1b29c8cb4fb0`  
		Last Modified: Wed, 05 Aug 2026 01:29:41 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8ae43e5f76a5b3ce0dd20a3d8fd805d9a406524450b3b8a4bafdcbd8f1bf8402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e55b6b6dad3ea5a06d7da2064deef4cc689b98bf98ecfed5098192a377c050`

```dockerfile
```

-	Layers:
	-	`sha256:4de17f0ad350820f47168948e8d3d87f1ab09527f46ec74b30b3ce2ad302baa7`  
		Last Modified: Wed, 05 Aug 2026 01:29:41 GMT  
		Size: 7.5 MB (7477138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1493ffd78115533225734b7d992fdc8cf398d7b767ddd3a232e245b4e00b7477`  
		Last Modified: Wed, 05 Aug 2026 01:29:41 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:4b39756eeee7172435c00aed20c43ffccb3a9fa0163a67b5a53bf36d39e7ba12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299427364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07fd9ff6fa58bb699678f24c6b229d8b0175d1e4c067b9ee134d12f841e6ee6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:47:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:47:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:47:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:47:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:47:43 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:52:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:52:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:52:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:52:02 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:52:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c626bff995483821a9feddd77f9c5d47b8f37cd0e214f188c0e30a5d97e555`  
		Last Modified: Wed, 05 Aug 2026 07:51:10 GMT  
		Size: 158.3 MB (158343253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a028ce7dcadae1b6ddea5b86447bcbf325e66f525201eadb3dfa57fb05364b9c`  
		Last Modified: Wed, 05 Aug 2026 07:52:40 GMT  
		Size: 87.9 MB (87949465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d191ebcf31469d72f8d3d5dc72722c1f505ad700ca102da2ef27fe6c8ac4ea`  
		Last Modified: Wed, 05 Aug 2026 07:52:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5db378ea6350a7bb4119eac03675a2245acc0fc4c1f544ca4b5d1b447509c05`  
		Last Modified: Wed, 05 Aug 2026 07:52:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:42ccef8dfa657deeff0e2f2f85f6884e8fe252707d5c18ba72dd32653f9d9217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11731b7a88ac084a2ba05fee7725cdc904998032e8ac124cf9f0c9e98c525cdb`

```dockerfile
```

-	Layers:
	-	`sha256:67762abf5cfc879312ae468e0a52bd2e6d32dfa00750416058e60de33fa116d3`  
		Last Modified: Wed, 05 Aug 2026 07:52:38 GMT  
		Size: 7.5 MB (7475166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711ce519dfaf65862c3114c72d6bacc3e4426452b36cfd469b921453257bffd3`  
		Last Modified: Wed, 05 Aug 2026 07:52:37 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:caa82ad8b0bff9feb99fb9ac92577d2cfa6027a04a8ab06e2ac171e0fae8f101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280289324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b9fb272da6a65d776124f53998231800c97312fb8a816aa0bf40cb59666eb0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:48:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:48:07 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:48:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:48:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:48:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:48:55 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:48:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db00a13c62963253b62a9e4d5340036301bafd28f92718540e60edf3a7374aa7`  
		Last Modified: Wed, 05 Aug 2026 01:49:27 GMT  
		Size: 147.4 MB (147388336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aae52b50b1dc08600ff5facd1d7da01f769034af41b8019d7c20aaa7ac5a8e2`  
		Last Modified: Wed, 05 Aug 2026 01:49:26 GMT  
		Size: 83.5 MB (83518523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542038ab8d1c8f993c2ff0b1e95e5705306f8693b999f64d9545b0cd27ef617e`  
		Last Modified: Wed, 05 Aug 2026 01:49:23 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ba5a979ea853cdc1ee3eb55db0096883290039c11222ea145ac5ddbb218fa9`  
		Last Modified: Wed, 05 Aug 2026 01:49:23 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:90b06b52e53a7a81a4aa79094ba0bb856853a39ab0f72ccdf045e928e91bca40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ad276beb1afa5f7741999d49458569c75b9c50e0480da8d853bea68a038c17`

```dockerfile
```

-	Layers:
	-	`sha256:49a106e62d89f920b41b8e762ba6939271f9784d7d41666a206186123993bf00`  
		Last Modified: Wed, 05 Aug 2026 01:49:24 GMT  
		Size: 7.5 MB (7466667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ce4f7997d051c6b85553d5941b38acb4024cb93a5664e8a2569f7ad52cb7879`  
		Last Modified: Wed, 05 Aug 2026 01:49:23 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
