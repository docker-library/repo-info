## `clojure:temurin-27-bookworm-slim`

```console
$ docker pull clojure@sha256:0f176968bf74ddcfbdd63d59e9088d514bf966634166a64b48cc42d1f0318adf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a8b1c0b23d16368b294f7855321d2c0ae4f3bc839672f92125191efd45eb4c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188405571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0986453798b13f8c8f801c08b91d561497bffc54fbee91dd04d05955483387a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:52:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:52:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:52:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:52:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:52:44 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:52:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:52:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:52:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:52:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:52:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aecaa0ead2e981b758e5de41bd81eeee210b5f2ac539af76d2852108730731cc`  
		Last Modified: Thu, 12 Nov 2026 00:53:22 GMT  
		Size: 93.6 MB (93647842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd39f287c6d9eb8bd6e0693ffd4c2e6a281228630d763c8ddabd64c73a6f3c4`  
		Last Modified: Thu, 12 Nov 2026 00:53:21 GMT  
		Size: 66.5 MB (66508204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a7e03d38770e6386ef6f6ee76d19afdd136335ce41efd30a87928abd0bc883`  
		Last Modified: Thu, 12 Nov 2026 00:53:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89dae92c7ec2a70e2d3584e72311259dc2a226f4692448d67b9ce3d8328765e`  
		Last Modified: Thu, 12 Nov 2026 00:53:18 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f981f1e7eb1ba6f8f42190771ff52c49ac5a3c208f57b275797ef5e0c2eaa8d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361481cebe5c1a44b9e41886dd8f1b92ac9f07dd51671b7cc8b3fda7ddc7a2b4`

```dockerfile
```

-	Layers:
	-	`sha256:a73616afdf286e9660057df2c26729431552897544a01a9ee5426a21b75a9764`  
		Last Modified: Thu, 12 Nov 2026 00:53:18 GMT  
		Size: 5.1 MB (5081767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b676cec89ed4075abe30a208b5a7665e9c27152a0b5314254772b205f61ead4`  
		Last Modified: Thu, 12 Nov 2026 00:53:18 GMT  
		Size: 16.0 KB (15982 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:34443e13c2f52d462b6ed9ccf7d8e27bf6e006827c12af106c3030fcc3ae202a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187306440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d69a007e6c687f8d4a32b251ca049b41b48a8121b67352527965ac0396d369b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:08:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:08:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:08:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:08:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:08:13 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:08:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:08:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:08:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:08:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:08:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d28f1c0f947b63e7858058937fe358b7008d158f49ff1c4cb798e4cdcb730863`  
		Last Modified: Thu, 12 Nov 2026 01:08:49 GMT  
		Size: 92.7 MB (92660443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ad7f8f42a5d35d35c527547ce2648ec9315bbba573d640d6ce7c66eeaf2bd24`  
		Last Modified: Thu, 12 Nov 2026 01:08:48 GMT  
		Size: 66.5 MB (66500096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42849564bdf84ef398beb3ff08147c5e1ed6a52d16b36919ea3daa953a18bc76`  
		Last Modified: Thu, 12 Nov 2026 01:08:46 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bd4a04572f75cadc45589035edfc232c57a4973f6fe8595dbd062bb0bd551d`  
		Last Modified: Thu, 12 Nov 2026 01:08:45 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:84e3e95c72a760106d4ee9c530d16a89306b9c09e1ec23a0d0dbd65db9e7deb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6539c6458aed249a2eb73e814aab944cc57fcd041c2567e270f2e7d7faac68d9`

```dockerfile
```

-	Layers:
	-	`sha256:fcd3355a4fafb55e6c571a5b092e02350402d8f53c2fc8076a2950f7cba3dbec`  
		Last Modified: Thu, 12 Nov 2026 01:08:46 GMT  
		Size: 5.1 MB (5087525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:199c679cf8a4c9433752d9b90ae04f32cb0d93f54548f16fdd99fef8b3f520e4`  
		Last Modified: Thu, 12 Nov 2026 01:08:45 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7c5565e53c725db438bd1a1bf4fb6c8afb701112cdce57f0edef4a744e37ae34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196354584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c5c301366b685cd0ff1c9965f5526cf6b1af15bffb68b1960af57e8668d25e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 02:52:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:52:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:52:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:52:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:52:52 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:09:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 03:09:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 03:09:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:09:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:09:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02c64fde149246e1dbcd66abe605690d715a442bae5549d2bac4eff3880950b`  
		Last Modified: Tue, 10 Nov 2026 02:57:38 GMT  
		Size: 91.9 MB (91925729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079e0b28b7ab572c37163411696b2b200df1a057faf33e94831da754657360a`  
		Last Modified: Tue, 10 Nov 2026 03:09:43 GMT  
		Size: 72.3 MB (72333750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b90999f9d0989774feb61f8098cc93198aea0ca61fa36cc596fbaf808a6a094`  
		Last Modified: Tue, 10 Nov 2026 03:09:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19af4264b751767d08e4f87761c5056784c734a7fec4ee0bd51b417898b3a3a2`  
		Last Modified: Tue, 10 Nov 2026 03:09:41 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d172c70170b3b65a80d3b4688e2a09eff49a768d7889c4b87846b27d8ff262a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5085030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab8b301cd175a2309caa7c20b8ec590c175991838a5161ec51a375710c0e3e0`

```dockerfile
```

-	Layers:
	-	`sha256:4827d01d00931085e82d43d0f31f1bba9f30e3af1e70db50db45457b6acb9c0f`  
		Last Modified: Thu, 12 Nov 2026 08:47:19 GMT  
		Size: 5.1 MB (5069000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a2efad836416f63e6c1320b48681e286a8077a4d1abff64ce187fd1a1a75836`  
		Last Modified: Thu, 12 Nov 2026 08:47:18 GMT  
		Size: 16.0 KB (16030 bytes)  
		MIME: application/vnd.in-toto+json
