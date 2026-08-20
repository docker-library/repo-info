## `clojure:temurin-11-tools-deps-trixie`

```console
$ docker pull clojure@sha256:1af344071fe9f25a2e024e5975ccebc179dbb2456fa46170ec6342aa54552fcb
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

### `clojure:temurin-11-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b9f97e17a5b636ee56f106675376882627c2b84aad791d6c75c28296d39e68e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277736653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1494d4e4b589b91ba3d3bf5329eede00f608f9d9c3e53990786c3fc6a5b3b7ba`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:43:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:43:17 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f94cf798ed2ef9db9b8525db0c7f4ac6155ab1719ab500e5b8540045df7198`  
		Last Modified: Tue, 18 Aug 2026 20:43:55 GMT  
		Size: 145.9 MB (145884873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650a60f3a5eeaa6e576bc3667d47afa74d81ddb8a1d83c2d5b3f5a00e145cff1`  
		Last Modified: Tue, 18 Aug 2026 20:43:54 GMT  
		Size: 82.5 MB (82538822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae42b376fb5b9974fe18dacf8c687957f5ef95ee7b886ea1735bd9dfffe8059`  
		Last Modified: Tue, 18 Aug 2026 20:43:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e2b953aab829e227e91248951b52492de012ec5da22690f483e3f86315d8ff91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a96955e91124a4b348a202364c2113b5ee11a8e1110c0e6b9bbe381e33e209d`

```dockerfile
```

-	Layers:
	-	`sha256:0d69a5dce23e6a8618aeca2eb39646494aed1a7c5a5b0579ee25d16d0e37b88b`  
		Last Modified: Tue, 18 Aug 2026 20:43:51 GMT  
		Size: 7.5 MB (7488409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d2c33e42adbc80051fd40b8c915fcb920417682fe47038e686cb2c83ff0fff`  
		Last Modified: Tue, 18 Aug 2026 20:43:51 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7ff3bc0c3d8c7ec4050ef6db96488cb4979010bc9d92d5e12789d38088191aa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274615720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c45fd7bc974d164d8082d16b43fcb295fa5ffa7fa43b41a1ef8db4fc2873c8e5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:43:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:43:20 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:43:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:43:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b3ff8b6503653c30a9d0f99ec730ab9c06018f00b53d7cbaacdcb2db21108b`  
		Last Modified: Tue, 18 Aug 2026 20:44:03 GMT  
		Size: 142.6 MB (142582140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f00f769ab433af56f16d2572bfd49e83dca629359cda6011db53ecc64e800d`  
		Last Modified: Tue, 18 Aug 2026 20:44:02 GMT  
		Size: 82.4 MB (82359091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0e5e93e4a23f5d55a8e6ca13aa243a95e9bf26bfd9d49b36daee2b4fbb8984`  
		Last Modified: Tue, 18 Aug 2026 20:43:59 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:570d0c42cff4f98b302e83286dd16222ad499f10d124f06719cf75081399ab14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7509877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f75b319ee0c1f0e8ee64bd984db80626b3b9bd69deea713a150bee2c3cd6cb`

```dockerfile
```

-	Layers:
	-	`sha256:c5baafebde157e4be32ca9015349c72d838ec2e583ac89d650af698e6bd841b1`  
		Last Modified: Tue, 18 Aug 2026 20:43:59 GMT  
		Size: 7.5 MB (7495420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2551f7fa3d501828024bae645a96c44ae28111898f10174157db0ad5b1874d90`  
		Last Modified: Tue, 18 Aug 2026 20:43:59 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c367b8b3fc2e498d9f7b00cf549e3021275e06593671c8c11dd215d40b0afd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274194902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a653a476c3e4648867528684f94cc12a2c4d251a3b813d02e891c973565f6531`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 00:56:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:56:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:56:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:56:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:56:29 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:04:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:04:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:04:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f70809334ddfaa7aad39f8e070c50a45a123d4273b0a8cbcb3481a4c948fff`  
		Last Modified: Thu, 20 Aug 2026 01:00:12 GMT  
		Size: 133.1 MB (133110153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f729129384524b568b239a26ed0d924dc4201d83f757ed674b00ff1913b8b21`  
		Last Modified: Thu, 20 Aug 2026 01:04:40 GMT  
		Size: 88.0 MB (87950499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb3e4af5e91129e7d23503ce6d65c9f1d5962fb45ea6e28e4fb1e420b683ca5`  
		Last Modified: Thu, 20 Aug 2026 01:04:37 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bb53c1cc045ca7cdfe66bb7f5876f159f377d4814efa29b40695b9d5e7e8bd16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc871bd29e5f724fa45d8d508cb1c911ee9c7469026582a3c2c2c554e7075553`

```dockerfile
```

-	Layers:
	-	`sha256:2abf6ddcdcef1b526a09244e93491c428dcebf38e0403984b8ca0bfe5ebe76f5`  
		Last Modified: Thu, 20 Aug 2026 01:04:38 GMT  
		Size: 7.5 MB (7492215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dadfa62bf3cc9b817744f1a86bee597ebbf35301db10c005e007d23004d35b2`  
		Last Modified: Thu, 20 Aug 2026 01:04:37 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:ee330b5a71f7967f38ec27f0eee4f8dc833dcfff88307196a5c1b8c9baa54e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259553971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b688aa921777ed9ff58501e19ebb62eeaa188cba6e5287a29c9674a6da0b29cd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:31:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:31:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:31:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:31:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:31:30 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:32:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:32:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:32:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca2c115a42337f23707a636bb861eec86c2a829df83bd6e2ddc55106262e9a8`  
		Last Modified: Tue, 18 Aug 2026 20:33:25 GMT  
		Size: 126.7 MB (126652455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1ae4f55bffa1d7d8a49e0bfb0d47e123cff402b4c3d9a10e6396655f69f1b8`  
		Last Modified: Tue, 18 Aug 2026 20:33:26 GMT  
		Size: 83.5 MB (83519447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162b7e0d5150217280b6d0260632f8851fc46b239d1ab8529603932c7cc6d8e3`  
		Last Modified: Tue, 18 Aug 2026 20:33:23 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8c9973575bf2c13b09542e15146b5727b1d1a012cbdd77a6e5e4a421ade24b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2d12871615b0e2bf74dddd2db0ed59af2349ad98c15cec37ff7e74edf35a252`

```dockerfile
```

-	Layers:
	-	`sha256:d9f9ab947ad2d7c9b29658f746eb216e4118ed0617069a3299a8bb004ee1fb0e`  
		Last Modified: Tue, 18 Aug 2026 20:33:23 GMT  
		Size: 7.5 MB (7484335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dda153a1122c987a3c62f90eb1663352418045bd5753e995478a4e4aea545f88`  
		Last Modified: Tue, 18 Aug 2026 20:33:23 GMT  
		Size: 14.3 KB (14338 bytes)  
		MIME: application/vnd.in-toto+json
