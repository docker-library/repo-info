## `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:95f73d2d4f6495a83b1cddfeee7538e5d5a48bb229813fb508644260940d2dee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e0d701ea76137a498fec75f025ab5e6de7ed767459e2c6306a4ed96829647873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192494963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a4aa432df24cc86adba65a8ce74bf71f6912e26354e9dc2263ade580e76d05`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:52:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:52:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:52:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:52:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:52:53 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:53:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:53:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:53:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:53:09 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:53:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dc6dea780eac9a74246f5978b19d0e4b8b91aa27c6e329cca05b108ca7098e`  
		Last Modified: Thu, 12 Nov 2026 00:53:31 GMT  
		Size: 93.6 MB (93647851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6da49a274ed4837578ce529d5953d66066c3c11cbc0b6e9f2fcf2b9d5d8ae73`  
		Last Modified: Thu, 12 Nov 2026 00:53:31 GMT  
		Size: 69.0 MB (68989433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:838842a91ab202fc245586a1c0fe9f06e4296feb7f9414ce389d0ff35406bbd9`  
		Last Modified: Thu, 12 Nov 2026 00:53:28 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8934e9ed394d97647ecd3772e4c9c1c7e009fb8db3e0b61f953c3754b813a6d`  
		Last Modified: Thu, 12 Nov 2026 00:53:27 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:581ece4023cd2d594ef1f5c172356ffc8c47771f6ec744ae458d8b437226131d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b3922446d5039051ca6d8b84d8268116c006ff1d63fcc734d131f67fed4283e`

```dockerfile
```

-	Layers:
	-	`sha256:8a00ffbac0e92e5e459ce925aba91aa1fa30c41a51ccb4256c1dceff08deebdb`  
		Last Modified: Thu, 12 Nov 2026 00:53:28 GMT  
		Size: 5.2 MB (5225719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afc18f161fd7334fba8bbe67e7fff205a4ea3656941b94406de1330b4747ae9b`  
		Last Modified: Thu, 12 Nov 2026 00:53:27 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:53d197de559d9204aa93b94e0b7c843eca6ebb4877088859de9b74f53985a087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191681144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c9468bed75482487b79cfcc6dc2c69b6f777da8da9a2b0d0cc7859a18e494c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:08:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:08:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:08:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:08:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:08:40 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:09:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:09:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:09:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:09:03 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:09:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330e0abf90b4980ec3a8246ffbb19a6e77b76654394ab666dc37fedbf019c8f7`  
		Last Modified: Thu, 12 Nov 2026 01:09:26 GMT  
		Size: 92.7 MB (92660455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91179b6046a24052b12700eebe1b76fce0d89126068e0165e9704abf7855f6a`  
		Last Modified: Thu, 12 Nov 2026 01:09:25 GMT  
		Size: 68.8 MB (68805109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcacc2ba463d5cefae57ee2149a8b4a30c02759fe582759d66c834201002d315`  
		Last Modified: Thu, 12 Nov 2026 01:09:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3132817f53c55928deec7ccdc1fb4766dadfa92ff41921a63f668c37161f5429`  
		Last Modified: Thu, 12 Nov 2026 01:09:22 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f49e6973624f670261cddd2687790ae20c6645ea34d565e0b4ac70e44f19ad84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec05f7a90ade217b8bba736636d30339bae331d0e63d72f74db8ee133d3fa6d`

```dockerfile
```

-	Layers:
	-	`sha256:0e44feb0149fa50dea160968950fdf43e70d87d0f05b12b87d1f2cb518daabf2`  
		Last Modified: Thu, 12 Nov 2026 01:09:22 GMT  
		Size: 5.2 MB (5231477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6e956f3df5c20d86fb0326962ccb7ebbbf8418c0bce90f0dcb16fb608290999`  
		Last Modified: Thu, 12 Nov 2026 01:09:22 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:805248f46042fd76dcb0e73284276c8c25966282ce187d5fde6a583123d6fdb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200013552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a48a0e81772ed9a39d353fe2f47d6b790f8e536269dc2771921fe8e079b6427`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 03:02:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 03:02:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 03:02:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 03:02:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 03:02:13 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:16:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 03:16:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 03:16:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:16:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:16:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5807e19fb41af88a9628567e61acd810698106b40354a46bc50e5681495a3f`  
		Last Modified: Tue, 10 Nov 2026 03:06:14 GMT  
		Size: 91.9 MB (91925749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19287f7d3a9f33fff37c0e523bf7d8eaf104aab9459bd033128aa6529353df22`  
		Last Modified: Tue, 10 Nov 2026 03:16:56 GMT  
		Size: 74.4 MB (74418608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b90df5b92187260763e5e1edead9a090410cfbfcf7012fe954ca8feb83d4bd`  
		Last Modified: Tue, 10 Nov 2026 03:16:53 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab6e235bb2f2aef4830106cfacda02eaaba317d384f9887f7f995ddb689bba6`  
		Last Modified: Tue, 10 Nov 2026 03:16:53 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ed92aac4b098c270da153ed5afd792bc6e04ec58df9b0773213eaaf737bb4837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8358ab257b33da68694dfc451b1e351607ed412b0e162ce7efea594f32668d66`

```dockerfile
```

-	Layers:
	-	`sha256:7be59df1f5e40e84f87b338257554e9103850f9e44541f6c81ec53b24fc06807`  
		Last Modified: Thu, 12 Nov 2026 08:50:45 GMT  
		Size: 5.2 MB (5212165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e00c85373a093529ac92753f0c2ae502bb843536fb4370700ad8e3d8747256d`  
		Last Modified: Thu, 12 Nov 2026 08:50:45 GMT  
		Size: 16.0 KB (16005 bytes)  
		MIME: application/vnd.in-toto+json
