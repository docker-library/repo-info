## `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:c81869f8b6a6c612dd8e52e91a49bf288dc4bebcae1d5469d3f2fb2a929d6ace
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

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f1cb08593d3ac65b6a69fbe40430b4f2bd6e14f63e59f3e5dfca2a80cd37acbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244631653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6813134ade6e9dc3930eaf7aa7e9b1fda6d99acf5b0862dbe2c7da5bc2372fb6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:43:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:43:31 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bbff2e55a1cae5cc680d96a9cffaae52b5cd8ce5afa6fb0acb209fec49aebfc`  
		Last Modified: Tue, 18 Aug 2026 20:44:12 GMT  
		Size: 145.9 MB (145884873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7888cdfefa9812f0831ebe04dd231f4fdee9825a01de0c15e2990b2d82f27eab`  
		Last Modified: Tue, 18 Aug 2026 20:44:11 GMT  
		Size: 69.0 MB (68965372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbf870144a159b77fad91ca719c0f01f76a4145e1289f78073658dcaca23c3a`  
		Last Modified: Tue, 18 Aug 2026 20:44:08 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:722b82c2571113306519e57a03ea7302b1f85a90eb57305a59c533a848536fa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dda96efdc05023169f95ee3d2fc48445649b3b21e5d56da5b22368c3ad9596e`

```dockerfile
```

-	Layers:
	-	`sha256:4c2c2749a7d2c25da2d266eebe81a8868dd0ca1a27c0e2586c697bee4696e806`  
		Last Modified: Tue, 18 Aug 2026 20:44:08 GMT  
		Size: 5.3 MB (5276880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16085dea8da2d8aa92c410a25baf0acdf2806279d501f2e1e6deb3ffe906580a`  
		Last Modified: Tue, 18 Aug 2026 20:44:08 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c6d35ee222075c2e49eaa08e06c66d49ac68be4e3a0b637a6de6ac48a5eca21e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241512264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a17ffeb8c947122818d6f130b4ce8386176e7147cd3abf96c9fdf9e3e6e1f5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:43:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:43:31 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c21cd3c64d830701984a3feb3e497c5326b3975c2d4c21bb54530eb0b459d5`  
		Last Modified: Tue, 18 Aug 2026 20:44:11 GMT  
		Size: 142.6 MB (142582128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169b069a56168ae618056cbb1aaa9db1e09b318c1c2b8339e1ce2a3dac13f253`  
		Last Modified: Tue, 18 Aug 2026 20:44:09 GMT  
		Size: 68.8 MB (68785881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9d6ed0dc1d53de60983fa8dfa3f519833d93bf8736f3c4fb3eea0218eb94ca`  
		Last Modified: Tue, 18 Aug 2026 20:44:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9c03a7dd1df862a582e6f2199d0885149119a4d26d74754865c920642f4eca07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faf728cefe6aad47ac13c71ba05fcdf674addfe27fb834feac238e26db3e6e8`

```dockerfile
```

-	Layers:
	-	`sha256:69ce07ece1ef9cd5ef77c3ea4f1282348bb49c899d6979dc765231bed11b3657`  
		Last Modified: Tue, 18 Aug 2026 20:44:06 GMT  
		Size: 5.3 MB (5283259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d24f3e62ab410af4fbbbb1e06cc826b8f08a46b20710092f825f532d8922874`  
		Last Modified: Tue, 18 Aug 2026 20:44:06 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9d383c62d87f40ae8a9b6dfae6c76589a9bfa146b20eb28f455e2ccad7de9931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241087117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b705f2327e918de529a19b45ec9f6174a591e13a5986cb85a9c2a363bd18768`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:38:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:38:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:38:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:38:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:38:55 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:42:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:42:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:42:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f1fa50994192341729fa2a84fe83ea806e228e6161f7355a8cce95ef6641bf`  
		Last Modified: Wed, 05 Aug 2026 07:41:55 GMT  
		Size: 133.1 MB (133109642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad552c5b9023ff7817f0061b82b59aad770f9bc46b5a14e99fd24fc4641c3c7`  
		Last Modified: Wed, 05 Aug 2026 07:43:22 GMT  
		Size: 74.4 MB (74375487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d85416eb36ed7e8ed1e1340af0d0f24b456323bffd6d51e57805784a69712f`  
		Last Modified: Wed, 05 Aug 2026 07:43:20 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a9aace4bb585462d71b06e7fc45fc50a8455d97af1bdc56f50ce34ae89d83794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d00153237b61b9bb6354180e762c00cbb9070df620fb41782b9fb4209424e25`

```dockerfile
```

-	Layers:
	-	`sha256:5349262db7240ffd5298315a8ba74d0aca6ce9d5146d6e58aec54fa7c6d488fa`  
		Last Modified: Wed, 05 Aug 2026 07:43:20 GMT  
		Size: 5.3 MB (5280636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:622546e71540888c443f69f2c93f76c2f19a2eafe9f6ead478712b738bca4c72`  
		Last Modified: Wed, 05 Aug 2026 07:43:20 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:83a128f30701ed41bb8889647ced294891fa3b7c68f245f2ffd5c947a4c377bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226445042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8a3f6b358aa3993c66928af938d0af3b66aa647fd730a579182ca77891f601`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:31:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:31:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:31:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:31:39 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:31:39 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:33:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:33:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:33:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76aaf21df62edd44880e0f4e9a7a6244817ac5c24694e764a0d7d3794f02ddc`  
		Last Modified: Tue, 18 Aug 2026 20:33:31 GMT  
		Size: 126.7 MB (126652477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e7f0b80ce53920fb206286d95cf422e543b883d0ae33c3b636afd94b6cc0bb`  
		Last Modified: Tue, 18 Aug 2026 20:33:41 GMT  
		Size: 69.9 MB (69945346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775c3d7c1a2ad40b576c80b5694a4f08a00e445da4ea25b250a34dfb101a0d3f`  
		Last Modified: Tue, 18 Aug 2026 20:33:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d74d742e2f39706999689e12adae82b35f3d628e904bc9ab3e2bf13c6f8a9b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4233661386df9a035e69e4e07c9885042e20472c68f4ad0f0f3eed432acbb7a8`

```dockerfile
```

-	Layers:
	-	`sha256:b7eb28cee41a593c45655bc89a51a8c8a050ef24ddefbe99014c0a694786cc98`  
		Last Modified: Tue, 18 Aug 2026 20:33:40 GMT  
		Size: 5.3 MB (5272808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:420cc1eaa6588defc6482c0cd8627a4b89bf9da808485f14eef4c6216e71cfc4`  
		Last Modified: Tue, 18 Aug 2026 20:33:39 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json
