## `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm`

```console
$ docker pull clojure@sha256:cb2aac3f97387620a09c56613fa1d270edc7218bb515e977a3d5d63752a11045
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

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:e5c464a7eb43763434e97820fe9fdad8bf83d924b37bea9e9080c1f5135117e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284795303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c05ec315bbd2cd29905ca974f94e36be816550235df0c31308a99fbf9712f77`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:52:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:45 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:52:45 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:53:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:53:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:01 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60422456ff60358d1d8d6b67c41417f2d8dd1d712cd9e6214427a93047c3af3f`  
		Last Modified: Thu, 02 Jul 2026 05:53:28 GMT  
		Size: 158.2 MB (158166967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8306ca89701685a199e4eb83be3548b84a4bed5f81075e5831bcbcf041fe8`  
		Last Modified: Thu, 02 Jul 2026 05:53:27 GMT  
		Size: 78.1 MB (78125083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9f3869af047fc6daafdd463386c8146a88f3eb2e7f1d2bec12a71600da4c0c`  
		Last Modified: Thu, 02 Jul 2026 05:53:23 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3543bbee44cf1bf98eae4ce57e5a2e511514daa9e4c8bec1e59944f4a0057a0e`  
		Last Modified: Thu, 02 Jul 2026 05:53:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0ce81a2eda2f3d738fe139a4258fc3e5830f0cff71230c01d6d2dbe0908a6295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9da3aa6595490de355fb6b69208d6a995de091c555bd5febdee6af3757be072`

```dockerfile
```

-	Layers:
	-	`sha256:ae08a793e20a28892493c6fa857c88516165cfe28872b56a2c04306ed4508cfa`  
		Last Modified: Thu, 02 Jul 2026 05:53:23 GMT  
		Size: 7.4 MB (7378670 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dae04fbc20d416db5955393b912ace24079860c132fc3a515e4b215390754a1e`  
		Last Modified: Thu, 02 Jul 2026 05:53:23 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:211f3ec96fc78e22953cfe0e6a7ffce89321b6bcccfafbe54cfd2127a491154f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282981329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ca4e981926057227559217386ba0fb359b4e599804fbc62ac58454b95fed9e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:53:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:10 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:10 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:53:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:53:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f563755113ea9c6562b021b59a4bdea841528c35074a460e1add6e96203f53`  
		Last Modified: Thu, 02 Jul 2026 05:53:50 GMT  
		Size: 156.5 MB (156461306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0538062f6790753dfb9c94460aa8926e9bc865e59d0324207b3c681931c8ad`  
		Last Modified: Thu, 02 Jul 2026 05:53:49 GMT  
		Size: 78.1 MB (78129775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013bf7cfd902aed576831ae341b31de47674d90f61e411193d842fe9f1109dff`  
		Last Modified: Thu, 02 Jul 2026 05:53:45 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca017a7b559b00473ada72c24a89de39f1dff2c9f87b435a23993c23d6b4b01b`  
		Last Modified: Thu, 02 Jul 2026 05:53:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b64b85d7f944d7a7d0e9f118c2d2dd77640a470b42aee0e8cf06dcf464d84399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4985a92f2880b32f7b78e9ae2a1fe01176c5b852a69f6913e14de77d969ee8e9`

```dockerfile
```

-	Layers:
	-	`sha256:caa83b77b78734542163affaa019c9375260203c8e1da23f8b5b05ad053ad8c9`  
		Last Modified: Thu, 02 Jul 2026 05:53:46 GMT  
		Size: 7.4 MB (7384457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4f58f8734ada5d9f52104961b3e0bd1a20e0f659e7a181e1cee6832d267408d`  
		Last Modified: Thu, 02 Jul 2026 05:53:45 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a3132dd2795f59cadc495c3161c72885f62ee2952ac5f3a8b90d6f78bceb1904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294649836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f8bde9713a9bd0fa4de2cdb600d0503bf43e3e18e5bfb45b841993aac21cd72`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:19:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:19:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:19:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:19:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:19:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:30:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:30:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:30:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:30:15 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:30:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9336473475900452c48606b59d65c92a5631d6774370e5dc92b53680a448ea`  
		Last Modified: Thu, 02 Jul 2026 07:22:36 GMT  
		Size: 158.3 MB (158343220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d4b45fdb42a5a73eb1bf2c27cf802a78079365444c62d20337ffc7e8ad93a6`  
		Last Modified: Thu, 02 Jul 2026 07:30:54 GMT  
		Size: 84.0 MB (83958726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e594ad101f6ccaf1e82114072968dc0e8ae0e35c32ca33c05fe74d0aba0de670`  
		Last Modified: Thu, 02 Jul 2026 07:30:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4443b95afa7d842f06037e46b586cf649464feed6e57f3d5753ea9a642aaea17`  
		Last Modified: Thu, 02 Jul 2026 07:30:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:cd3ee380706971454246ff4ffff146aa6b59394b5d90bd92428cfbbedf641dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656266f58e2292c06743d94de8f8bcad59548e454f575679b3ac40ff38f5d0c0`

```dockerfile
```

-	Layers:
	-	`sha256:5842091b725639a4d914a7bc7d7c936c860d61e8fc5932f1e3e24e9d0b98c536`  
		Last Modified: Thu, 02 Jul 2026 07:30:51 GMT  
		Size: 7.4 MB (7383898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68194792fdb5dbef5162e9a160c416f796c165d105d7f80b01e173a82e5980dc`  
		Last Modified: Thu, 02 Jul 2026 07:30:51 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:86727312248a252846c2c036d72f27b79617606854c11b7c230f901028857532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271479700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e53dded931be15c6636547897d28c419e92326c9840f03bac8bf62ecdcbe09`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:52:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:52:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:54:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e014712a24813f5c84e7dc8cb6c633392b39cc5509ed44e2fca49b06838dd63`  
		Last Modified: Thu, 02 Jul 2026 05:53:42 GMT  
		Size: 147.4 MB (147388340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370074342bc7ff200a53d239252498e1bd00112b790fda07bd117647736eebca`  
		Last Modified: Thu, 02 Jul 2026 05:54:41 GMT  
		Size: 76.9 MB (76928640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e432e962a49367c88865524192e91e76a991a2e00c966cb3d0ea5c7f12a516`  
		Last Modified: Thu, 02 Jul 2026 05:54:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea35dfd59ec8a1321c3b843abfdc938f79db3b9eae5fa1057ab139db449272a8`  
		Last Modified: Thu, 02 Jul 2026 05:54:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:15449281d41fd21ab31c2bdd8ed9ea4181c2205d6a56956b0c0331c072f1a178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6044f605a929c7aa852119c35223618008bbae50c477045c87df442725fcd941`

```dockerfile
```

-	Layers:
	-	`sha256:b9c31fcfc4b1f9aa40b913ad816552a8166df2801b1f6e40a0ec008faa60141f`  
		Last Modified: Thu, 02 Jul 2026 05:54:40 GMT  
		Size: 7.4 MB (7369989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f41c63df082bbf154f9989d6c72a3d3658bfc985e1ba70f1e097955b2c7bab`  
		Last Modified: Thu, 02 Jul 2026 05:54:40 GMT  
		Size: 16.6 KB (16615 bytes)  
		MIME: application/vnd.in-toto+json
