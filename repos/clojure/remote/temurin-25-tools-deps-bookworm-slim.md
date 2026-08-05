## `clojure:temurin-25-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:79ea6de19fcd3b1514f4d819c712eb0dfa0b678eeacff1903c631964f6980289
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

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c6c76f4566be5a718dc331fb3fdedab9d5c65132c635001ae2a9f6d1e12a7fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187465346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7944f199040e168ee57cb26f70ee29d9f16ded3acb394928360254fe4ef40b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:24:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:24:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:24:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:24:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:24:30 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:24:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:24:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5ed41ca3554c0d79c0e6b35677f95cc5ba7ee1280845acb4d1fa5cc35c8d46`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8be73d2ccfeb8eb77dae9a0311a9368d2a6f1abe3a7e17a01920bb6666fbca9`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 66.7 MB (66657151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83bfff7299e92fb5f004bab5c9a9a08ed619014b09e4e3b0d26131ed4420cf1f`  
		Last Modified: Wed, 05 Aug 2026 01:25:03 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908a63dbbdb462856abdb4da24d9db964257cdc137854a974923877a5226d2dc`  
		Last Modified: Wed, 05 Aug 2026 01:25:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e686e8d40467191cf183f496ebb5c2bce82db4979fcdd93cbdbfdd22ee0eb751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e3a966a8ddc1e5c7061e8e41d81b22c0ac2629ceec283cf910ae103dfeefd6`

```dockerfile
```

-	Layers:
	-	`sha256:6a317a25e7e00f66b3335d62909c56b04a00a4fe3a411620b28a12441b7ccabf`  
		Last Modified: Wed, 05 Aug 2026 01:25:04 GMT  
		Size: 5.1 MB (5082125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56470e1e637b0f06b14d89d6a668db4327177db9549046777c98a9f805baacb4`  
		Last Modified: Wed, 05 Aug 2026 01:25:03 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dd4da1dd874bd3a6e0fb62afd44ed234d268340903fefa5ec47d9a2fc6c06dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186308762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1caca5f777ab179adba805bdf142da7d6a9f40eba2ae1a7d8b0ed84380cb5f8b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:30:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:30:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:30:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:30:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:30:21 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:30:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:30:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:30:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:30:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:30:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9d97640407c84380b16f8cb92fb651830ae25c1b5a9135f2377c6dde69485f`  
		Last Modified: Wed, 05 Aug 2026 01:30:57 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51c93ff44a07132d13fc45250778ece9cf162323a87fa69bcf8fc3a9b2996fe`  
		Last Modified: Wed, 05 Aug 2026 01:30:57 GMT  
		Size: 66.6 MB (66648283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e48f22cb1cec40c2b107762280c0fcfe1e06eaac3749dcc11047ac6beaf7e9`  
		Last Modified: Wed, 05 Aug 2026 01:30:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4dd6ec7ec794f105a8e4b8fa93bd1634936d2913e9fda43ea1f7b96319e1ce`  
		Last Modified: Wed, 05 Aug 2026 01:30:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:63179719eec6032c8a251436d24d698b4e6a55aa65bb575790cb18c4e60da566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9594bf04d65831342db55630edaff329e9e60b09d8329afdfea64aad443eee2`

```dockerfile
```

-	Layers:
	-	`sha256:ec8a70e72b056e9aa63afd8d830ca03a40e628e655cef597f0b6c192704e667c`  
		Last Modified: Wed, 05 Aug 2026 01:30:54 GMT  
		Size: 5.1 MB (5087907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbc46aab0cef8e7a60de00aadb5bea06b1904c51b6a873a1fe0be3708d59acd4`  
		Last Modified: Wed, 05 Aug 2026 01:30:54 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ce2edcd0dc217913c5fbd6c651141d70f4571351507f8ba5eb53dfbd71fb4413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196478624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02e0ef15c946ff981d969bfb24ad1d7cbcbf0fbc6ee8aa94b2e4da2febe3e25`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:40:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:40:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:40:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:40:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:40:08 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:42:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:42:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:42:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:42:53 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:42:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef5f95add8086a49ee781789ff77d32cc777d31b32c0ab8f6fb83065e18af09`  
		Last Modified: Wed, 05 Aug 2026 03:43:32 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b8460a0fc9cb28799a322ec8dca69a07a57931ee750975096eeb8fe225031b`  
		Last Modified: Wed, 05 Aug 2026 03:43:33 GMT  
		Size: 72.5 MB (72487221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c85a76ffc57c01d395ec8fef6b35fbc2ace25aab7bac319e634fd21f2ea37d`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc3f07e0e677c8655f3a50d06133f68948de73ddada0c7a5b0ba0a2cc6bfa17`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1d3f56f2ac84a76dfb65d18cced80c0567248652ad3926920c11c40526995dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c263ec74dc4b43a149aae3580727b5c571e0db205908907b79669a1b892e6c`

```dockerfile
```

-	Layers:
	-	`sha256:fa87b669b4db20824af7cfa12f8c89a43e9a2197310973a2957d05050258956c`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 5.1 MB (5070607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7faf6aa908410442edd3ccc5abc26f592283a5d010fc36b58390a536acae0837`  
		Last Modified: Wed, 05 Aug 2026 03:43:30 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:fefef883c319bcea834d97a3254b42a2ed47b30ee16486d7c85c0da62d5628e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180765774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedca5a45c79cc8f6438b22fe0e2949d727dc0b108c60f1c8d1b33189afe579d`
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
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fa19c102198e4a4f9740d34bb6654fddf34ef5fe7ebb7eff209539a43bbf66`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 88.4 MB (88420368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae887b3377496cf8347ebe3ea7043d707b2d02a42da560c3468fe435168a5e57`  
		Last Modified: Tue, 04 Aug 2026 03:04:09 GMT  
		Size: 65.5 MB (65456095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46b0c2a2840370faf5461d2d14f1fddc703ebda85f0ce2f5d8c1abef8162824`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ddc039332eb4fec26467a37ca7fe0761a8a5e049a6d94787a9c29b4c8a7504`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:be7274fc478dd4d67b63063c5f3ba8a43eca546310032d40ddda305dc55d515b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5073733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135423de29d4e454056f9acafa30066c4d3242f18daa5799bef8a96cb7d132c0`

```dockerfile
```

-	Layers:
	-	`sha256:cc0454890b114b4c8c45035c569655d77c9dffef532a4c2e36df05e9cc7f565f`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 5.1 MB (5058008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ed2efaca382e53971b541e49e9fdc3948b80f2394d6bc751cd1395a7512f527`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 15.7 KB (15725 bytes)  
		MIME: application/vnd.in-toto+json
