## `clojure:temurin-17-tools-deps-trixie`

```console
$ docker pull clojure@sha256:15ca1dfe963c260edc302bf4e3c73b5936fbb4a37d6720b5b9094a00ec7f7aa0
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

### `clojure:temurin-17-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b50f0f6bf68cf58e3fe65519753a0081936b8028205dabd3878697a6ed6edc93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277757344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98aae8f18efee139b7610610b79935f42d971e47461c88c13523654f2b0096b1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:51:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:51:03 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c36afa570d5f4d1e98dadcc6b07a7784a4aa63c4e04f8b0c4e2556bf1e6cab`  
		Last Modified: Tue, 04 Aug 2026 02:51:45 GMT  
		Size: 145.9 MB (145905437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ff7db2ad55782ef5b8bcd20c0f5524439b9fab01ad6a125a34453448341e40`  
		Last Modified: Tue, 04 Aug 2026 02:51:44 GMT  
		Size: 82.5 MB (82538291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7495ea01662df918c299e98eb82efcdc157a4536dd2603ad374230e8b377923b`  
		Last Modified: Tue, 04 Aug 2026 02:51:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91abb21bd59fd3ea5dbdd5b03b6f40b1c3441ea2b0ec9c52858adfcfccd8fb2`  
		Last Modified: Tue, 04 Aug 2026 02:51:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:230f197d1757471d4ae5897d44a2f8fdda906ba65ebe6cdea103c6c164f234e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7484801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21490b344bdccfa7f6dc2b77e31b4f6dde5b671bfa82192462d0dd3fcb3a37e`

```dockerfile
```

-	Layers:
	-	`sha256:969f8a766cfa65c85429cb89c738e6c977573e3542537d73f3451112cdfccf52`  
		Last Modified: Tue, 04 Aug 2026 02:51:41 GMT  
		Size: 7.5 MB (7468893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3db757ae201ac6af9b28e84fdf23653e6984d8f0fcc7dacbde58b1675ef9a53`  
		Last Modified: Tue, 04 Aug 2026 02:51:41 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4af642c5650974219a3974a2ee39b55e2399ecd6884df5f5bf30d182bb4b4530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276758330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ba34b152aca8334a223382a142021fe3e8b3b14db8e08bd7e592b266204170`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:51:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:51:30 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a707820a4578ef43f9b270931ecca3479006a2024236536d37750ad684d96e`  
		Last Modified: Tue, 04 Aug 2026 02:52:13 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9b3c121776d6d7744db2457daa5b1ed4531651c8b0d4148db08c11692544cd`  
		Last Modified: Tue, 04 Aug 2026 02:52:12 GMT  
		Size: 82.4 MB (82358814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4391bc324bffae3ecd5f368a3b96f1ad6743b2922e9c8c3658a647511b8c095a`  
		Last Modified: Tue, 04 Aug 2026 02:52:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379a790c5e34bd9a14bfd81d31cf1af99e548b6e1f5994e02af1ad6a1f12f771`  
		Last Modified: Tue, 04 Aug 2026 02:52:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ac96ae8982144db5acc7372fa6b5e3121119829610fdb01ff80227a16e86b4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923d9e1dccc6f4f35c63972a5119fd975b04a69bee2e4c848548503584adb8f2`

```dockerfile
```

-	Layers:
	-	`sha256:df7834436f2403d3567fecf765785d64416c0871351fa02976ee34fed0749cbf`  
		Last Modified: Tue, 04 Aug 2026 02:52:09 GMT  
		Size: 7.5 MB (7475286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9d33bb85adccf51e3845f5875b4d81bef9493e6b4340cf76f65d2cb90379689`  
		Last Modified: Tue, 04 Aug 2026 02:52:09 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:7c1368a9c579d5164b86f5f0368d35a6f551f250f2ceccb92c9240d8496ae6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286850799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e72e6b6e570137a51e4fd3b38bde8ff922bf2b51a4bbed78211546b86463850`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:13:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:13:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:13:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:13:18 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 05:13:19 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:21:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:22:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:22:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:22:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:22:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a169777f230e111bc35c8dadc9c9fea79da3ddb0bbdcaf99b3b0e2564864cda`  
		Last Modified: Tue, 04 Aug 2026 05:17:56 GMT  
		Size: 145.8 MB (145766123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdea0fbf76625ab09c968d241a03d75dee1e3f45e2993f99f816c9e3b6dffab`  
		Last Modified: Tue, 04 Aug 2026 05:22:41 GMT  
		Size: 87.9 MB (87949624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ac5c8285ecf56660b739fe7feab940db15c6da590dbc3388983f820bd9d19b`  
		Last Modified: Tue, 04 Aug 2026 05:22:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e177e0cf46a27a794a1ece6a0594eb239d4daf093e505a742836aa3186ee6ad1`  
		Last Modified: Tue, 04 Aug 2026 05:22:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:24e251685420708031b39118883543977a22a578c1987699c3a36433a21f35b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61689f20e49a5643413d342cb10d9255f09bfe3e42a615eae981f2ad4271a2b`

```dockerfile
```

-	Layers:
	-	`sha256:e5b27e9f3fdb6f6bf8acc0825f4d619400e8e46e232b3726f3f9670c18612f0c`  
		Last Modified: Tue, 04 Aug 2026 05:22:39 GMT  
		Size: 7.5 MB (7473314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d1aa4444a8491012ea14f8f259f1f5e0e868fa78ddaebac01a74ee128a16243`  
		Last Modified: Tue, 04 Aug 2026 05:22:38 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:ceeb911f438d621ea1393fce2c2fb053e121eb37f7eb8709dc72453e15607e32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268811502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570f41e51d1f8b57ad22e090e16df8fa07a4a7f4c229908bffae6605cd7bd06a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:54:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:31 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:56:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:56:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31b6a9957cedf6992e8e969ed6bac7fe9a75c53574feb342eca9a71afc71f2c`  
		Last Modified: Tue, 04 Aug 2026 02:56:13 GMT  
		Size: 135.9 MB (135910436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9835b0bde7b1d080d8906b2c3dece7c7ec9d06f78b0ca772aac6f3be9055faf5`  
		Last Modified: Tue, 04 Aug 2026 02:57:13 GMT  
		Size: 83.5 MB (83518316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf61ca22592ead7a2272b90b958afbf76496faeba38fb31b3946e7827119947`  
		Last Modified: Tue, 04 Aug 2026 02:57:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a561affc813718b065537662eb1cf506f703ae5ba8387810e249eef803c9b1e6`  
		Last Modified: Tue, 04 Aug 2026 02:57:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5d3c4a14b71c38ec33ce34560a1c668c898d4efc0eee6836f9b5179f9471e416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7480723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:178e3877784aee34a727f0218d40285aa22aae7f45d192a464165866c71e1b8e`

```dockerfile
```

-	Layers:
	-	`sha256:465eb14192a88d46a4ebaa1e4a725c1e237f2e6d34d46d0c597fb4dc0fcf24ec`  
		Last Modified: Tue, 04 Aug 2026 02:57:12 GMT  
		Size: 7.5 MB (7464815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7446f81f6131d1e93bef82876bec680dc3e1cb19f75b13ba3e0c044f9104cde4`  
		Last Modified: Tue, 04 Aug 2026 02:57:12 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
