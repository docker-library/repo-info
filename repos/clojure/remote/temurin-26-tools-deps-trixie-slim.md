## `clojure:temurin-26-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:67a47868851fb4a9993fc673a22570b53af6cf15c2973c9e04956d781492aee7
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

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2a7311cc42388cf4e4e1a56be3e0544cebb4a522e732d2fbe1acf73d1e258da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193277914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10e5fcbf0981abb5294e9cac3a554730291e7f58f144a2efc23659f4e741c336`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:24:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:24:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:24:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:24:28 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:24:28 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:24:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:24:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5989c0be6c2b945085959e030c6e13cb51005fd78d1918978415489059b6f53f`  
		Last Modified: Tue, 14 Jul 2026 02:25:06 GMT  
		Size: 94.5 MB (94524312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba7450dd8e070d1055b355ea5ca3fefbeea89eb0de4a5c872c7adf05abba822`  
		Last Modified: Tue, 14 Jul 2026 02:25:06 GMT  
		Size: 69.0 MB (68971656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40869c2a551995077de0e9556a37e4608250d7f55b1c947a2587194e9fe62180`  
		Last Modified: Tue, 14 Jul 2026 02:25:03 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c124710f65f9f55916e0451a002d3655e8cbbe7bcccc353e038635f99bad88d8`  
		Last Modified: Tue, 14 Jul 2026 02:25:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e319cde03e4c1bb1b112701c381eaf36a2649383c7712b80a2757e8b944171fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f14b505b8d4bebe241eded8aba8f2e290f351d9a856a817c9acd2b3542195d`

```dockerfile
```

-	Layers:
	-	`sha256:7492741d9a90ba4bd0887a5f2df1b6c56a990605b17cfe1f2f6d8e7ba81976bc`  
		Last Modified: Tue, 14 Jul 2026 02:25:03 GMT  
		Size: 5.2 MB (5222223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c34eebe5f03d95b573a8e3fe65a4a46c624b4be5bca9c178d50d04fdf8b4649d`  
		Last Modified: Tue, 14 Jul 2026 02:25:03 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c441ac7d9082724fe4ca9f23fc60bfd4d02327513385ee147b22b0c823af13de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192426952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddeb76e4c04ad2337f25e07a2f8e5261fdf69248a6cd5f2e70d2f3afcf54ec52`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:31:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:31:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:31:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:31:41 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:31:41 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:31:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:31:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1950717134f7ac7b287195ede8e9e908835fc7599b20c614e14dc778359e982f`  
		Last Modified: Tue, 14 Jul 2026 02:32:19 GMT  
		Size: 93.5 MB (93504359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d8af1629bd85f7f6cd124428bd9c016af15b7b7c7e1ceb9a4e580ed64a9c6d`  
		Last Modified: Tue, 14 Jul 2026 02:32:19 GMT  
		Size: 68.8 MB (68777847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8370dd1dfdfb26410e19ee1fedd8b340e17bed3e4d699787e4b8c2a197c72541`  
		Last Modified: Tue, 14 Jul 2026 02:32:16 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c176b91e921f62da546cfc88eb5dd233207a8af19d288716ac4582c3fab613`  
		Last Modified: Tue, 14 Jul 2026 02:32:16 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:603251e5a7c9a97bd088db978d0c1c18bb831ec595bb1ae6bef9e52196010644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23713139fb166278fd1c97ec8be73998e4625ca7dde33ea5fbeb4d4802f07b2a`

```dockerfile
```

-	Layers:
	-	`sha256:178f563ad6d8c97ab586c41cf8fd992515f0afb301d830d2c679d1793b023e7d`  
		Last Modified: Tue, 14 Jul 2026 02:32:16 GMT  
		Size: 5.2 MB (5227981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42144a940cb5067d9a4b768533a131ce4b72dfecf3b405b550dd66d6da9204b6`  
		Last Modified: Tue, 14 Jul 2026 02:32:16 GMT  
		Size: 16.1 KB (16075 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:34c603638afc5c6425686e89010dfd24b68e20d50e212ae0c6d4a07e31cd5bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201877572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b0556f997b964bed741052664c280c628eddf8567176015db4f200f4002b98`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 09:01:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 09:01:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 09:01:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 09:01:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 09:01:30 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 09:09:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 09:09:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 09:09:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 09:09:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 09:09:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8980bca7ba9ac6bb4ad45365069910379b0e7d1266fcffe9e82862dedb1ece02`  
		Last Modified: Tue, 14 Jul 2026 09:04:43 GMT  
		Size: 93.9 MB (93902045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c58c6f957e0d28a429f35dbdc9182139cc735127e693a3fb28ea5d06296e7e4`  
		Last Modified: Tue, 14 Jul 2026 09:10:19 GMT  
		Size: 74.4 MB (74373008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f231c9d2aedc73f8e16d67cba8d51ba67ae5adb3c4cd8e0b1cd60ed00af21e7`  
		Last Modified: Tue, 14 Jul 2026 09:10:17 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4802eb439faf5f000c036c0c87920873d5597be6ec25318a6a5a453af8746f`  
		Last Modified: Tue, 14 Jul 2026 09:10:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:493b53c4adae363cef91b10b16534fbe2f703ec26c9d7c8a271d27559d33be40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7bd07c752ec8f0fc4d1e3444ef6d4cf0594b94728af8f267f10302868831b9d`

```dockerfile
```

-	Layers:
	-	`sha256:9309db51c4ef11c60d4790ef99d31c59d209dd96a76e9ff0b5ba1b0206fb7212`  
		Last Modified: Tue, 14 Jul 2026 09:10:17 GMT  
		Size: 5.2 MB (5210530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ee9a1d830c3ed1e6af420a3da842ca681b6f050c4875fe34771c28b9ab437f6`  
		Last Modified: Tue, 14 Jul 2026 09:10:17 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:a774bb1cae142cbd41a840a1dac07d209bfd3d01bed90b29e48271a576735cd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190327648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50014ae87cb086d40fcecb864684eed189f195b48a0c02ec8c7eb101a884cc0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:36:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:36:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:36:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:36:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:36:53 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:39:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:39:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:39:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:39:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:39:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e0367fc09b2b72246f6a85ad69cf03e92183d02592df26b25b3a9d33008196`  
		Last Modified: Tue, 14 Jul 2026 04:38:30 GMT  
		Size: 90.5 MB (90536934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edccef8eb6ca0b05a8d2092a1611fc33b10b4b04d8bb4daf90e44d9468b71417`  
		Last Modified: Tue, 14 Jul 2026 04:39:25 GMT  
		Size: 69.9 MB (69943042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a5c4c78542495e141a467b9c04a2ef80171b7c1aae8eb8ec9cedf3d46156c6`  
		Last Modified: Tue, 14 Jul 2026 04:39:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42e70fe59bc277554ae817c3a6f8f307a9833c92e4b6f8ce20fadf153afd780`  
		Last Modified: Tue, 14 Jul 2026 04:39:24 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d7655ba49f9edc6188682382e479a8b47cf228a1f2ce3d4af9456cc89a5b2571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bcf352834a565fb9fd12b96ffb8ad3fb1a1cdeef12a940fe7fe058907a6cfcd`

```dockerfile
```

-	Layers:
	-	`sha256:8ae14db7c341da804e82cafa678b8ec17ae219d7579abc6176d9d46c71a15e26`  
		Last Modified: Tue, 14 Jul 2026 04:39:24 GMT  
		Size: 5.2 MB (5203333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12b19479bf6e3004c9fe62788d26eb4385ddd60fdd135efa7c80fdeb340c94d5`  
		Last Modified: Tue, 14 Jul 2026 04:39:24 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json
