## `clojure:temurin-17-bullseye`

```console
$ docker pull clojure@sha256:e60f4e7ed071bb05e1727c0c7c85563bd4f233b36e93aebe9bd997ed02b70c3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:4360a94cadc46fa76a2ebab5fb810d223b24d591b7573b03ce12e57138a9ae42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266128005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2acb77fec6ecd99618176ddf8cb42ff39e0f3a98059ceebe4927c9bc68521b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:28:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:28:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:28:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:28:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:28:25 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:28:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:28:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:28:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:28:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:28:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5e973736aaf85930d1587bb9755e62122e8e229c84ecb04b5dfde1c25afea4`  
		Last Modified: Tue, 25 Aug 2026 01:29:00 GMT  
		Size: 145.8 MB (145822637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed2116f32cfe91fc2606b4c547d406e6f23b5427f746ce4d6dc0aabb29f7edf`  
		Last Modified: Tue, 25 Aug 2026 01:28:59 GMT  
		Size: 66.5 MB (66526934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167f9e27bcfd060f3fcc3a8d4a380f9630f30f97fa065687308eddd94790b6a2`  
		Last Modified: Tue, 25 Aug 2026 01:28:56 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295c8debce3dc61fe3dab701561cd2301f70e3353831aca28c3271bc87c3d193`  
		Last Modified: Tue, 25 Aug 2026 01:28:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:19fcb4c95bac64f8904572646f250f6fca2351145209a09982bc287212563a96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7426581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcc874b981e3378b49b7e96000d25d95976b0c048963a6f8ce73575b3fabc20`

```dockerfile
```

-	Layers:
	-	`sha256:50abf700bfeca2e765c8b4aecef4fbda10fcad5805c07e8e7968fb033f3b5310`  
		Last Modified: Tue, 25 Aug 2026 01:28:57 GMT  
		Size: 7.4 MB (7410650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:452447147aeac166753a8de1a60e8bbf8582972830a9d7f1b09040b299496e60`  
		Last Modified: Tue, 25 Aug 2026 01:28:56 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3031e43740ed207e211268f230ee5d9513fba7129d681d5915ddaa5a5054c42a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263600538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7cee6771b2fc80496627d86e98f1963b75127b3ea701a2dc86d25d0f9698ee`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:32:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:32:27 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:32:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:32:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:32:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:32:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:32:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1376f662ff4729d54a9e3ed499054885016842d7d6af8f4d3407a9a024b2350b`  
		Last Modified: Tue, 25 Aug 2026 01:33:04 GMT  
		Size: 144.6 MB (144647520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715829a4b98303caa17a66ae4b72677f7252e3093c81a358b04cb944cf8de79f`  
		Last Modified: Tue, 25 Aug 2026 01:33:02 GMT  
		Size: 66.7 MB (66690636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b86ac1783337dbafb9c7fd973398337b8e857971ca3d27224a5c4a777718aa29`  
		Last Modified: Tue, 25 Aug 2026 01:32:59 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b22450dea2a6f6f24f21f5aa0e1a3297878e01746f68c8c6ff943680e8fa47`  
		Last Modified: Tue, 25 Aug 2026 01:32:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:35cc75967d1a4e8f4d757529586e78ddef1f3ee701fbcf0822f409332c246a96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7431799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:154d12bffee1a563c68feab52a2765c5ff2a8e1e55a0de9caa85ebdb0b2855e5`

```dockerfile
```

-	Layers:
	-	`sha256:f9da2489897a8323ad1536160c586c1c4107c63ac9b9deaf96c55367005b48a5`  
		Last Modified: Tue, 25 Aug 2026 01:32:59 GMT  
		Size: 7.4 MB (7415749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9236db89c03208d710471372804a8a262612c7f9a7de1dc4cf793488df1b9cd4`  
		Last Modified: Tue, 25 Aug 2026 01:32:59 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
