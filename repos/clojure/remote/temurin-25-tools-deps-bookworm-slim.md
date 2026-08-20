## `clojure:temurin-25-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:b18e377caa430ee72ebcc3bb4b27058f7b166e16d9f01af9e4db58c1af2673ad
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
$ docker pull clojure@sha256:ea2a8226161b6321fecab799039a39ed6bad473a695c5ec45bcc456c5056834b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187490139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2558b8707a452ce41c288516fef8e9d5ba7681c7c0261ce08d6ecffb0d61df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:48:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:48:26 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:48:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:48:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:48:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:48:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b244dc9d46f935ee38b0d0837ef29504ce0e0903ac523ab382d1cba93a3cd03`  
		Last Modified: Tue, 18 Aug 2026 20:49:02 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b7d0f4d3a6c9f8969a796cd79ae45f6197954b1c75c0198ea137bdff3b60e5`  
		Last Modified: Tue, 18 Aug 2026 20:49:02 GMT  
		Size: 66.7 MB (66681913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97e7a876940f96d2c96f62a93c74c1d1fd7e813b6d2c28a10e8968c044cfa27`  
		Last Modified: Tue, 18 Aug 2026 20:48:59 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484bd4554721e1eb628223c698490ef5928f05a7682a3f4cdd1d1e3f656bc3e3`  
		Last Modified: Tue, 18 Aug 2026 20:48:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ac0027a5ccbf5b0ec8b2e603dbdd83453d1283219e7395e7fabc276d48a2b7b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d4ede304b779f840bf55792e026420414ab0605b007356ecca7ff68124463d`

```dockerfile
```

-	Layers:
	-	`sha256:6a82d24202f90ddb5807e513c55b41932720c2681fa90c8f12dc8f0ca4f1a8ec`  
		Last Modified: Tue, 18 Aug 2026 20:48:59 GMT  
		Size: 5.1 MB (5087328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6550a4a75c08c0834b1e72fca22bb10e83ad567c5ebaf608b36f86d42cb9470c`  
		Last Modified: Tue, 18 Aug 2026 20:48:59 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:14bf82d145c01a000b879f4b2bc5cfb256a44fb802efe373278829f840b48a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186329459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2f1d338b052ba82a0547fb8cfdbf32720ce81c49348cfcf0fa11d70256df00`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:48:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:48:31 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:48:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:48:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:48:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:48:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139e90c65bc44a7655d2c16af145a77cdca4560f3f629ceb61257fb4f5618caa`  
		Last Modified: Tue, 18 Aug 2026 20:49:06 GMT  
		Size: 91.5 MB (91542296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1421191196b3fe2cc417145c1c206137e44d07ab11454cd55389b896e4cedda`  
		Last Modified: Tue, 18 Aug 2026 20:49:06 GMT  
		Size: 66.7 MB (66668921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ca4f764928d4af26cf92a8f27c287ad110dbcc7a9fcb61f7381fcbea9d3545`  
		Last Modified: Tue, 18 Aug 2026 20:49:03 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5092d78102b06dcc761e01bbc545fe90e75760d58ba6a1d169159c4887e604d`  
		Last Modified: Tue, 18 Aug 2026 20:49:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f9b23e35adc41012b1e03e85cfd526cc5639d9847b734b74515367c09fffc00f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5109931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fefc971283afcfd5c819285e142c6245428c5a5b262b428fe54e6690b40ea2ab`

```dockerfile
```

-	Layers:
	-	`sha256:12f8aa446c69437fe5c297c8e814f960599628d968330417e5ec3dea741b7676`  
		Last Modified: Tue, 18 Aug 2026 20:49:03 GMT  
		Size: 5.1 MB (5093110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31667f9afdf73df5d8ac03ce51c124043edddf9a96aaddeba3d0ef368e3b0f37`  
		Last Modified: Tue, 18 Aug 2026 20:49:03 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b1ca51a45f9b0729cacaf947196f618250b6c406961d1630bec1f9e1954bf3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196488247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664bfcda226b7bd9262181d8e273aba1508ec5960103b82b47bc22411bbaf59f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:30:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:30:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:30:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:30:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:30:05 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:38:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:38:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:38:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:38:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:38:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75110ab10d2ed791e257ccc400d7c6d0df222aece9a98ecea62272d5d67edb1d`  
		Last Modified: Thu, 20 Aug 2026 01:33:36 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a5e1c0be90a2b29e9dcae5247019005bc9cb506c36670552ad9053816ebaf3`  
		Last Modified: Thu, 20 Aug 2026 01:39:13 GMT  
		Size: 72.5 MB (72496871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50481400559dfec2f1307ddd2456cc3c099775f2461d4a9b58b8440a882502fa`  
		Last Modified: Thu, 20 Aug 2026 01:39:11 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255e421d19c8f09df0048abe64bcec7b3640035a73e56bcc86ce719c3bf3c35`  
		Last Modified: Thu, 20 Aug 2026 01:39:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a935f6b9da9ef20662e52a5fa7848dfed870cb367cc68cc660b6ae33d61e7555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd566b7747c786961bd4459af9d1a820a5ca59ae4c9c1bbff8f615740825e601`

```dockerfile
```

-	Layers:
	-	`sha256:82319887a3a7986aa27610dbfb7974c1848a60afd7059d3285e9cc0e51ef3821`  
		Last Modified: Thu, 20 Aug 2026 01:39:11 GMT  
		Size: 5.1 MB (5075810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15f076852c70578c2e48589716acfcd54351b472ad26821a1b288185e6293e00`  
		Last Modified: Thu, 20 Aug 2026 01:39:11 GMT  
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
