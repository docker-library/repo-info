## `clojure:temurin-25-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:d794fd07c121ebf0d28cbc87fe4150f680be2ee8fe9262b5dc21d12f1072d611
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

### `clojure:temurin-25-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:79f19e75c1f444d94770535af6045a570503964466158bf5892fe47a1fc4fc13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219236556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db06dfadd3dfec1cf04e72fbc3a1ac4fae6d7e819ac0f933296156cfac8f053`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:48:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:48:17 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:48:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:48:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:48:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:48:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e85472b312b28120420db09773a0670410f51892274c8d52fd0e63817b7151`  
		Last Modified: Tue, 18 Aug 2026 20:48:56 GMT  
		Size: 92.6 MB (92574587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae4b1fcbaf14fb283525d5805e26f5f3144de97212d2b412a970ed709ac389f`  
		Last Modified: Tue, 18 Aug 2026 20:48:55 GMT  
		Size: 78.2 MB (78163838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dabb0be7bd5ee8c5a836b4df45fa6944412921192a849e5d1cfb2c33a36ad`  
		Last Modified: Tue, 18 Aug 2026 20:48:52 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b404fe35bf6822b7f887f029483d4b24f6d4b8efaaa175d83857edbd88b8b102`  
		Last Modified: Tue, 18 Aug 2026 20:48:52 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:949042e3d7fdb698ff299656e7484e32ec44c33a229c5c900a9863780a7d238b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1c9c5542e06562ca30415561548a365a2714a94779ce502d951985a9d9a64c`

```dockerfile
```

-	Layers:
	-	`sha256:a147d0adf9f8ed49532ba817990cc638c94c1173b62c60cbe2489c45088adc11`  
		Last Modified: Tue, 18 Aug 2026 20:48:53 GMT  
		Size: 7.4 MB (7350767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a22bdfcb296a1d6d45854272c10b82808fcdc367a2aae66280ca9d580b60e910`  
		Last Modified: Tue, 18 Aug 2026 20:48:52 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6f8a0f09dc87732ba5fc175b094a2291476f4b34177fe1cce18bf595afa23744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218072930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a212f98d5b3b0f10ef345d68d160544cb20939f20789991690b1020070772f5a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:48:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:48:21 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:48:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:48:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:48:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:48:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f8953ced3c128970bac4becbc6751fe405c528ed17c3807dbd889878d030c5`  
		Last Modified: Tue, 18 Aug 2026 20:48:58 GMT  
		Size: 91.5 MB (91542296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5341c47364f4eeb4384286531492e2d5218f95631c98ba893871c4e8055e8070`  
		Last Modified: Tue, 18 Aug 2026 20:48:58 GMT  
		Size: 78.1 MB (78146216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486bc8714ade278e6531ac9ce2a33b26413e9d09b4d8cb2b51252961df1ee0aa`  
		Last Modified: Tue, 18 Aug 2026 20:48:55 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c293085cff0909b734489ef8bb1d2581ca986ff9f9786d95cf4932a1bfe04`  
		Last Modified: Tue, 18 Aug 2026 20:48:55 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:940763bd4ff3f84797f97f47c72269ef5a5e59e48c43ab6bfeeee55f9a2b7512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7374714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407e5fd571b6111a7e9973be4b5edde507cd3de634568da8b31c27b86573abc2`

```dockerfile
```

-	Layers:
	-	`sha256:93590ea7a68e5f06f068e7a7fa197435dace39e22332555bf0723e23c02c7ed6`  
		Last Modified: Tue, 18 Aug 2026 20:48:55 GMT  
		Size: 7.4 MB (7356599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1c13bded16de850b97a23d8270ea39e1ffdeaa647f2370c9d5db36cc3df904e`  
		Last Modified: Tue, 18 Aug 2026 20:48:55 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:aa168677b12b64bd8f6ace6942dc47fc7ce3c02cea2a2f0c6b2d8af3745a7a33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228230324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11340d1ed8892c8fc2d504f9afe43319eecc5f07c83d565ab60416f5dfac35b5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:20:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:20:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:20:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:20:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:20:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:41:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:41:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:41:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:41:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:41:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49264167cb87dad9e24e124b14d9805f39b865f49947d09178cf7347263f11e`  
		Last Modified: Wed, 05 Aug 2026 03:24:12 GMT  
		Size: 91.9 MB (91914039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5646d2aaf39164b12bc8d0370c630b1d41b3637d7490226a50f6113e8b30998`  
		Last Modified: Wed, 05 Aug 2026 03:41:59 GMT  
		Size: 84.0 MB (83973769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0163b08d49e1a61128a373992b647189e3c954fbab5b5b99b88f27779d23889f`  
		Last Modified: Wed, 05 Aug 2026 03:41:56 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3030187d23b32cf51ab52616b0058756c8e541926068fdb998bd6f0e08895bd4`  
		Last Modified: Wed, 05 Aug 2026 03:41:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2432769edbbb99e89c908a88a720d9802e1d0081d208c9c66bf2374389c8a0ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a79a190b2a31f22b2a3d75c106626acfe4218515e13106f81e8c2fbe7475fdd8`

```dockerfile
```

-	Layers:
	-	`sha256:312f56320c449fa18985fb4362df290ca2e81b7ddbe81e86c8a3c4d58b997b11`  
		Last Modified: Wed, 05 Aug 2026 03:41:57 GMT  
		Size: 7.3 MB (7334128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9211ca51831b3e30f1386dbff686d31a48ad76e2f729ad365b084c3f07ded6f`  
		Last Modified: Wed, 05 Aug 2026 03:41:56 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:f9d3b535243d0ee16847031847c19e4899582e4c3c6e711b0ac878bd36592051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212514659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa7e792368441da2e8d542e2bc6d53aa0cfc3e7cfb6ec47bef2921f6fc0ca2c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:03:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:03:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e56f29808cdae0b0ae79a057631e06d5ee2175c9d7e6333974220725c749743`  
		Last Modified: Tue, 04 Aug 2026 03:03:10 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b25c221f4c7edbb89e565552871fb14ab7a518d9c601424eecd608881860a286`  
		Last Modified: Tue, 04 Aug 2026 03:04:12 GMT  
		Size: 76.9 MB (76935952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46b0c2a2840370faf5461d2d14f1fddc703ebda85f0ce2f5d8c1abef8162824`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ddc039332eb4fec26467a37ca7fe0761a8a5e049a6d94787a9c29b4c8a7504`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fb84fc442117f78175d6ad3c1329ba42df5b93d0c990cdc4c56cf9310471af77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7338417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181381876d20d723d44d1433eaa2e4012173d78b27da7c951e0fb3c1fcd2dd62`

```dockerfile
```

-	Layers:
	-	`sha256:91122bd04fed31a28dccbe6ac1d4689279205ad41b50864298fac5701878d151`  
		Last Modified: Tue, 04 Aug 2026 03:04:11 GMT  
		Size: 7.3 MB (7321445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ce8f334aac2e6eb3c2f35c9606bd554112380c92122972229c20ac34fa4344f`  
		Last Modified: Tue, 04 Aug 2026 03:04:10 GMT  
		Size: 17.0 KB (16972 bytes)  
		MIME: application/vnd.in-toto+json
