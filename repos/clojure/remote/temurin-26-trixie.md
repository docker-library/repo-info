## `clojure:temurin-26-trixie`

```console
$ docker pull clojure@sha256:12d3dbeafaf7719a12dcd1a5a4357ddd88a6cf0147bf80321c363105c00580c7
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

### `clojure:temurin-26-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7ff8885fd75030507a0342e5afa0560e6f6120a4d545798e95d7c8cdc4f083d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226376188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b5910333aa28790fd494edb1f303f675de556901568c617e67230d475f23f2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:51:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:51:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:51:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:51:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:51:02 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:51:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:51:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d442b1c65f36e2642549779eaf83f5b51fa7450383de55eddd1328062029c457`  
		Last Modified: Tue, 18 Aug 2026 20:51:37 GMT  
		Size: 94.5 MB (94524339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50a09f07e1fd4a19c1effe2f10dec454647dfe4f7015e11df5c0ffc70226e419`  
		Last Modified: Tue, 18 Aug 2026 20:51:37 GMT  
		Size: 82.5 MB (82538494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0892c2957a1ddd9781cd18b7add4bd89e80914421a9978a31717a883c4f4e93c`  
		Last Modified: Tue, 18 Aug 2026 20:51:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5278107a70471397b533c89775457902ffcc11fbeb1a142692cf7e62e97768b0`  
		Last Modified: Tue, 18 Aug 2026 20:51:34 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bd7129f5457de08a843866c76c3ae6a3bba2c4b8d52d68570bbde1d646bdea7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176bbace2f27d2136fad70f9adf3e4f9d4dd3c7a048eac36b3fd13c1b222cb9a`

```dockerfile
```

-	Layers:
	-	`sha256:bf933cb9610869ed69009185b02c8573e40be994354cb29a16ede3f02edbf4e9`  
		Last Modified: Tue, 18 Aug 2026 20:51:34 GMT  
		Size: 7.4 MB (7433784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cf0bf2a85c5eaee4cd879ac1cf4c6d770fa79f7f233e49329c049c670979e7`  
		Last Modified: Tue, 18 Aug 2026 20:51:34 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0985f7521df44bbe3c8b3aaf89fe36d28d64535c28f053c69da6c5ed8e4116e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225537907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fb3f812697ad7d94cd6464f4798a5356cd162507b7cbbdac4f00d6e064c352`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:51:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:51:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:51:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:51:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:51:01 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:51:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:51:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52186cc35a09d3cf5801b9e3c72630d35e4d1e8e2b216fb661583d7fc360275d`  
		Last Modified: Tue, 18 Aug 2026 20:51:43 GMT  
		Size: 93.5 MB (93504353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd7886db5f802b6ebce1c1cb117270771a2e352ff0c5ff092b852e9f39a50b1`  
		Last Modified: Tue, 18 Aug 2026 20:51:43 GMT  
		Size: 82.4 MB (82358666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc7fded6d9e5dd73c55e17799f6d194b80d0ca94fc79a3e4d554a4a4fb4bd6a`  
		Last Modified: Tue, 18 Aug 2026 20:51:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f15f0300c13f51c542c7bd2b3568cc2383ec58a0bd58be930bb0ec71a04973`  
		Last Modified: Tue, 18 Aug 2026 20:51:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:82b70be2c8b1a1a23f2f698689a592bd28acba86c70c37e1120648858bb17a3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a6ed7e2b0dc54c3beb2e8a739d3d7b6a74c736f05ce85dce42a24ed0c0f8e0`

```dockerfile
```

-	Layers:
	-	`sha256:2aa48418c05e4bc69de325dd4014dfd5bd1b1661e22a6d82bb6515ce474fa817`  
		Last Modified: Tue, 18 Aug 2026 20:51:40 GMT  
		Size: 7.4 MB (7440174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50379341b11caa08f1799a05f10297572f633d430a8a58eac1d44e24a3a1f18f`  
		Last Modified: Tue, 18 Aug 2026 20:51:39 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2453ca371179754330dc68e4ec548af88aaaa85c340bb34bfb117df1b138d27b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234986592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab02fd4a2bce7799cd7d593b2c0b0cb0be36e4cc193ce9f94b08466f6ae078d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:58:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:58:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:58:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:58:05 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:58:05 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 08:02:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 08:02:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 08:02:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 08:02:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 08:02:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecbfb1da30f68e5c90c9a0de84cd20ef34d884a56efe1330e00aeb79f7446bd`  
		Last Modified: Wed, 05 Aug 2026 08:01:33 GMT  
		Size: 93.9 MB (93902057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7ede45eae92d6246fc57d63b942d31b446fc2f84d11cfd0434319047c2b04c`  
		Last Modified: Wed, 05 Aug 2026 08:03:13 GMT  
		Size: 87.9 MB (87949887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a8a67fd8a2d62067f0adfdadc9b5f1736f113734fdad0795816b2f6b4dbf75`  
		Last Modified: Wed, 05 Aug 2026 08:03:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c4cd86e82e1af9fe727cfa9d1d5c8d9ca4b22062f777cceb2fc41cac4c3ee3`  
		Last Modified: Wed, 05 Aug 2026 08:03:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bd146f1398f4dfac659c0a401b0cb7797b2afe23195eb779c3af7dca6a14a915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393fa32218da98be27be6492500fb6394e16afa996916aae3e2b4fd61b20889c`

```dockerfile
```

-	Layers:
	-	`sha256:bfe432c73347cdffe5c38cb10c429583cbb6c4c0367111278520e7379d3ca1ca`  
		Last Modified: Wed, 05 Aug 2026 08:03:11 GMT  
		Size: 7.4 MB (7422141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5976a279bbd919a4c6051cd9ae2f69443162205fbdb33eb46b7f55b576aecfc`  
		Last Modified: Wed, 05 Aug 2026 08:03:11 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:2cda060b708a378df7481d0ef1097a890959a7be23044f5c36a0e33b4a62f08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223439099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fa073fec993013cea3680c7c8b863ad798172f3f6128b1453d958294c0b6c3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:51:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:51:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:51:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:51:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:51:18 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:40:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:40:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:40:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:40:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:40:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6973823e6df810f0c1f74c150b3996a6badda23c956392754dd05a1e1cd00937`  
		Last Modified: Wed, 05 Aug 2026 01:53:00 GMT  
		Size: 90.5 MB (90536967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5487a5ac01088b551118a4e1b396bbe764bccc2ef7d71bb44856cb8b2b3ae596`  
		Last Modified: Tue, 18 Aug 2026 20:41:15 GMT  
		Size: 83.5 MB (83519662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e9b34e595a4a9c6640a2466036cd5157c56eda45cd92c7160cab0a3f68b140`  
		Last Modified: Tue, 18 Aug 2026 20:41:13 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396778c5f0c7532b0ee4f29fa040c175bb5b6a4edd4e691ee662499b5bef12f6`  
		Last Modified: Tue, 18 Aug 2026 20:41:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fc42b4fddc6850dc2c15a6d5445ca28a04cf105cb774c3b588c4771c0ecb9e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7429840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841ca271436e42de506a87f404acdda1e34aeca77b1360aad6221628880e8ad8`

```dockerfile
```

-	Layers:
	-	`sha256:b7b01f3cf2be0a01de8773b94606a97930075a169ac52ae263f4ede9acaf91e6`  
		Last Modified: Tue, 18 Aug 2026 20:41:13 GMT  
		Size: 7.4 MB (7414892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c98c10864957439f7a763a2a48dccd3d3ec438633898dcb364290985b48d46c0`  
		Last Modified: Tue, 18 Aug 2026 20:41:13 GMT  
		Size: 14.9 KB (14948 bytes)  
		MIME: application/vnd.in-toto+json
