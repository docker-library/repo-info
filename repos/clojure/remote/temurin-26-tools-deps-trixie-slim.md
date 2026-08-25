## `clojure:temurin-26-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:f7b86a50b88b4468c2dbfdb36e82ea0d10ffd242a6a046843332fad17a153049
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

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bc1724cb18f8b002629fffab806abfa4663dd2b63d93ef851ecd3070ccdf5f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193322782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:462d75128ab13240dca0fac065d3bf0113a92f60e73603326cc87179086b1d10`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:33:41 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:33:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:33:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:56 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82f91934bd671bb3a30863e8b6349ca6918eb82f67386993cf99b1b8ae440d2`  
		Last Modified: Tue, 25 Aug 2026 01:34:17 GMT  
		Size: 94.6 MB (94563753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4f53c552bd13b4488a9d9476ab41fa3257f5b8b9764d373a885e0b98b68f90`  
		Last Modified: Tue, 25 Aug 2026 01:34:16 GMT  
		Size: 69.0 MB (68965331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364e1f3f7fe079b57a59b04e1f5d61cf26d6ac0cee6bae4b43a84f2d2f0b070b`  
		Last Modified: Tue, 25 Aug 2026 01:34:14 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5aaad0fbf0cb2991e5ae518943b23ea6dd0a62ffd2f97369bf664af0eac825`  
		Last Modified: Tue, 25 Aug 2026 01:34:13 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4c5ff30da741f154a80543a6811aa5b1425b209cb921cf7b234e3d524a62a7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cff45d707e6a8b6f89f947a74bed2d9b5c14511a12d273d3282bbc7a0373ad3`

```dockerfile
```

-	Layers:
	-	`sha256:da83795d252ad6c3f007ff6563429624f77469c9986ad38a4a21314636b3b862`  
		Last Modified: Tue, 25 Aug 2026 01:34:13 GMT  
		Size: 5.2 MB (5222455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bac51dda2adda0c8abe851afbf4e3a29ad4d8b8daf4304762dc712db0d55d26`  
		Last Modified: Tue, 25 Aug 2026 01:34:13 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:aa8978f6dc81e58c0e58f0af251e81c1a947df3d0ad3fd90674ff822af55662e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192487838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc7a5e795b47a0c55b53923dacdd90a689150953a261d0fbed99a86f0020a192`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:38:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:38:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:38:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:38:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:38:24 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:38:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:38:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:38:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:38:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:38:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3ecb0fdc2a5908aad82f7633beaefab6af4650da61b1746436c9d2af0b6214`  
		Last Modified: Tue, 25 Aug 2026 01:39:04 GMT  
		Size: 93.5 MB (93541529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ab4b450bef9cc5cb8ae5a3238ecbfc3c6932f6474d80eeaa9358b0b3e366eb`  
		Last Modified: Tue, 25 Aug 2026 01:39:03 GMT  
		Size: 68.8 MB (68785689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a652c2876305bf7c4ff4900542ede30a5316ee952ac584eb92db8bbac5287c5`  
		Last Modified: Tue, 25 Aug 2026 01:39:00 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0e466b3cdd57e055de2d6665cff6572713d413ab6b065747cff69bc7ba377`  
		Last Modified: Tue, 25 Aug 2026 01:39:00 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ed662c23fd7d42d7eb9791a73398003000af139d841d141b59d1e9fad7eba75f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f0aca35b4f13d7934147fa28b5ffdbc915aae8e1a05d91771cac8a14b73ac36`

```dockerfile
```

-	Layers:
	-	`sha256:2c68b766075891c32a9720fbbf993fd66919c2dacd6f6cf04d9a2737584fce6b`  
		Last Modified: Tue, 25 Aug 2026 01:39:00 GMT  
		Size: 5.2 MB (5228213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27164cb687c9b1249f4de4eb821cbd5d4751880c9360e909852a8987eb194f32`  
		Last Modified: Tue, 25 Aug 2026 01:39:00 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b394ccd63590b2570d8131d89dac8d2fdf7b0b439bdb8c80a306188eb08e11f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201343512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f9085ea04c283934dee924e73cd2fed335383d2ec7a83ac0f68d747a51748c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:55:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:55:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:55:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:55:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:55:51 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 09:02:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 09:02:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 09:02:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 09:02:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 09:02:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f4c46e6159e6ca18f1704d11223ba8404b695770bb4f26b3ac1349f77c99c4`  
		Last Modified: Tue, 25 Aug 2026 08:59:34 GMT  
		Size: 93.4 MB (93350807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20888411e1859fd45263c94cb4db15d261a5cc4e43cec4e6dfbe13b3a1ad7ace`  
		Last Modified: Tue, 25 Aug 2026 09:03:42 GMT  
		Size: 74.4 MB (74376199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936527f79aa7d18c0b9c8529dc6a845f2fc46c56a5926e55c2227a6bde0aa90a`  
		Last Modified: Tue, 25 Aug 2026 09:03:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd85cc7f181b4fb8c8ce0a4676722428106ded5e359171666ba9627d8f6b9be`  
		Last Modified: Tue, 25 Aug 2026 09:03:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c76c5a72eb332fc74fd5c83cd5f795848370bc0f922be76b8de54e44074adacf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764230dbaba81ab9eefbcea2970da1eedbd3c1c5c0085da4556dcea5d535f8cc`

```dockerfile
```

-	Layers:
	-	`sha256:6b3403202bb7cbb043eef315d6d60be4c7b9d2a0607c53a619003b7235aa9cf3`  
		Last Modified: Tue, 25 Aug 2026 09:03:40 GMT  
		Size: 5.2 MB (5210762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fe76ef9b173c92ed59418343d126842ebb523d103498a1b4420c3ff80ea6bbe`  
		Last Modified: Tue, 25 Aug 2026 09:03:40 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:7319efa6d2566704f4b4b67f77f0cbd751a6f59184cdbccdbd9c036ea075dcf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190402427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea818466a15e982e5a6d9b0d3bf9389c4dec450a0ebf6c9db259daffa386fbd5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:11:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:11:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:11:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:11:48 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:12:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:12:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:12:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:12:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:12:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5459be13f0d146d434281e08f096f839c0fc6893d92d9a9be9f02a010da412`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 90.6 MB (90588188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8da75ef6e99b6adfe8a9a005b9c631b9d58b27e26ffcbee848cbce93e08e14`  
		Last Modified: Tue, 25 Aug 2026 02:12:33 GMT  
		Size: 69.9 MB (69945479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8e27cbfc4d492e4f864fb52c71ee6e67a31bd063273766feac4004736d4f11`  
		Last Modified: Tue, 25 Aug 2026 02:12:31 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71cd97ee12ec72deee08bf4b3c506d12bbd183b8548ef6f04cab826d8827c088`  
		Last Modified: Tue, 25 Aug 2026 02:12:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e69976baca1bc0a68afd64ac4a8fd355f4148c752a8486663ac3642577b29038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af548f492cf65e0519c45b8a5c9638f2f5632e6ad3e10bf691c276d997757ac7`

```dockerfile
```

-	Layers:
	-	`sha256:9bf6fb356ce8a6cf682ab0fda7d293716c0c1e111662769e9c2a51d38b82d2fb`  
		Last Modified: Tue, 25 Aug 2026 02:12:31 GMT  
		Size: 5.2 MB (5203565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ded9cd74fd827053a6956c50ba0c5334182ccf4b1742ae144ff7025e6d11c6a9`  
		Last Modified: Tue, 25 Aug 2026 02:12:31 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json
