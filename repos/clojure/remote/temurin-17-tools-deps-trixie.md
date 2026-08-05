## `clojure:temurin-17-tools-deps-trixie`

```console
$ docker pull clojure@sha256:e583772d2edcd73344c8777868b2d34ba324cc2551446a199e2a7e999ea60755
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

### `clojure:temurin-17-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:09e958193628a24a78e48909df1544f2a32f272e50608d1e6328d5bf9a8596c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277757237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc382bdcaa263b97e4fb50bc696ac7cd48d11cbe9e9c53b5ab61aed5de5d911c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:21:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:21:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:21:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:21:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:21:38 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:21:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:21:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1287a4be8004ec405f91e110524e9ef41940ba3c13ae80911fd2b0fca24635`  
		Last Modified: Wed, 05 Aug 2026 01:22:23 GMT  
		Size: 145.9 MB (145905440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29d8ca8fa371aabd490ae121bb86238216626ce33508e30fb820994d91b0619`  
		Last Modified: Wed, 05 Aug 2026 01:22:22 GMT  
		Size: 82.5 MB (82538447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4daaa0d6c4ae5bb79b68d8509c071263ca52bdf80322ce764d09af47a0b2de63`  
		Last Modified: Wed, 05 Aug 2026 01:22:19 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab60ad398ca3fe8183e3cfec7e896c3c6bf57d4cf75b97eec04c1c302515e37`  
		Last Modified: Wed, 05 Aug 2026 01:22:19 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:675405c98c916e105084b3bd92aa6564dff2f7470b4f8cd678f4e3c71de2b72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7484799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4730bda4d61336ea8b5a13cc691521fc71bb0052fae7131bb9b115ea62efd7`

```dockerfile
```

-	Layers:
	-	`sha256:56309fa6c42de749dfd4e9cc6b1625c9dc18829bf9b8440e574da009ac2baa7a`  
		Last Modified: Wed, 05 Aug 2026 01:22:19 GMT  
		Size: 7.5 MB (7468893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3944ef5e88416acb09bd011491fc671385f886466cde07aa1b569d432384de6`  
		Last Modified: Wed, 05 Aug 2026 01:22:18 GMT  
		Size: 15.9 KB (15906 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fcabb453ce1f2708f23f1664045370fa570e11b546a79e7d9762e03b6b84cf34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276758100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e5ec8df457a3d032469a89bdd33a51494d25c05f4969140cc2717bbe476545`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:27:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:27:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:27:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:27:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:27:58 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:28:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:28:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:28:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:28:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:28:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa991556bfd1f17e52f2263825cecf49cf4efddb6b812b514aba16b0204a8323`  
		Last Modified: Wed, 05 Aug 2026 01:28:41 GMT  
		Size: 144.7 MB (144724300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82558b3b21d6668ab994d28d6b2b9fd199941f7e30ed18ee8f9920b6364aee70`  
		Last Modified: Wed, 05 Aug 2026 01:28:39 GMT  
		Size: 82.4 MB (82358914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a21f7f085158f82d407b98a216b45f607638f74c47fb4a51211ce1a7b80027`  
		Last Modified: Wed, 05 Aug 2026 01:28:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1707317e401b24019073fd9685250eb097ede4dac6ef5f4b83d67b2afd1a801`  
		Last Modified: Wed, 05 Aug 2026 01:28:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:95d66dc819d47a20b1be0650b2dd4fae13d55230637ed33071e01014e514f236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbf5c29993c4f193b6db2ec8586ab242604ca270d1ba6a9b5e483a15948ed744`

```dockerfile
```

-	Layers:
	-	`sha256:e85dc6e8223f6fee6f4eb43701489e3bb8625e34e591951335e712fda07cd5b1`  
		Last Modified: Wed, 05 Aug 2026 01:28:37 GMT  
		Size: 7.5 MB (7475286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:133c666488e74befd1efdbaf35580d1ee3eff13a64dda5690253a83406961ad6`  
		Last Modified: Wed, 05 Aug 2026 01:28:37 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:83c1631c26914dd71277ce1163c4887ef059bc7829b576be48be63f124f3310f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286850231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221c6fa999b9015f37d221a9e588d70970c1db20f28515870972f9f86529bd93`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:42:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:42:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:42:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:42:47 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:42:47 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:46:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:46:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:46:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:46:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:46:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec09b02bc18a2ef8dd9aee4c32be708f70921a9b5ece3219b28485e4156e6f4`  
		Last Modified: Wed, 05 Aug 2026 07:46:01 GMT  
		Size: 145.8 MB (145766127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d938c4f909490dada9180ab3a11f355990160033fbf400bac754c6295866d98b`  
		Last Modified: Wed, 05 Aug 2026 07:47:28 GMT  
		Size: 87.9 MB (87949459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6c957c7bb6cb6e29bc8131054868ddbd7f3f4df345a51e3f270ca956f913a4`  
		Last Modified: Wed, 05 Aug 2026 07:47:26 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0a1b44f9fbd2bf5cf3636d0f478e4ce3c7cd09eab06d72f60add5b9defb44f`  
		Last Modified: Wed, 05 Aug 2026 07:47:25 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:00fd32838ba3b003d8ee96cfad81f8aef9e23d0e265eeca75419f66898cb44df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac14bedf5117644c58760a8b0f4de80b0d11a9a93e6ebf0986303fbb2c02863`

```dockerfile
```

-	Layers:
	-	`sha256:43cea9b25a9c6a200075d12990af14ac3df6167ce9d2a26328478d4fd39fe956`  
		Last Modified: Wed, 05 Aug 2026 07:47:26 GMT  
		Size: 7.5 MB (7473314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb04543dafd8c482fa08e7d7b7db90c43fb5bbd376a7b46d638abb2b20a32963`  
		Last Modified: Wed, 05 Aug 2026 07:47:25 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:6802d563dc92c2fc24205b3f3d68271e20f662bba69eecdc15c8ea486a98550b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268811139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49fc68622a983e81ee310c2a4382f0fb2f778fbb13a1c1cc79d405ebb750e9b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:47:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:47:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:47:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:47:05 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:47:05 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:47:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:47:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:47:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:47:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:47:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe09bbca7209cd8bc7e45126305caa904e5b557cc719eb04ee86209ef81b7928`  
		Last Modified: Wed, 05 Aug 2026 01:47:54 GMT  
		Size: 135.9 MB (135910415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32347a8418f39d24682f619ac0d77a29bec504e6a450ae3ef0e3a8b2ed3b9121`  
		Last Modified: Wed, 05 Aug 2026 01:47:53 GMT  
		Size: 83.5 MB (83518264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5bd1a576200264ba2298034afdef5e324eb7a2144f53582b1863462c573a98a`  
		Last Modified: Wed, 05 Aug 2026 01:47:51 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651b53c6d8e196969d25cdf9224b7cbf2d2afbca015850f6c421258566f85b66`  
		Last Modified: Wed, 05 Aug 2026 01:47:51 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6ad61f0d21621622f5058bff31a87fd6ac8fc3e812b3bf587dded006e1a24cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7480723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5794f02a2b1cc9ef5e91b920603bb162ef112dda023c391b68636f4a11922042`

```dockerfile
```

-	Layers:
	-	`sha256:9c5ee10c5bae74d8d5b0215fb6cc77d846c88621d27878837fb478698e66334b`  
		Last Modified: Wed, 05 Aug 2026 01:47:52 GMT  
		Size: 7.5 MB (7464815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9851f60d03ecaa87a63f008522e3f06e85636de3a1442220e6faf07093a6c47f`  
		Last Modified: Wed, 05 Aug 2026 01:47:51 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
