## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:d23d7c2aac557daf850650b837b95cc1b2fcc1291e54fd19898268b0d14495d4
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

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0c506bae281980701395df78591923913cf431edaf1d935fb799e538fd0938bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226375384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4bbd926c4b85bcd04743af8a869989e88c69ab244bafcb64992fb2458a7670b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:26:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:26:26 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:26:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:26:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:42 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e6f9c4ce3152340e5af12cba3385454609b269b846f36d9f7c66d06f5accee`  
		Last Modified: Wed, 05 Aug 2026 01:27:05 GMT  
		Size: 94.5 MB (94524354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7778217a37e4bbf49955dabe28f4e97641aef76e0be30073a6307bd4cbb81c`  
		Last Modified: Wed, 05 Aug 2026 01:27:05 GMT  
		Size: 82.5 MB (82537674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb191c831ce5f51941d7062e08eb2d60b257c731c7faa44528445694ce382230`  
		Last Modified: Wed, 05 Aug 2026 01:27:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4925470ed5da171ca5d3f6ea11c427e69f4b9036a7bb733dcb994e826066144c`  
		Last Modified: Wed, 05 Aug 2026 01:27:01 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:876d0b3182213dae94a38211fcfeecd02c36f6ba5425ae8d936269fea48e9a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67e97aaefc7e827df54d320b342a665be250fdeb0b4f712459d9e23d72b2fc51`

```dockerfile
```

-	Layers:
	-	`sha256:6fa2c654ca4fd9e7686d70db6acabb193b60df05be64131b848befd2bd0db47a`  
		Last Modified: Wed, 05 Aug 2026 01:27:01 GMT  
		Size: 7.4 MB (7433784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdd94d7b7999b7e51c479828eabb842a0e197667d41f943d7937aa3d707f5ce8`  
		Last Modified: Wed, 05 Aug 2026 01:27:01 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d40f0ca09361b8fb2eaf332ca031df437454c162157b12d36677719b568d0fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225538593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c27f6041c9b2c7c3ef4f06a55026ee5421ac91eae585dcabf1c64906512492d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:33:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:33:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:33:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:33:02 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:33:02 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:33:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:33:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:33:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:33:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:33:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13ce46680d35694bd99bde81fada287bd22dae7d4c88f1eaf6f90ee66823d07`  
		Last Modified: Wed, 05 Aug 2026 01:33:43 GMT  
		Size: 93.5 MB (93504343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b06f7bb87f551c0c6cb1284e0c80098746ee025863717b6a7b5479173d8c99`  
		Last Modified: Wed, 05 Aug 2026 01:33:43 GMT  
		Size: 82.4 MB (82359365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb250894316c4b991e3965ca859aabb82ff53bd0337bc66c64f40da6a2a4f9f7`  
		Last Modified: Wed, 05 Aug 2026 01:33:39 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646a41ea40883ef6d042d23da26cc74c62a7171ab7c2af47979e0a8300d20974`  
		Last Modified: Wed, 05 Aug 2026 01:33:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:69640469630a4c216daebfbbf92bf2bb834d0b5d616f2e7d9b80d55faab097d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1d240dcdd7613c522bfc7d73af1db7df26a447c3c94c84e762f8d4f13cad22`

```dockerfile
```

-	Layers:
	-	`sha256:fcf98bdbfc0f9a46e3f6126cb65ba3725ae10a80f968c45374ad075c7689c3ac`  
		Last Modified: Wed, 05 Aug 2026 01:33:40 GMT  
		Size: 7.4 MB (7440174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a2dfef3f27d90251f4b344e898e7065d8a4544d41864ec6a9fa00ce262ed2ba`  
		Last Modified: Wed, 05 Aug 2026 01:33:40 GMT  
		Size: 16.0 KB (16018 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

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

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-26-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:9fb9fea3a6328d311016d309e2077c4228c6ebcee4480d660341361dcede36be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223438198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416950dd4083b10976ba7da510d301402001dcf92868288fdbabfae1074059ab`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:51:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:51:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:51:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:51:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:51:50 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:52:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:52:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:52:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:52:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:52:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47649966189b3de4e7741b1e3126f35c3c6a9b73b9c3ca6fa22584bc75bf9d5c`  
		Last Modified: Wed, 05 Aug 2026 01:52:40 GMT  
		Size: 90.5 MB (90536990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06aa7690794ccf3a093deeedb1491cae773e60799261b51ecfc734cb6176b7ec`  
		Last Modified: Wed, 05 Aug 2026 01:52:40 GMT  
		Size: 83.5 MB (83518740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9e2893c4ae0cd612ee0116d5b7214628f3c81811d684b7f33da6b302682a69`  
		Last Modified: Wed, 05 Aug 2026 01:52:37 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e67331c4b0b09b1d0320ea35268acb87d6586762ca3bbbdcc83b97b2cefd67`  
		Last Modified: Wed, 05 Aug 2026 01:52:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6709637dd5f387e1fbbec77fc538200a045819be022ec0a8cfdd1fd925526833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7430791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9508d31a352a0e42ac9083c149cf7cf2a2577308d7b10f6dff79d6efccb29a33`

```dockerfile
```

-	Layers:
	-	`sha256:17e4abb49f7e77836028c796739ba1ab36713c879334d654e92ef96bb58ead5c`  
		Last Modified: Wed, 05 Aug 2026 01:52:38 GMT  
		Size: 7.4 MB (7414892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91ac8ebe81992a652f5b8c2d4dbfac7639c666fa8eb9fa01cdded6546f224608`  
		Last Modified: Wed, 05 Aug 2026 01:52:37 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json
