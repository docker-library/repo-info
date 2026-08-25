## `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:99aef3793ea7213ca04e319eff014e7d1dbe3e6c0514166e527e0d6a4bf915bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:171b22ab8f409278844eed74ad5eb8db391022af3b4f81e9f6317b4e7e9ce2f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180938990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d652fd57400324de5f6324d2c3dac632aeebd9268bca5d30f5a3e206e1bae186`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:33:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:33:24 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237f59037d3c6c8dec15445acd8b9b90807cf631bf4d23eac527bfa4cdeef5a8`  
		Last Modified: Tue, 25 Aug 2026 01:33:59 GMT  
		Size: 94.6 MB (94563753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e696bfe754dbcfe12fac0298051c93998a9d8fdf94e33ffb95c93d9c531c8cbe`  
		Last Modified: Tue, 25 Aug 2026 01:33:57 GMT  
		Size: 56.1 MB (56114467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d71c974e5d974e010d0d5b007c39d832f8ae6343af1587b1e1f55644f34197a`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891da2ab14ebf697a1332eb5ac1cda0b13608c89bd6525f2dd76d5a63c722b29`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aaf5e46c08396c3a298aebb09cf067af1c64a509b76fc2ed8761aac40b099089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07748edb3ab6b4107dcfb54876aa46ceabc0180514cf9c98d9b9cbb5d513c6d7`

```dockerfile
```

-	Layers:
	-	`sha256:d958b52c74de6f74261141d5d65a32d2f7d63cc01543687c7ef6cce87c91f0b7`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 5.3 MB (5287945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bbe7828b114535e641dc1b704c015e5f11ca2ed8a1464315082166dc28947d7`  
		Last Modified: Tue, 25 Aug 2026 01:33:55 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f21db6d5bfc21e78ca197032e9cd77e25f2bcb08c0361cb076a88e38a5783708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178572797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd55661f4ab955e57e21d00924256e0d2135932e3b9c3aed37d8ffee0b7f4ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:13:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:13:32 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:13:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:13:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348358364eba57307264c581aadfe15a6bd7bea9905b9781734d8101c920b9d4`  
		Last Modified: Fri, 21 Aug 2026 19:14:08 GMT  
		Size: 93.5 MB (93541563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631f7733b34f789aec98ee68aec99ff6e155bca86defd3e9fc838c7682d7c286`  
		Last Modified: Fri, 21 Aug 2026 19:14:07 GMT  
		Size: 56.3 MB (56281288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ca57ec2914246d09692e2f40a9d7182ac3d655b28e3865cbbd588e74310760`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b75c6b30e338c789c6cbd9c805528863ec3ef5561f719533232917ea7d90e2`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0b1667e870a4c0ea010b7fe93223c7ead9a319b752779b4513b563330ae93f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5309774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:889ba94c805110841fbf1e73369ab923d40a87be3d17571f4693ec77ec83ddf9`

```dockerfile
```

-	Layers:
	-	`sha256:310cf8fbbc6396a532f337d9e5cb0b84a9b446e7eeb35b005c31c3be0a64bf90`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 5.3 MB (5293674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60ee344250296606ec69d1bd7b8bc09ac7b2cc9860b80b5c35c76742c0352226`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 16.1 KB (16100 bytes)  
		MIME: application/vnd.in-toto+json
