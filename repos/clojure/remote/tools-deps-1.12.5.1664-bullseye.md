## `clojure:tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:9877ed2ac4c1fa246c09761ab8319329f52c8f86299ffd8645a80e37d750dd59
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:b9fe810ba415e8363a42aaf2f7d61cc6340af5dd41109decb993e6ca4e06fbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212871022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a786811db5eb484242d553f786a73066305e08ec42af03175b84f4b6100b0fba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:24:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:24:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:24:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:24:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:24:33 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:24:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:24:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78cd6838da55b2c6239f7068a24715eea38362345ef02a396d65b6401685922e`  
		Last Modified: Wed, 05 Aug 2026 01:25:09 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9f071ce937525970be5dd29c092ec515db48b6cd339abc50a871dc39d34405`  
		Last Modified: Wed, 05 Aug 2026 01:25:09 GMT  
		Size: 66.5 MB (66518401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8497079c6381d920d6cd3799898c0907ebc57d227ff53a0138aaedb78240e10`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5984c31c708d967ae69f41ec62b716ff7e4fc413805394e9bc804ba9224e6d`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:2f6c66b8484862777f15ca88240bf13a62d1830d59576b5f5897c4097e9fbfbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ef2677f8deda66e5ced4268cfa944212c4ba9367364ef85e46fce1bcdd1d3e`

```dockerfile
```

-	Layers:
	-	`sha256:15e9e5bdb07be0d2694c838cf2e94815f757eece3ac7bb735ac9aca8ac3e04ce`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 7.4 MB (7373519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c923910a10e7d71b3f4b8ebdb1c0bdfd99db98c68832ace613a94494e22de374`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 16.6 KB (16600 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

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

### `clojure:tools-deps-1.12.5.1664-bullseye` - unknown; unknown

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
