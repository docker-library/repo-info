## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:d4ae01669d8e8bbf5261cf0466ba79bca315b707c666b4737078ecd7e700394b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e35b3f0254a8aa5fe7337da8134eb51939e8c00941090ca8e7341d90bdd0d322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191452283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af9bab89e00d55014d94d7fb5967dba7c12d23c72c8c7f202e2870cdd3602ae`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 00:48:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 00:48:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 00:48:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:20:29 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:20:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:20:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:20:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:20:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:20:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeff42fa432aaad88d0f1aa0c351325565c7a9fac6dfc5ca94c10cad1cedcccf`  
		Last Modified: Wed, 21 Oct 2026 00:49:02 GMT  
		Size: 92.6 MB (92618013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2caf76f12d906fca923e607861a18fdf9004d2f5c98aa20ec90cecdc94ea398`  
		Last Modified: Wed, 21 Oct 2026 01:21:03 GMT  
		Size: 69.0 MB (68989649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1af5abf4a5a6d6c2f412a7d1234a73c23bee58c946e6e0f6e391773f1f7d077`  
		Last Modified: Wed, 21 Oct 2026 01:21:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5bf8bbfa9edac202d3f440b137cdff268f7c68ceda2f010423ee77127fcd97`  
		Last Modified: Wed, 21 Oct 2026 01:21:01 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c69b92ceb76138667fbe05fc6eda1e1a292a8cdd33df350b32dc2d817fbe9401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5245814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d641d18b6d9bffe78823e19969e349e3533118252f846ed4a0de3e6992cb974`

```dockerfile
```

-	Layers:
	-	`sha256:6a02bc792ea6de74c827067b7f784d69096886cf952993a41cf640c614494029`  
		Last Modified: Wed, 21 Oct 2026 01:21:01 GMT  
		Size: 5.2 MB (5230121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c44ba00168b1174baa2c13a25f78e1b7a6aca650ad857b45181f8a0d20610f00`  
		Last Modified: Wed, 21 Oct 2026 01:21:01 GMT  
		Size: 15.7 KB (15693 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0942a3763dfd73849c193840da64a31308eba81dd71e11346274456d3fc556d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190535951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2628286eeb43805eeb885c3b5281ef5b744dd3ed35b647d603a54cdcfb5d7c0f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:26:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:26:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:26:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:26:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:26:40 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:26:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:26:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:26:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:26:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:26:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5af4bbc39269f3d84d64dc1f1cd2e54def39eb1727aa2786751752c3149b6f`  
		Last Modified: Wed, 21 Oct 2026 01:27:20 GMT  
		Size: 91.5 MB (91528853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b4ad03e140ce961805d486e1f41bdba417a7b09195d28961d028c9292f464d`  
		Last Modified: Wed, 21 Oct 2026 01:27:19 GMT  
		Size: 68.8 MB (68805576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53331662c971ee39c01c1f9fc5b5dad2e37d85782f36518e434d87bd98154f24`  
		Last Modified: Wed, 21 Oct 2026 01:27:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0521a74500bdd96be81e262f5206ba9eec3cfa92042b1a11aec4e30f17c2c22d`  
		Last Modified: Wed, 21 Oct 2026 01:27:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:651041b15edd3efa6ae46e483321ba8ffbb481dc8a2af3fa9c104687863fc2ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362403ba63e85a4f6d84bd89173947a29abbc4dc11c2da609b1bd8a6ab7859fd`

```dockerfile
```

-	Layers:
	-	`sha256:87971d82635885c5c97358a66362419385fcdd91d4ab7a63f72b3c46d62ca480`  
		Last Modified: Wed, 21 Oct 2026 01:27:17 GMT  
		Size: 5.2 MB (5235903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc70b7f2bd170b038a00718e63b7d6f6d029c6ac13772af65db2efce042f634c`  
		Last Modified: Wed, 21 Oct 2026 01:27:16 GMT  
		Size: 16.8 KB (16788 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3eb6cae0a3cfa0a3eef00fc5e02a46a8f4088d948cf5a6ec5ff57c38a194f894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199326296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fcadc23a61edeef763c9323be6eb965ce02867988bd0634b2e9be1cc3270b07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:23:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:23:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:23:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:23:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:23:07 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:34:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:34:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:34:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:34:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:34:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f87c4f9d1360a462b9c53559ac0d02508f75df75a505f1c55cd0b5a24dca71a`  
		Last Modified: Sat, 17 Oct 2026 06:28:25 GMT  
		Size: 91.3 MB (91256226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cb3be1b93eafd6be8a56d40c7ef2ddf12c76d07500c3fd918dd1cc899c26b8`  
		Last Modified: Sat, 17 Oct 2026 06:34:49 GMT  
		Size: 74.4 MB (74417427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a96f54352723b22a8171343f020647d5d1e92a80eaae2d3312efa898184b5f2`  
		Last Modified: Sat, 17 Oct 2026 06:34:47 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42b14f3efd4537c4171547fb399b4e9b09ff81963eb345d8accd6ab641d0108`  
		Last Modified: Sat, 17 Oct 2026 06:34:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2ad09c87a09898d6aace764cb6bff7abfbe6bbfbf8ca10ef55cf24b38d693384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5235800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0224ad55010085a3f7eef7eb78122be405d0948950f5686ecb74903a678035e4`

```dockerfile
```

-	Layers:
	-	`sha256:429598b103a407fbe7a551212c453f8ba649bd0f3aaa5f99233c75fc44832bbb`  
		Last Modified: Sat, 17 Oct 2026 06:34:47 GMT  
		Size: 5.2 MB (5219093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c981e23c15d787877abf9ffde3a629dff6b70b21905491c3ba899090064a4034`  
		Last Modified: Sat, 17 Oct 2026 06:34:47 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
