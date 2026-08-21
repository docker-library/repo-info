## `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:c9931cdc5b6517db670b8196ebae2ac789db7efdfbeee45ed6158b5e5c00508d
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

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2c0059b5236c6caf4a54dcc0934024c68734736ad6c338aaf52e141d2e5a98fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240776481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd50f1bb42be30ddf23366d1014831bf277bf6fef898804269dab9034722d67`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:12:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:01 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:12:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:12:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eec4eb0c400b31f0b9741e7a6d85fca9830007c24ed64abbb57afbc9d1eaef9`  
		Last Modified: Fri, 21 Aug 2026 19:12:36 GMT  
		Size: 145.9 MB (145861400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5321228532e226d603ef3d009d6eb71b2a0f36e91dfe5eafff83b4da28f74b7b`  
		Last Modified: Fri, 21 Aug 2026 19:12:35 GMT  
		Size: 66.7 MB (66681846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18db7897d5b9be69381c8d81a6d1c1c92d8a8ff7da681c89ab0544fd0ec6ed44`  
		Last Modified: Fri, 21 Aug 2026 19:12:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f4155a3136c7c6d160af4caaea7ead44fa3d951edcbaf6ddb4a720d1e4c210ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab87742d65719001c86e76ad7998b0b5a9f74675a68769831a721d8c87c7ccd`

```dockerfile
```

-	Layers:
	-	`sha256:b0471203d28b80140198794e562331c9f0673619ad75c621c88163942fee51b9`  
		Last Modified: Fri, 21 Aug 2026 19:12:32 GMT  
		Size: 5.1 MB (5138752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a4a4f66e68f7426bfc8367c2792e0d7d27e3349451bf9c138927a96f556a764`  
		Last Modified: Fri, 21 Aug 2026 19:12:31 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9a254cf4ff027c052c5fc8708b6de86db6fb102add9f1d64ab4a93282e65d91e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237352902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64517e6da2fcb47f3d2a0b67631f576374b64710ed09ca0e7e78c89b6793a24b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:02:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:02:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:02:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:02:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:02:36 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:02:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:02:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:02:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f50e5846e418c5ff9ad9d12e8d4fbe2da782c01d370872968b29d16dbb9b37`  
		Last Modified: Fri, 21 Aug 2026 19:03:14 GMT  
		Size: 142.6 MB (142566564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6615f4dbbfd5503302d1d4c85a1521ee8897251ec1ced7e60efc08ed5358f86f`  
		Last Modified: Fri, 21 Aug 2026 19:03:13 GMT  
		Size: 66.7 MB (66668489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6897b3b8cdedd47959ca3c6b40e1dd07712106bba82e9159cebb9d83e34fc35e`  
		Last Modified: Fri, 21 Aug 2026 19:03:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:241fa264a78cae4708f3e85f70755fbeee066326f7f0a14e37a591197953be0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50eb0f8656d7a8b866ae8c235863247ec2e4357824443ed082fe45ef9f171433`

```dockerfile
```

-	Layers:
	-	`sha256:c26b024b0ed46d27ec2b65e2ffe502bd77c99fedb84e191be2a47a03cd10a932`  
		Last Modified: Fri, 21 Aug 2026 19:03:10 GMT  
		Size: 5.1 MB (5145131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f0ba1ebbc49abdf96afc27bd66e6a1c8122686b6d2f11e6255c38e63c6fa630`  
		Last Modified: Fri, 21 Aug 2026 19:03:10 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0f718443457cddc457abdf8b91905a8d0f857464fc54f2a42f4c1209d462ad83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237683975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c68614ed6f13b73f57ff5b9a03cc19dadc9caf2fd07b5634f033a8669e7b099`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:52:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:52:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:52:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:52:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:52:34 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:02:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:02:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:02:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cece95074d9f98cb7ffd64415805e6108cc4eafe0736f316502a68df5e465cba`  
		Last Modified: Thu, 20 Aug 2026 00:56:04 GMT  
		Size: 133.1 MB (133110156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247ce0dc362e7b36e0b2ba20af391b072d6597658087eabbecf1f2db114b4cfc`  
		Last Modified: Thu, 20 Aug 2026 01:03:01 GMT  
		Size: 72.5 MB (72496852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84fdb5e29677f3b069f97a17738d21ccb0a749cf4018a4bdea0b47e7b7181ddc`  
		Last Modified: Thu, 20 Aug 2026 01:02:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cf357262e0828b76906e5f021d7adff1499eb4e9f1fd7deb54a8dd497bff84ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:589232b100a5a319b609fbd4fb479d402b92624fc31f92aacf505ba6ea2a71ff`

```dockerfile
```

-	Layers:
	-	`sha256:c621712f1086c949deaba3b478cc2036a1c7f75c5758501d93dd08ad1d769aaa`  
		Last Modified: Thu, 20 Aug 2026 01:03:00 GMT  
		Size: 5.1 MB (5143297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c09b9813260dfd6e44e73a629675696db7b928add3f8d13604931afb2fcbf39`  
		Last Modified: Thu, 20 Aug 2026 01:02:58 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:5cf68fb6108bc7ab02874c381637ae3138358966ee16f94b1307b3e17bf1cee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218997351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fecad364a3c56bdd52c2b583851d6ea5359e6b187f6923213dd81080a7a998b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:51:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:51:19 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:824c87d906fc73b80310937982d370ad7d5af67a45d73feb5d7a209c632be5f9`  
		Last Modified: Tue, 04 Aug 2026 02:52:01 GMT  
		Size: 126.7 MB (126652394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a5ad10ca2c01a9273a7a015f2955e3e3016b4d03c83fc82ee498cebd9c85fa`  
		Last Modified: Tue, 04 Aug 2026 02:52:00 GMT  
		Size: 65.5 MB (65456046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c32a53faa6c4167316d22a8172eb3c4d5b1cec8d3d66be0967c4a46fd31944`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:71c67bcebe2603916fcec544f7f84bb93e510837b10c85f48178f225026e34cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823795510815fd11ffbfb4468e19a27bc4b80ba29c2df9ad880c6577480f0db5`

```dockerfile
```

-	Layers:
	-	`sha256:efef67cca2131020327b2606caa816e54ae4771a26db9ffc8d79edb5f79ca17c`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 5.1 MB (5124876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dab02f26480df4076b0d9af40972a6ea3689f9edc30d3b83ee65f35f46a99dc`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json
