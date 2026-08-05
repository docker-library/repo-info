## `clojure:temurin-8-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:7980c5bc648b8f18d850fefef172703f390540e886e1e0b556ae0ce83982572b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:92ed92a38cf1aa28d971ad104900882e8afa4407956dc5fec17eb3465f5470a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150088979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9ea56f2e2ad20488ec34da26dde10bb8c8f4602e35f515ed86acfc800e8529`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:17:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:17:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:17:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:17:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:17:20 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:17:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:17:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:17:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0d4f6df9401519ca3cdf210f59a48178405a07cb1c17a15596173550d844b4`  
		Last Modified: Wed, 05 Aug 2026 01:17:54 GMT  
		Size: 55.2 MB (55198688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a45acf3ef39e77cc43e3ce5911078b50107ef93441b75751d5f7c60cb8478b3`  
		Last Modified: Wed, 05 Aug 2026 01:17:54 GMT  
		Size: 66.7 MB (66657056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f905c8adcec649df40164f988fc54a3dff953a4275ff851e56f0efddbcf162`  
		Last Modified: Wed, 05 Aug 2026 01:17:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7628e7af4220e56c11a357a0c571b09a2836b3db09db4669cb68f89887f6f993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61e9708f001ce4ac48688e78dd0c1e14428da4652c48b8166d2d21a2fea1fc7`

```dockerfile
```

-	Layers:
	-	`sha256:1071142f29783381aa561d3d6410a6c894ce6f80015cf7baeea0f6fc45b0c86e`  
		Last Modified: Wed, 05 Aug 2026 01:17:52 GMT  
		Size: 5.2 MB (5234395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8f8645c1face93218f3ba162835eac111f003f2fa18ed0cebb16fcb0c041678`  
		Last Modified: Wed, 05 Aug 2026 01:17:51 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f903ef7ec0b79921c18dde7fa49cccf3c4b8799bc913784a8a9334eee827f465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149039090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f449124fe228f5ce91a050cb9c7fc132447a04f5dccba513b7e100b440b872aa`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:23:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:23:13 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:23:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:23:28 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b63bc163c442eeb43f8ba0d5fcebf002ac3e2651b475488d3aec83c60b0cd40`  
		Last Modified: Wed, 05 Aug 2026 01:23:44 GMT  
		Size: 54.3 MB (54272910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8bdbf6c3701d2300b3ba2c1a5697ec90d7b69fd208edbb676ea8cb15871edf`  
		Last Modified: Wed, 05 Aug 2026 01:23:44 GMT  
		Size: 66.6 MB (66648336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99fe962446434db5dcce7413482b30180913e685e3f3cb0303790b1016482178`  
		Last Modified: Wed, 05 Aug 2026 01:23:42 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bafb4fa140002b826fd706d35019e09485c0ac2dd5b99b6b8e4c15e9b27b188a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5255376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5fa928f3b32566fb76c4c013b608f7a7635ced99358ce2251df8e7f7c140e6`

```dockerfile
```

-	Layers:
	-	`sha256:970cb4ad8dff2a24749168f88a8b52eb3f3bf8aff98b191ac320a4dce3a2802e`  
		Last Modified: Wed, 05 Aug 2026 01:23:42 GMT  
		Size: 5.2 MB (5240856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a95c615fa962f2cc48c88c51c3423db625fced6eee7e726c8a937065e4f9df7c`  
		Last Modified: Wed, 05 Aug 2026 01:23:42 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cd1a0654f2f6cd680022b7baf8fd540dc45d6504cea8d031a030cc2d3a319372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157232871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e3399602926d8f6f688c00f1e48fe566ec32c81a7421dcda1b42207f6f6a25`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:23:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:23:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:23:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:23:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:23:05 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:23:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:23:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:23:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3791cdbb4f3c86c7e414e26203827c5bd2b4057f1a1a27211c9054e949aed55f`  
		Last Modified: Wed, 05 Aug 2026 03:24:20 GMT  
		Size: 52.7 MB (52669138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7db94f89b91834ae735240c83af261f1818136b2a299a13c8c3adf8e8b1de1c`  
		Last Modified: Wed, 05 Aug 2026 03:24:20 GMT  
		Size: 72.5 MB (72486764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dced886c5455610755e7ed703ce7e48bc2dc5960b21535a2bd7902162ae78bd0`  
		Last Modified: Wed, 05 Aug 2026 03:24:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f3d8fa06f9c33a3d0b4ec9b07f104b20e601a5ae8fc21ef5b6f78a3b77ecd90f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b112d20d7f58d8d5917c5f7d50322cd05c3bff3dd2252704013887e5babc93dd`

```dockerfile
```

-	Layers:
	-	`sha256:c36fcaa9c838a8221dce3df1b2f0771ebe5205cb2091ba01b183726edbbd2a2b`  
		Last Modified: Wed, 05 Aug 2026 03:24:18 GMT  
		Size: 5.2 MB (5240148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e74a919406b679a9ac6a787ead0185977a133eaedbd0e47d1d068cff2b8ee3e9`  
		Last Modified: Wed, 05 Aug 2026 03:24:17 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
