## `clojure:temurin-11-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:85def2c729e36c7e6f89cd93487f4057012099e88f0df286595178d17eeb2f3a
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

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:55ca1c9a37d12579ec7cf24c6b80e4ee4c421e4804174e70d918c2ab25c399ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240799909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b058566e0fc8e2dc959f9a6b9346f33e565bad50ad36290f18b2bd574dfbf09`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:41:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:41:03 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1460250d7899b56851d200d61d7d2545e9aeecb6c093310c84728199e139d67a`  
		Last Modified: Tue, 18 Aug 2026 20:42:34 GMT  
		Size: 145.9 MB (145884873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1755503f0773b700a5d11f15868a8a37b7b8cf14d437c7a9ab2977aea6f8927c`  
		Last Modified: Tue, 18 Aug 2026 20:43:19 GMT  
		Size: 66.7 MB (66681804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8435c6fa16a8d4ee96057a5db3dd18aa1839a0dee4ed4806351a9e8e8328f144`  
		Last Modified: Tue, 18 Aug 2026 20:43:17 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:43ffce8d2ac9efa4b713260afc8add1d50c7b27f40ea49d1649571f5db86eacc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728938cc989f558af63266a1ff136ef0d4cd493a5778f04731db59dddf756af9`

```dockerfile
```

-	Layers:
	-	`sha256:6dd581054adee2437e9ed4b165860b668197c275577e4e89ae5e6f54e8d01cee`  
		Last Modified: Tue, 18 Aug 2026 20:43:17 GMT  
		Size: 5.1 MB (5138754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:374e1aa1eba72af7ec686eac034c1ff053144801d65b0b373440610597adc4fe`  
		Last Modified: Tue, 18 Aug 2026 20:43:17 GMT  
		Size: 13.5 KB (13466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5691c114d25566dfd39a0042ed8ceb06f4fca65d9c5fec5f505188703e200d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237368075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3860f11cc78c31d5d1ea71c598c208664e4ed89051f52f22bad179d47959226`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:43:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:43:16 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea383d7ad583bce8d1804cc1b29c5201d25b0298e14b34f99ed5726b66e15fd`  
		Last Modified: Tue, 18 Aug 2026 20:43:55 GMT  
		Size: 142.6 MB (142582128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea02540e14168edccd10cc1a9044c7faf9a44f961fd2780262533c5277bbd4d4`  
		Last Modified: Tue, 18 Aug 2026 20:43:53 GMT  
		Size: 66.7 MB (66668101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f6b985719e1de4d43b584b163cfde15395c652be775d20b99de135332a2606`  
		Last Modified: Tue, 18 Aug 2026 20:43:50 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a642be528816b06d9a35a4ada7a1ed97b3ae5a1def60589a1a15ef78cb3af503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e976563107e5d8b07b4072a79f30204a8ac5b1a9f5bdeabf9a2d02109c7e9f92`

```dockerfile
```

-	Layers:
	-	`sha256:883c187b804e304f7817dabf4a4a51c9099bc4a6e3ef86b4608ee237e0a93c2d`  
		Last Modified: Tue, 18 Aug 2026 20:43:51 GMT  
		Size: 5.1 MB (5145133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd65e9f30dada339df1a9fe62af7a0a9d98691cb09c67dc2b71017cfa944e43c`  
		Last Modified: Tue, 18 Aug 2026 20:43:50 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; ppc64le

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

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-11-tools-deps-bookworm-slim` - linux; s390x

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

### `clojure:temurin-11-tools-deps-bookworm-slim` - unknown; unknown

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
