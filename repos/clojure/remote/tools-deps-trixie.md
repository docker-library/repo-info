## `clojure:tools-deps-trixie`

```console
$ docker pull clojure@sha256:206ce80cea3b3c67bd380133956d7e29c5751710cff75d3d08241466b68a9303
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

### `clojure:tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:a3c866975af202d24987b4b3bb9bddfe9980db60b96dff016becfcf81161586d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224421999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ec5d202ed1084dfdd399e4d2aa708cb1618aeebfef0b8ddd43707891cd13b7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:23:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:23:07 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:23:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:23:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:23:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:23:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:23:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5fff0f67f83e82c13256dd78362f297646bf209f5d84a718cb5c584cc0b89e5`  
		Last Modified: Tue, 14 Jul 2026 02:23:42 GMT  
		Size: 92.6 MB (92574624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c36d3d02b44c0a170c8f1c990af9158f90b268f567656a9402e5b3ad85da5bd`  
		Last Modified: Tue, 14 Jul 2026 02:23:45 GMT  
		Size: 82.5 MB (82533760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f185938d717d3592c068858be275b3623cb87d10cabaf22c7ca7122116a1636`  
		Last Modified: Tue, 14 Jul 2026 02:23:42 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebccf0a99f887f1aaed6116b8814d68eea67dc118d1480ffb25f117402b0a87`  
		Last Modified: Tue, 14 Jul 2026 02:23:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9e0500a6f0452c455195072c1ec892f3b9302da26462efc3ccd5576163ceaff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b66e273bdb08bdcab729eaa0afd1f5d736080e76179629d9785369c2bbab9d`

```dockerfile
```

-	Layers:
	-	`sha256:bc6b7edf1214a669aa4e9ba2215cea0044540c2526f8f34ca9ffed86ac60e6ce`  
		Last Modified: Tue, 14 Jul 2026 02:23:42 GMT  
		Size: 7.4 MB (7436923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebd9c625e736c9ff68c1931657e0890f93b12e466667074871ab94ef1d3ec10a`  
		Last Modified: Tue, 14 Jul 2026 02:23:42 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:493eafa8195b558db20f4e2cde4a045df9673a5e804a638ba65514ec0b93c5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223561041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47e8a3e807a030a44816b93d39279ddfb137a0afe2a178fc0a5e7d65356a356`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:30:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:04 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:30:04 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:30:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:30:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:30:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:30:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:30:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670ff4ebf3f779720b76dd7f584e85e157ae67b5ee079a1af35188adffc58763`  
		Last Modified: Tue, 14 Jul 2026 02:30:45 GMT  
		Size: 91.5 MB (91542251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd9ac71578ca53fda62a45e043f79221322004ce0f5008dd09d8c32a2c1d5ab`  
		Last Modified: Tue, 14 Jul 2026 02:30:45 GMT  
		Size: 82.3 MB (82343564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d2d95ae21ab384ec7ceab66cbcff6f45597bae24908f7bfe040140e9804678`  
		Last Modified: Tue, 14 Jul 2026 02:30:42 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac7db049b9b70111121d6cc7de3e54540059f921509517bd640657d98f4d532`  
		Last Modified: Tue, 14 Jul 2026 02:30:42 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:63ba5837a0a9c76f2a1b68deefe8000e5980d6a23212a0e11b415da0ca2c3a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722baf12b4aa01befd47dc207501faf25c27e01f6426b845c60b370e0bbe407b`

```dockerfile
```

-	Layers:
	-	`sha256:382f1c6abb6899130a478d6dfc82e4368daa6ea323f79ca89b24f92c3b636821`  
		Last Modified: Tue, 14 Jul 2026 02:30:42 GMT  
		Size: 7.4 MB (7443337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22f3876849edc18cd671fdb67b0d2883854da56fd3d3ffb71c3bb3a609107708`  
		Last Modified: Tue, 14 Jul 2026 02:30:41 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f2d7db91e5c07b9e783b1aa529213614592b1f5e2b06025697f02502ba5d7b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232991563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd793a66223f2de9d2e891574156a44b6b9684348d084e5bc6226a1dce67fb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:37:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:37:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:37:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:37:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:37:53 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:44:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:44:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:44:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:44:06 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:44:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73c0fa4c2193363c9985c22b8523d5932c6de0c0c40270ca09e8f646c77277b`  
		Last Modified: Thu, 02 Jul 2026 07:41:44 GMT  
		Size: 91.9 MB (91914005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8741d45174570aa7b096ed3f505b93016ba0bb6f4ab03cfc46f6c16d3e5e07a`  
		Last Modified: Thu, 02 Jul 2026 07:44:43 GMT  
		Size: 87.9 MB (87938444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1023c00b7dce5584f9b051456ac16c072d87c83006483401222d3c18025956`  
		Last Modified: Thu, 02 Jul 2026 07:44:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69521872ab35ff70f74c49c0afb2124087cbf5dc3abca9099cd65fcabff8f297`  
		Last Modified: Thu, 02 Jul 2026 07:44:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e50535ada062c492a13aadb849a7d0949d4c3a56cead9d0273e3dcc35f605dd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c6e76dfdfccd73e7a2b20556b371fdb3f819016267ffe6471ae4b07c4db298a`

```dockerfile
```

-	Layers:
	-	`sha256:345e17aacc295aa2fa02f5a31b9e7fb1eac883dfbad03e61f2f42dffb4908de5`  
		Last Modified: Thu, 02 Jul 2026 07:44:41 GMT  
		Size: 7.4 MB (7424614 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a0213b504d9cb160dca954c40c2516546054e2a45adb9d33ffbdefe3ce9cfc8`  
		Last Modified: Thu, 02 Jul 2026 07:44:40 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:1b9497d712603e0a000f46e7cdce53c70d7ebf72c3ec4649b4e7a7c2082df8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221305450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4642b96b39cb99d527f0fba671e9ee4a21ca95e7b1aad0786a978adaf969921`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:33:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:33:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:33:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:33:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:33:57 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:35:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:35:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:35:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:35:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:35:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c6d8bc3114d2d3caa1561e81e320836bd1512ccf04acb17834dc1d3ff5423a`  
		Last Modified: Tue, 14 Jul 2026 04:35:35 GMT  
		Size: 88.4 MB (88420357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0638dc356a36b0283b35b80ef54917ea5430af17a26ebd11f08442e6181bcd`  
		Last Modified: Tue, 14 Jul 2026 04:36:13 GMT  
		Size: 83.5 MB (83502344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ce94a29e29543369746a2189d4fa7cd2f9e0bfa929be9483759660b46dae13`  
		Last Modified: Tue, 14 Jul 2026 04:36:11 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a5fd88be16884db49144d06aba69a46c4685b41182a82418397bb4db2dcbc62`  
		Last Modified: Tue, 14 Jul 2026 04:36:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b358506b3974e07297fb74706db2168a94457ffe5a8e19153674a8236162fb65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7433976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389ba54d05606a687566daa71d5ca4f13255324c99209bd03dfbb392fb50529f`

```dockerfile
```

-	Layers:
	-	`sha256:e2f986444e31e8395c747161b7c6be2c8c077e083e556287ab43abc36350adf9`  
		Last Modified: Tue, 14 Jul 2026 04:36:12 GMT  
		Size: 7.4 MB (7417407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d37d339a01a8227d80c0999ca52d04aa4afb1f9020b7f28a64df3a4dc3153bd8`  
		Last Modified: Tue, 14 Jul 2026 04:36:11 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json
