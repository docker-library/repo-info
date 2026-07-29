## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:79cd7b0b622b9ee45a91d38bafc6f248e6939bc623d3348563c0fbc360f2e640
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

### `clojure:tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f5e747b7f4822f9659553768cda848a59200f7f85d558a43c6f76d18eb3a157b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191320620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24cfab45844d5747d646a231c45d260bea876e30e2354ed303f20e68b520fbd5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:57:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:33 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bae0b3f5b7de67725c7fd4f6fe52468b90bbdc473ab87d10953f6ce3bcdd42d`  
		Last Modified: Wed, 29 Jul 2026 17:58:07 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc15ff64a1c4ffc7c60167bbcb023a18d7c7c3475331c82be1b2028da5aa90e`  
		Last Modified: Wed, 29 Jul 2026 17:58:06 GMT  
		Size: 69.0 MB (68964074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b6ec991b5d6485a7ffbc5c8aa73c6220ba8cf4021d9fa45794517054782cb9`  
		Last Modified: Wed, 29 Jul 2026 17:58:03 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56fcf266d2a8c7e36c0af98ff2f44893d43029f1d35870f4fee93ec133ff8337`  
		Last Modified: Wed, 29 Jul 2026 17:58:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0cb959f9441a31a8658d622b8c9bd5d1e85f8b41f14b0696d34f0e3e9833eadc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77b20153d7c003f714939bf70b51b8ce88698eee66bfdef46d9a4be41d1d73c`

```dockerfile
```

-	Layers:
	-	`sha256:52f9a5cd846b11c80b002622a5f351e1d0b334baed52a445b331738502b4257d`  
		Last Modified: Wed, 29 Jul 2026 17:58:03 GMT  
		Size: 5.2 MB (5225414 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f56a1ca1583a0c69c2d48579dcf14736495cbc4e1e8c386ff92a77b50f9a446b`  
		Last Modified: Wed, 29 Jul 2026 17:58:03 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:47992af248f7a927ff72ec71a6f42cc8dbd06eb3b9b060d52b306a2d0e6481c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190476138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb554eb13f41c3997ed52c5105b11fcfe8ee9e63148ff1bf74b875b3c10cf281`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:06:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:15 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef53aa92e1b421bb74583fe60d1a2f52c6e3a5f2a09ce49227e15d134bd4b381`  
		Last Modified: Wed, 29 Jul 2026 18:06:53 GMT  
		Size: 91.5 MB (91542261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75816e7b0f467093e2e4dfef52b38e8cffe3ce9da1a382c1d88a68f71a3b5b4`  
		Last Modified: Wed, 29 Jul 2026 18:06:52 GMT  
		Size: 68.8 MB (68789132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e77afcde9f412c05aaec35869c20d6a76f631a3c8a7f5bb25cf683b90ed9c0a`  
		Last Modified: Wed, 29 Jul 2026 18:06:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211f6eb40f5d537baed1bb0495264d68ea2d46fd86c0a71168c46dad8cf70276`  
		Last Modified: Wed, 29 Jul 2026 18:06:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f87953e12b7f0a2f1109276f4837d839003d87ee2a88f9fa3b66af64c0ec7057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf20b3cd0d94b24accf6560dfe76ef59fceda1ffd4efa8e0dbe6c427758d57c`

```dockerfile
```

-	Layers:
	-	`sha256:22d425dc908ed23bc3afdd9d6fa40b4450718fde2782f858ce7abf0ff9759673`  
		Last Modified: Wed, 29 Jul 2026 18:06:49 GMT  
		Size: 5.2 MB (5231196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705d5306639ee46e6caa5a342f87783c251ad9c8f3c1e3e15b0f76f909a23c49`  
		Last Modified: Wed, 29 Jul 2026 18:06:49 GMT  
		Size: 16.8 KB (16788 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e158a269234a387e72ee994ac2a896cf80df64851207047463a0df9bf2254fbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199899948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1862c5ca5d64955d9d0d4d321f5321a94866bde5c145cb4e70a1d2a093e3e67`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:16:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:16:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:16:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:16:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:16:02 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:16:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:16:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:16:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:16:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:16:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef67352efa9ab94f731c0a64e368bfe2a40e15ef8dfb0e43e0d40f006b93b9`  
		Last Modified: Wed, 29 Jul 2026 18:17:31 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59575c20b8292bd66c0890bc2af801cb697a5922b97405098cfc4d736fd661a5`  
		Last Modified: Wed, 29 Jul 2026 18:17:31 GMT  
		Size: 74.4 MB (74383387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970afa49de4a186d8641d80a8fec5b4546acd6c0d1ac6935c022bb8eb5e4c9cf`  
		Last Modified: Wed, 29 Jul 2026 18:17:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c592519acbcec864fd6e416774ec1af6e16a55ec3f695d9193564363996063b`  
		Last Modified: Wed, 29 Jul 2026 18:17:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8870c521a81573f960e65c2dd744ba61024266de2912b28eccffba2e45375592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1537d918176328d0f1abb6785ad5e748706e0fb9a4d16b667339d5f0f99a32de`

```dockerfile
```

-	Layers:
	-	`sha256:45f028fe5108cf2afe3ce0d28064ea82d20cdae9b6d22bf2f8306a2662abc83c`  
		Last Modified: Wed, 29 Jul 2026 18:17:27 GMT  
		Size: 5.2 MB (5213109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d61e9ab1f66e74a638c7ab8a196240642b7fe9ad7d66ada32fc314109983bd`  
		Last Modified: Wed, 29 Jul 2026 18:17:27 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:21eabf3d0e1ffb09d964953d9a752af0c5fb7b921afdf58e677199a2c1c4902f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188217363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fe05a18a7e4060df7559506ae258697874d020fe8f954fd81b1790211e40ea2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:24:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:24:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:24:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:24:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:24:18 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:24:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:24:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:24:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:24:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:24:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ac86fce12566ca64a40c0989d4b5eaafe864efd0f96458c4e23a1b1cf79769`  
		Last Modified: Wed, 29 Jul 2026 18:25:08 GMT  
		Size: 88.4 MB (88420325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0443575c061ea0a11dc0c1f91e760cbb2a7df4ad07105643533760f8f453d996`  
		Last Modified: Wed, 29 Jul 2026 18:25:07 GMT  
		Size: 69.9 MB (69949363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74577e71ffd59f9aacbcf06dd89e5622d0f5bcdb94f2a7e7cd2760928dfcdf48`  
		Last Modified: Wed, 29 Jul 2026 18:25:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c15e2fef869940db956e2cb9fe34b8fc8770f16805395780519ca7b9957e243b`  
		Last Modified: Wed, 29 Jul 2026 18:25:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4c67ece44c0894fa0d1f27b53fa93c9adb80918fb177012ff12aa193badd6a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5222547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1370d80f52bacc8e7f12744d9c09aa23e18fdd9442c876d7cad64eae051770e2`

```dockerfile
```

-	Layers:
	-	`sha256:304cddc378876c00d8cb5d2fec951f38f168154ab9fa37aea67d96b958427736`  
		Last Modified: Wed, 29 Jul 2026 18:25:05 GMT  
		Size: 5.2 MB (5205900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d42b474a3f81454339fe37902d06b3b8898429d655bba0b5b6bc512429ed0e2`  
		Last Modified: Wed, 29 Jul 2026 18:25:05 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json
