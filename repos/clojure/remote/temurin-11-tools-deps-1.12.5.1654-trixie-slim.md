## `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim`

```console
$ docker pull clojure@sha256:6c825509976d66eb0f9541543660eff0b7f555e20d07e7b9ac9ffe5468e87c0a
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

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f953597d5dfbfb0eb313e19e63c8482202eb71123309d032110c2e3dbc790e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244623410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e3ec25ce2de001fdb04b2de923b8627761cbff88ffe150e4651c640ed2a3d0`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:49:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:50 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:50 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:50:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a93b5eeb767984eb88988befb2cf064f24c31c15121b8374649ee54935c2182`  
		Last Modified: Thu, 02 Jul 2026 05:50:30 GMT  
		Size: 145.9 MB (145886123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e756bb0aaa66c92a30ceb4de3c840bb208290c59300b3276268817e3976b84`  
		Last Modified: Thu, 02 Jul 2026 05:50:28 GMT  
		Size: 69.0 MB (68951221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9fa91784b9c29d527567b77002625e2b2f6d07e1b7509b8c0bcc6e9a28721a`  
		Last Modified: Thu, 02 Jul 2026 05:50:25 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:200d6ae068df0507d27e5e986c45a32941396db1a3312a1510b290de1b695a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843b9eef8b71cec8b67d2bfcde998e0f6e1665b42c2c70a76967b767167cd486`

```dockerfile
```

-	Layers:
	-	`sha256:6431e304c5ad3a0af673bb7a3d5cdb6e17cbea90977abf4fea3e8b29aaf5ceca`  
		Last Modified: Thu, 02 Jul 2026 05:50:25 GMT  
		Size: 5.3 MB (5276794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a580f3fbaf4a4ac8495bbb79aac3525410e8e212b4df4c7505fd162b4c9854ec`  
		Last Modified: Thu, 02 Jul 2026 05:50:25 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f0f3ccea912421b9415149d2ced001946f0fbaca275671520eb5701c234304ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241509143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b76e36814f09c64e361441ccb55de9d2bd8f90020af2d869cf6318d5591486`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:50:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:50:03 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:50:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82280d7f63c2dfe387435de8a9d77a05412e1a6a61ea4b1967a1a268f9e6420d`  
		Last Modified: Thu, 02 Jul 2026 05:50:46 GMT  
		Size: 142.6 MB (142582196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c215eeef2c3a7948048dde47b7483cd22f293ff92391013db4232bca87d7a8be`  
		Last Modified: Thu, 02 Jul 2026 05:50:45 GMT  
		Size: 68.8 MB (68777749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea0d1c2f41f658494c71e19a982c2eb10929fe9dde96e98e96271d318df9cb6`  
		Last Modified: Thu, 02 Jul 2026 05:50:42 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f9116b8629fe47a79df21968d6361df3aa1bc28e118d023e13c4aa0f582c53b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e597cf2a0f62d19dd51eb1d9b90bf02268b045defb4685a4d7a6c9c72098ab2d`

```dockerfile
```

-	Layers:
	-	`sha256:bf88303d04b231ee1bc46ea9e77aeaca76e73623999ed48eb839f036c25534b4`  
		Last Modified: Thu, 02 Jul 2026 05:50:42 GMT  
		Size: 5.3 MB (5283173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:814ab4ebd65b6f2a679476ffc032b4f1b58eb0580069fd3f4f55a8b5ab65e758`  
		Last Modified: Thu, 02 Jul 2026 05:50:41 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d6a0e42e5b37a0f89d171b62c624e33ac33094dcf939cccb16e2a57afe23d0db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241087650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83a64bdee255eaec1854d78b88762b5d591214d345f08ff602f9d37984e9efa`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:00:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:00:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:00:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:00:10 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:00:10 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:05:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:05:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:05:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92baef43e33b2e3216fa49fd97c4c72e963f07fed6f47bc27884467e4bf4edbf`  
		Last Modified: Thu, 02 Jul 2026 07:03:12 GMT  
		Size: 133.1 MB (133110143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e779e29a21f1cfe45ef918938cc9b11b75a616645bdee165e41a13b9bae554e`  
		Last Modified: Thu, 02 Jul 2026 07:06:15 GMT  
		Size: 74.4 MB (74370472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f14028ba0b47dab32444c92e8c6030da2cd30675e1160b0fe5293c6a88611414`  
		Last Modified: Thu, 02 Jul 2026 07:06:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:31898835f92576ea510b175a5fb977410d2fb0e972625e93caf713bf697c48a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5294995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a4e5a194344ec57d60792ae7c70bc82dd63d746b63f4337fac2bde0e8b022d0`

```dockerfile
```

-	Layers:
	-	`sha256:de45d3365359d73d90f36cbe1a0b2bdf38f473f95f9ad8191e073eaacd11d6a4`  
		Last Modified: Thu, 02 Jul 2026 07:06:13 GMT  
		Size: 5.3 MB (5280550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3c68cc39afdd101b3167ce513bb8e7f94261fcf51c5410d4eae5878bd9f0bbe`  
		Last Modified: Thu, 02 Jul 2026 07:06:12 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:46c0f5c4ce70d5e1c2206320eaa08b850261e2864decc3af0cca48ca273acbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226436607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7297c715c6cfcf5b1859a5dba5e17c214138fa5e7d054cafac91e7df184cdb`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:47:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:50 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:50 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:48:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:48:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f7f1719bf1616b13eaa985ba4284ee60e99bdea2298b0a790c45fef25fbb3f`  
		Last Modified: Thu, 02 Jul 2026 05:48:36 GMT  
		Size: 126.7 MB (126651523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b027f13b5ddc43561c0aaab16ed65c86d0e06f5757f1782e7df50d9018b8fe`  
		Last Modified: Thu, 02 Jul 2026 05:48:35 GMT  
		Size: 69.9 MB (69933058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a5e52962dcc53f31f65b78bc75d7ceff45f89bc78501f058afa0ed297a798e`  
		Last Modified: Thu, 02 Jul 2026 05:48:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b88f546f0f82be420072885e307c78cafb105f4c1237e817d6482c063a919171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad499c46010815e2cc14fbd55b821419de839e32ead1aee1b928885a371bd21`

```dockerfile
```

-	Layers:
	-	`sha256:fe8b34d91fe697fe501abc38385bfe4c63ae8727faf275f449c10223b9f085f6`  
		Last Modified: Thu, 02 Jul 2026 05:48:33 GMT  
		Size: 5.3 MB (5272722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9236ec8d86fe9d9cbb5804da57139c0632c84d04e8d79c1326d482c184d4d9`  
		Last Modified: Thu, 02 Jul 2026 05:48:33 GMT  
		Size: 14.4 KB (14394 bytes)  
		MIME: application/vnd.in-toto+json
