## `clojure:temurin-11-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:53baaa1d294943498652c0d5dd945eda416e16f068c0ad96e931c26f033e6b52
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

### `clojure:temurin-11-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ab89fa5c5a44241a74b31e8e883c092f917ae46394ba7b17a254884d559df74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272522854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f121a1cc0e1f92fc7d541d535830870f1d140e0f71fd8c91a862de41ebe99b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:12:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:06 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:06 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:12:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:12:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08be4b31df80f95eb8a34879778edee5598112bc70239ebb3acf8c94585b6aa`  
		Last Modified: Fri, 21 Aug 2026 19:12:41 GMT  
		Size: 145.9 MB (145861435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf97a055a628b121b7a909f3e0bcbae0e08774f41b94045cbcf631b7e3b6af8`  
		Last Modified: Fri, 21 Aug 2026 19:12:44 GMT  
		Size: 78.2 MB (78163683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a55016a6a2ca1ea7cde76f6506eed80066b1f2a566a0f05aecd4919dd3c20b6`  
		Last Modified: Fri, 21 Aug 2026 19:12:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:957251d6d5ff18342f4b590150ff86edb56caaa256866307970b0a934a427841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f6bafc3403c6e66b0b1014b2ce86822cdc6b3b6b5c022be72f95aacd4842e1`

```dockerfile
```

-	Layers:
	-	`sha256:bbbe7665a2e04e3e257c4db58b08fe0b45d10f441a1249765f36d15b1537b567`  
		Last Modified: Fri, 21 Aug 2026 19:12:41 GMT  
		Size: 7.4 MB (7400887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3367b461d80729672e558635d319a2ee648d762e1c76a7c837363a781066576a`  
		Last Modified: Fri, 21 Aug 2026 19:12:41 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9fa43840308e4e39fc43a04f5586e8e50d7af2ddd8f7a74da7fb4d998f5b13bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269096871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f1f8bf61135c5bde15327e5825164f546f99acfa87fb25f31151d80953e4d4`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:01:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:01:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:01:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:01:44 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:01:44 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:01:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:01:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:01:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ef2639fe7c36081d6d413d2c5e20d8e894583ef5dab94a6bf7f547b5640289`  
		Last Modified: Fri, 21 Aug 2026 19:02:23 GMT  
		Size: 142.6 MB (142566616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d0a9f477f4d273637b9d35de9948a16b9c8f169873eeb9700c1c7c2caa16b64`  
		Last Modified: Fri, 21 Aug 2026 19:02:22 GMT  
		Size: 78.1 MB (78146232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d208d4708ff6b160e11caca0f3b622b433675598310a02959db7e972e2f0d1bc`  
		Last Modified: Fri, 21 Aug 2026 19:02:18 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e336ca393fb4325a0644661641a06423a2a64136fe7b20d1bb8434daec31742b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42241f6a701f6bebf5251ecffc3b398a74723945c1a2b221735cbfa3008e4cb8`

```dockerfile
```

-	Layers:
	-	`sha256:2b38a9c31063627925128e9be130990a9061a4409a53ea19e83218ca161c6ba3`  
		Last Modified: Fri, 21 Aug 2026 19:02:19 GMT  
		Size: 7.4 MB (7407268 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705f69cab71c60c0f35c2bd4cdcc7dbbc674b2f480ce35e2cc54927a3b5380c4`  
		Last Modified: Fri, 21 Aug 2026 19:02:18 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b083fbe02c725b2fb858274e054fd80b3a4e249dfeed0fc6fabf94c00c6f104d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269430692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33601826a34b2e463980a8532950f48bd285eed10d83b5a7ee5d903f03b4bb01`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:52:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:52:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:52:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:52:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:52:33 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:01:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:01:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:01:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd376ff5969191bcbaf61490685b98edf392cffee3d7a499070089f169927e2`  
		Last Modified: Thu, 20 Aug 2026 00:56:04 GMT  
		Size: 133.1 MB (133110153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47302b4a70ef07c3dc86ede54361faebf3df8751637ee10ba85b16118d61a9b2`  
		Last Modified: Thu, 20 Aug 2026 01:01:47 GMT  
		Size: 84.0 MB (83978416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f217ce0e0a15384209d8d2996bedb8c949cfee96369cd83010589f342828642a`  
		Last Modified: Thu, 20 Aug 2026 01:01:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:25c56f1c298792be2696958820a48a70004a2139218c68e31cd5cca00f6b15c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9eccd9d8f0edb0d15c698ec1711478c613f61e2f08f8b4f8cdf48e62ba858b`

```dockerfile
```

-	Layers:
	-	`sha256:c1ec806d05b05518a6858bdeba7e17a3b5eac03a8ce14131dc77a55c02884f01`  
		Last Modified: Thu, 20 Aug 2026 01:01:44 GMT  
		Size: 7.4 MB (7405490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e939bfd7808ff03d70d2716d621a3a05daa1ee6b19e3c16212c56f0193cfe1f2`  
		Last Modified: Thu, 20 Aug 2026 01:01:44 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:4248e133e81faf5dd1520a0ffbc1a28116e3687f9f5587d8a2b5ca4cb7107cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250746753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87af54917799532ff71d7325d247f7997a571fa11f51f1f156d825c46086cba6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:50:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:50:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:50:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:50:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:50:13 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:50:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:50:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e8ab673b3e926ea338a092a3731e2e2335eb2073c4222b400c50e0e33bc9fd`  
		Last Modified: Tue, 04 Aug 2026 02:50:57 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06c03c969ca1c89c3a86920198986d0e5b8c7c69863b7fe149f5c216aa47f7f`  
		Last Modified: Tue, 04 Aug 2026 02:50:56 GMT  
		Size: 76.9 MB (76936415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd61632dd00f52120bce035d2760c92317babaec125f405dcdd0d863b776396`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6ae67e43a87d712349ed2d61f304e34d05823c3a7a4012e47646b898439a174a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8abbefc237043673897ac02227d8c04b6ae7fa8a331afa21f894e890290945`

```dockerfile
```

-	Layers:
	-	`sha256:5f5fb3bf2947fb78d920a2308f7cf7b5800ecf221a622b953bae41e6e8046c2f`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 7.4 MB (7387009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7d0f1b14748d277f1b6fa30c311c115cc9c6cd8949b844b8c4a585da78526a5`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json
