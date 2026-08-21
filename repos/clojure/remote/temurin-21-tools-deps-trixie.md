## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:b5888877eaf4576db79439f2316018ab9a2ffa068014f12236a1477bb9a36338
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

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:2c352b8e5862aeb3ea8a2aa57a01ad5413698e019a969a18c5e14388b6e518fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (289972586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1724d6f4c41290897a42d98328872c81fca77d33e39e73804aae6130c7ac00f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:19:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:19:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:19:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:19:06 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:19:06 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:19:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:19:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:19:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:19:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:19:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16dffb8a7ce833526640c2c42f6095da6066479c92eaac3a0a8c02987f6351db`  
		Last Modified: Fri, 21 Aug 2026 19:19:46 GMT  
		Size: 158.1 MB (158120299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484536c506692aed94561322323b8ce1f4ced05185c43ced7c4005babe49b829`  
		Last Modified: Fri, 21 Aug 2026 19:19:44 GMT  
		Size: 82.5 MB (82538931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f1233e9b75e3bd84f704d7405dd873bfa4b2ed18a38f3a3e4803004fdce0e6`  
		Last Modified: Fri, 21 Aug 2026 19:19:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08990b8b2fb067a1c8d6edd3287a28d568930ae4e7d7a1d2253b3c791ce80e3d`  
		Last Modified: Fri, 21 Aug 2026 19:19:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a64cec2d50e606a05ed4876d56b5d67e42d91841c2e17e03558b866102dcd0f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e1b571a32360a4fb936ec225e5365e1bb78b5f35e9625d02b34b6e0ba1cb6d`

```dockerfile
```

-	Layers:
	-	`sha256:ed9ca292694ee5e0d1498df943acd56ee578bde73520866b8f7346f62ea5d78e`  
		Last Modified: Fri, 21 Aug 2026 19:19:41 GMT  
		Size: 7.5 MB (7470743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ded9b78a3bcd2845ca4cc653903774f2e44487407a2348efa2cd4561ec3431a7`  
		Last Modified: Fri, 21 Aug 2026 19:19:41 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7ed167af0e7b15b88d7247dccb953119903fddc4dd8d04aecebe3b54b07410db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288435978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837f1c23034009f055552faee854bf8e6fe7f294cdfbac52f0426e1f09963a02`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:07:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:07:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:07:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:07:14 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:07:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:07:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:07:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:07:33 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:07:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec1c06f51763207dd4688dd0495d7dd2aeb66d14437fe9ee47e34a76489f505`  
		Last Modified: Fri, 21 Aug 2026 19:08:02 GMT  
		Size: 156.4 MB (156401969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841762bc6728c68ca1f77a03700b7981c8e42f82d46be8f4e5096ce15afacb15`  
		Last Modified: Fri, 21 Aug 2026 19:08:00 GMT  
		Size: 82.4 MB (82359122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b8d17a910a5cc24596b2beec9a42023accf32575f278f9390f764dc1d11bde`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb99b967ad5564603e167ead6ab5aaff84def4bdbf189b46dc7592475d4ba877`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6e139b6f881b9d19f41862269353b7ef1213da245b47b497d16dbf5328e552b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47a97bcf5016578d0d9d2fd79eafb7451f125d5c7f79f4b8dc2ffc7092d1a31`

```dockerfile
```

-	Layers:
	-	`sha256:5e7cf7fa13d91ade852aaa7664f16e06c8df6384afa3eadd317c6fde242a2020`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 7.5 MB (7477136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6841e475b5069f221bfa8d729965328b516452073c327a520333cff8e8eacc9`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 16.0 KB (16025 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:4786d9da48ce102ab6e258fb4913758409cb379a5c476c75c5c09296b8f76e02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299428561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4d4f8c5820107fe7a1e9e5a2d39a9ec9f6a1c5dd704cf15de670e089f40e5f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:21:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:21:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:21:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:21:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:21:15 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:28:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:28:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:28:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:28:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:28:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4bdd65664cd71d6af78f3ae6966803e327609aa504e54f5e11b02407b367944`  
		Last Modified: Thu, 20 Aug 2026 01:25:01 GMT  
		Size: 158.3 MB (158343275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adfb4297cd1486ba6ab8eff0c8e297aa811c539e14e2454c9c955302bfc0939`  
		Last Modified: Thu, 20 Aug 2026 01:29:22 GMT  
		Size: 88.0 MB (87950641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60fda045336a754c5a2c4984a62a2c4485439ab021b9f884fc7a766030699f17`  
		Last Modified: Thu, 20 Aug 2026 01:29:20 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e200562ceb802d66dd5ee1d6f173179ddd9e29e696db02d44c066d3b4af576`  
		Last Modified: Thu, 20 Aug 2026 01:29:20 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d2baab7e0659a63902d3d298784c365e8dcd815aa62a94cfd733c9a910b749db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4da437d4a092d545d5b6ec952876282506816c7be3d4965102c8b65b411cf20`

```dockerfile
```

-	Layers:
	-	`sha256:6fac2234547295be17e3a0d257a67d18a414930f3e3b1536dccce0f21fa583d2`  
		Last Modified: Thu, 20 Aug 2026 01:29:20 GMT  
		Size: 7.5 MB (7475166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de9762640921ba5b2f7209335906e64d40d487c166d768d98df81b1081fe5224`  
		Last Modified: Thu, 20 Aug 2026 01:29:20 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:21e9917dcd96ba0ca0e5219e597957261690c8bb283fa64f3c39dbf425b4cbf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280249895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cc9b5f5fc474a4fb27c9fb5c321ec4676b7a689f71ee9effe8f020ea0cff86`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:10:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:10:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:10:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:10:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:10:31 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:10:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:10:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:10:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:10:47 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:10:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2fd7815c81a66fe13ea80f78f3a87b58312e175ef2c9e7b26ac2fe161c5452`  
		Last Modified: Fri, 21 Aug 2026 19:11:16 GMT  
		Size: 147.3 MB (147347790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b060718109a47407126e93d3394d19f18e87f3d1314aafd828683ec455af8a`  
		Last Modified: Fri, 21 Aug 2026 19:11:18 GMT  
		Size: 83.5 MB (83519641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e3bec6485e1a07dbfced4b33ff0ca4ee316b36a6412682d0b1368a7938b03f`  
		Last Modified: Fri, 21 Aug 2026 19:11:13 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de1c9f358c4a8f29b658aefe1f6e224859e04dd5a460a58d1ce3a9d5d061d978`  
		Last Modified: Fri, 21 Aug 2026 19:11:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6afdac1c63be15060092e6e45208f1c9b10fc3853a367ec616efc22643137f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bca3792c27cec6cd49b98fd5aeb8d18731e3721ad6601905cb0d816b0e87947`

```dockerfile
```

-	Layers:
	-	`sha256:9a6dbda999b6a4bef58031b99dae5ddc5d3f154d482e56aee4dfe8670976af98`  
		Last Modified: Fri, 21 Aug 2026 19:11:16 GMT  
		Size: 7.5 MB (7466665 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f10f68120f4483bb55571fc2b5bbd6469f3cebd68aa8f28c36e704f9057e9d0c`  
		Last Modified: Fri, 21 Aug 2026 19:11:16 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
