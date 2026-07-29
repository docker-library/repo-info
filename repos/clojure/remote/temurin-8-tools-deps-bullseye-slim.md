## `clojure:temurin-8-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:117bb372718d33cfd86363edc1cbaef707e2f9fbd9a8f594e91d3074844b297e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:15fd00358cb817769f5dfacb1dfb4dca6b58bcbe979861b67a6d6c2311e44d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141565056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2a228566f792729260f9604eb46998eb84f15ddecaa1e6c98c90f8a437e23c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:53:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:53:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:53:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:53:49 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:53:49 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:54:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:54:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:54:01 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8868a8498305944c4a6317984b97add5d890ae59b0e7bee111c2d1f15c33d9`  
		Last Modified: Wed, 29 Jul 2026 17:54:15 GMT  
		Size: 55.2 MB (55198726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be2e472b6c9afe91585652ffe0dd6ca78507b6bfb736d4e1ad114ada9ec6914`  
		Last Modified: Wed, 29 Jul 2026 17:54:15 GMT  
		Size: 56.1 MB (56105929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be826a87196d185a1b35015d660b4be720dda79e1ded5bc9fd5162f0a1917f86`  
		Last Modified: Wed, 29 Jul 2026 17:54:13 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7dbb4d13d933c6986619422be47f4d6646d029c2af19616c0197e5b5a7bbe803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5452611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db17c67216a0cc7a06445413f251a94a37c15f6169dfcdd1d8c75600e149b2ac`

```dockerfile
```

-	Layers:
	-	`sha256:49a80cf3de9ccbae550ed9ea12a71483db3b30c8c0ec1886f34b3209bd673ffd`  
		Last Modified: Wed, 29 Jul 2026 17:54:13 GMT  
		Size: 5.4 MB (5438209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab82931e9176c6106d5cf823ff74d4a8ad4fd2251fb2fb41cb552b61c7ce00d4`  
		Last Modified: Wed, 29 Jul 2026 17:54:13 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:574f032ca81b69b0313786cc6c5372204c94c37e16647fe6771a0dc74dc24754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139298053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d950374f2670b76bf3f8277baec0d890b8f38354f7ea8e58c655d2accc550c3a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:02:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:02:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:02:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:02:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:02:03 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:02:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:02:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:02:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5840d6157b4c0f8ce23948bdfc307ac6ae08abad21fdec88028c64c25b7569ef`  
		Last Modified: Wed, 29 Jul 2026 18:02:32 GMT  
		Size: 54.3 MB (54272926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c0a778eae53ee588d4af8f28f5f64a7ee35f8297b4b5b33bccbfb8c69d74b2`  
		Last Modified: Wed, 29 Jul 2026 18:02:32 GMT  
		Size: 56.3 MB (56275501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1491e2488ccc56122b4109d725ef94a4e7a541bab2c32ae9bd348c6199bf5f`  
		Last Modified: Wed, 29 Jul 2026 18:02:30 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:698fe4bfbe3ebba4b8f5b9c007e3ec8afafe4bd1a355ec6709abc9a714a37078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb1dff261f73c08cbdfbb9cbbf8bd8826bb2e51415b82bf148d3de920738d04`

```dockerfile
```

-	Layers:
	-	`sha256:cd71d85f7374e602728b1a94dfd0a0d27908565c5beb1822807851677b0c8135`  
		Last Modified: Wed, 29 Jul 2026 18:02:30 GMT  
		Size: 5.4 MB (5444641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57c90a148c74b5a9e17206817bdff173983e4cbcef8872c88eacf98ba34aba60`  
		Last Modified: Wed, 29 Jul 2026 18:02:30 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
