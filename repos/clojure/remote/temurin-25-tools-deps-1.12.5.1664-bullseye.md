## `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:2ebccdc7d98882115c33015fc625c7f6d61d425b627cb62fe138e2cfe61d696e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:b5340be9dcf72e05f8cb01c2e6d6fdfac6781f54fbabacbb994593127ed7e94b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212870779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cdf0155ccbe09cf03fccbed1e5d1b6b6573485dee3f01c84936c199daaf8e5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:54:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:13 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:54:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:54:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9de3b81595e3fb8f41999ca61f482c0ca090547e0254841a94ee93819548848`  
		Last Modified: Tue, 04 Aug 2026 02:54:47 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f328265a69c2d0a520d66716e5309e2a66b59f29558884476b7b069633f27`  
		Last Modified: Tue, 04 Aug 2026 02:54:46 GMT  
		Size: 66.5 MB (66518599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992dc70f9e3f91d7cca3f7d408b990acc5f368a5328326316a91e0ec1b9ad199`  
		Last Modified: Tue, 04 Aug 2026 02:54:43 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a576da0a7b8fb61ac37f3605cdda3e192cad239e1ef831868e316a56ffea38`  
		Last Modified: Tue, 04 Aug 2026 02:54:44 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:6f6d362dc99c600d4043399d73273c0733bdc71561f83f1f4eb17f177be75af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc519051bf7c383836fec56423fc254ff6848ddec269b98e3f0580c4ef0e76`

```dockerfile
```

-	Layers:
	-	`sha256:106dc2cf68324349fa88c8e0b33c64f5360fde9fee3470e3a20a0a988b1567f1`  
		Last Modified: Tue, 04 Aug 2026 02:54:44 GMT  
		Size: 7.4 MB (7373519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:766f3004f27cf0a515fc89cbf19e02e75ea448f5c01d8f4044a7b2e3abc43b85`  
		Last Modified: Tue, 04 Aug 2026 02:54:43 GMT  
		Size: 16.6 KB (16601 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:888d57e33d40c9a9b076e50a5b5863bcda517e9c3df5f858c81264bb93b4de5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210489471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e2b9fe902771e0a95fd971d8cbe8efb4741a6dda5e3327116a0751f6d5a536`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:54:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:54:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:54:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db3448651a70d524005ff610e8fc66ce8f0f63d7be80375adae11122b61b955`  
		Last Modified: Tue, 04 Aug 2026 02:55:11 GMT  
		Size: 91.5 MB (91542253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733795345a25fa66c09e59eb341126519e593155ea7c09c56e34d5cd8fd7517a`  
		Last Modified: Tue, 04 Aug 2026 02:55:11 GMT  
		Size: 66.7 MB (66685287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795034250418decea0b93a31d9b7a37ee35e653a432a2a1360289f595dd9498f`  
		Last Modified: Tue, 04 Aug 2026 02:55:08 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea093f6489743f62d2423eb6a650897042e7ec003ef60aafb720dcb7c89ef8df`  
		Last Modified: Tue, 04 Aug 2026 02:55:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:5d0851215e2e96fa802a4469b30e32fbfe8645bbbcff65079bf2c5f736e00fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c14e6187a9d8a2429ea3734a2b74a7443bfe8ec37a4f35283c0ae010451c1a26`

```dockerfile
```

-	Layers:
	-	`sha256:638381d4ef2ff2ecc90d72e73eb4b9ea6928b4cdf5a29442bf0d58fdfe62c4c1`  
		Last Modified: Tue, 04 Aug 2026 02:55:08 GMT  
		Size: 7.4 MB (7378639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d47c801531df9fc0c8889435552fe9b60f4535b0ad18081eeec412fb504f0463`  
		Last Modified: Tue, 04 Aug 2026 02:55:08 GMT  
		Size: 16.7 KB (16742 bytes)  
		MIME: application/vnd.in-toto+json
