## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:ebf077613e21ea8deb2e4fac101140d0a6d24562c18cea197594c182da3a4274
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

### `clojure:temurin-11-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:81417f4c0be5a07652a83cc8ad337c22e7fbf141184cc545d08ac2df49b92c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277737010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c622c8660e7829eae878f46e4b5aa853718b4d52297a8f9262885e3fda3dbc`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:06 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:20:06 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:20:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:20:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:20:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586ca40cfac5e1f2a74c75cd9d5c4f0144235eef67094c0d9e9208ef6666b248`  
		Last Modified: Wed, 05 Aug 2026 01:20:48 GMT  
		Size: 145.9 MB (145886339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d83489e52dd0ded2ee8b12561e4036cedadbfcec65c45b267a6cd120e2f567f`  
		Last Modified: Wed, 05 Aug 2026 01:20:47 GMT  
		Size: 82.5 MB (82537714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5122a0faf9787f74310b4036d2858863042d6ac062a0c46b537a6e979f817f4b`  
		Last Modified: Wed, 05 Aug 2026 01:20:43 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9019ac6ba4ec0b5cbcbb06f453d53c27450658fdffb13d7f3c4f7e6b357a94bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5d8283ac66c026dcaa7c54ba5a7e81e857a8f281c377e4ea48735743321a76`

```dockerfile
```

-	Layers:
	-	`sha256:a4347f3c5e6cf1d3f29b721e5d17f9450766db66351f9aaba6a4f830d25db800`  
		Last Modified: Wed, 05 Aug 2026 01:20:44 GMT  
		Size: 7.5 MB (7488409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d243710881e8e306a9e34fc957efc803c2b80319670db254257d878bbcc2b12`  
		Last Modified: Wed, 05 Aug 2026 01:20:43 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:35f471dcf9f3b9fa734c9c6e9b66775c2a17d9c6f71187dd2ea82db96a29d1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274615998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a25f6f2371f19c712c3624f886eafdfbc3c913b4bb4a973f7ece97d134cc282`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:26:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:00 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:26:00 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:26:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:26:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08794a0f722aa4ad6633de607abdefde15b7c4e9c51b316619be32afbf8a4914`  
		Last Modified: Wed, 05 Aug 2026 01:26:42 GMT  
		Size: 142.6 MB (142582297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e265c5090b4504c02aa254708f1d97622d4de9a11e9e395aa9773a4bbd7bbce`  
		Last Modified: Wed, 05 Aug 2026 01:26:41 GMT  
		Size: 82.4 MB (82359212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130de54e17aa11b2723213e18c55de4974d1f836f9d3d6389255d9bfdd5a3031`  
		Last Modified: Wed, 05 Aug 2026 01:26:38 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:433b8462b66179c9c6382e1e32076c0df1fb7e3851eb7596f36bf3e8513360f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7509877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ade246bad3b6c24573d91fdeb603ac235da6282af5c206308a1cee8e797455a`

```dockerfile
```

-	Layers:
	-	`sha256:dd3af75f8827ff3fb9ee77f9e6cb43a1ccbc98e712d884cd7d0b40db70d58663`  
		Last Modified: Wed, 05 Aug 2026 01:26:38 GMT  
		Size: 7.5 MB (7495420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b03eb2ff3469a7ed6a62f3b0212a03443c3de1a1dc51be8e0e7a24b31955c68e`  
		Last Modified: Wed, 05 Aug 2026 01:26:37 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:45a8111a816b6679232a263d499849f53f89320e8088b2d16dd63d8834ddcab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274192663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845fc333d53c4a338de11e260ffa50b1ffea4235bf3b891f0eeb1c0bf37a8fec`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:37:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:37:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:37:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:37:40 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:37:41 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:41:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:41:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:41:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c56f0fa02b637ffedeedf311160f7cb45e983a15f11560df318b1295f8caab6`  
		Last Modified: Wed, 05 Aug 2026 07:41:02 GMT  
		Size: 133.1 MB (133109714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed461005dd6d374be51fc6401958b218582eba50f3537351c9dc43f022b0fc4`  
		Last Modified: Wed, 05 Aug 2026 07:42:32 GMT  
		Size: 87.9 MB (87948701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e2b726101241edc33b556cff8e9ff654eb3ef05c4b36a4b8e4ff75ef35b6dc`  
		Last Modified: Wed, 05 Aug 2026 07:42:29 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7c0af5223cd419c963ec36c70bb61b1da4980bdc6f33320f681a7f8a9fd3f1db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b65c15f9cfedb041e084b7381e0e0c7f94c03895294f02a35389ea3937e8b0`

```dockerfile
```

-	Layers:
	-	`sha256:9417af227ee9b5221f2a07061c66a9615c7d36a0c72a6fb3d55585829e4ef474`  
		Last Modified: Wed, 05 Aug 2026 07:42:30 GMT  
		Size: 7.5 MB (7492215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1d6fcff00aabb62ee8e0acddf6bd1d95a0b35b8870a37f8af4b9f339504c8bd`  
		Last Modified: Wed, 05 Aug 2026 07:42:29 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:7c9e85b63353271956da977db49b8093b7cdbc98711100663d20c7a0556aabe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259553310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968b7f32d17e930e72f98fe58ceb8a6d6401bf5b247388f31accacb16cbdde86`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:44:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:44:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:44:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:44:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:44:20 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:46:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:46:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb9161ac4639db1d944e7c59abde6410a031afc4574d01ec9645a358136fba0`  
		Last Modified: Wed, 05 Aug 2026 01:46:38 GMT  
		Size: 126.7 MB (126652438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b793029fa4374003770c3609a915ab6a8dbe2111cf20c42a0b99f03f5ba50fc`  
		Last Modified: Wed, 05 Aug 2026 01:46:41 GMT  
		Size: 83.5 MB (83518801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8b8e930d3e3c7d5cb0f0233fbabe6144fb66b4be7da243b3e9feef3e4680a0`  
		Last Modified: Wed, 05 Aug 2026 01:46:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e55726b6d3a493fd11615ee2c82a960ca97ccd469c2d89a2a2f1e9df6091b8bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d812cfd2605d85b746fff000555a816d2ce0c37cac77ba703ff9b913c46743`

```dockerfile
```

-	Layers:
	-	`sha256:90e502a8cdf7f08ae364b60b98fcac4320924ea8738be5c256fceffeac1ce67f`  
		Last Modified: Wed, 05 Aug 2026 01:46:39 GMT  
		Size: 7.5 MB (7484335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a49952d3462c74566994314a9c32e196e72402de2099b30c8e3e0f364b708e21`  
		Last Modified: Wed, 05 Aug 2026 01:46:39 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json
