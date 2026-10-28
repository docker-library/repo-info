## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:9ef4e13df2f22edfbd7a55cd500409a298fae00f1706eb8ed826ea66ace3c518
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8d0949d6c980879828da880c019a125c6ee77f6f74fbf8be9f902996f45edaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240581687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d5055a1c3b26496b4e6d0017a2ccf7c4ffc431abf7a8ba3d21e801fb68d77eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:11:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:11:53 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:12:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:12:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:12:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:12:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:12:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21343a018a80f7c00efb553ab345e2796fb1dedf9f821a24d708f3a424500fa`  
		Last Modified: Wed, 28 Oct 2026 02:12:27 GMT  
		Size: 145.8 MB (145825488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b2e179994b9e4c2f85d69982c6dcc5608720c799028fff86f83e7d0867e7d7`  
		Last Modified: Wed, 28 Oct 2026 02:12:26 GMT  
		Size: 66.5 MB (66507717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c15aacfd3b1749d3ae2b9901aef959649c4e70bacc191f275850e7b3ebd6e9`  
		Last Modified: Wed, 28 Oct 2026 02:12:23 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59316c21c555100e5227a7de1f8f93beb1c9731bfb0e8c10ccc0269de6afab58`  
		Last Modified: Wed, 28 Oct 2026 02:12:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9baaebc8ab7e3ae1c8873ae2a0b6f458db624a89a2ad004d189ae0ef3e7fc66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b968b5908d4a8dd3202f5941579bd9f3ccc6dd2826f36123afbf85e7a6115252`

```dockerfile
```

-	Layers:
	-	`sha256:3d5ccbca33f6e37e74b6a52dc991c2b4155521e651d9fd06d00d8183a1b69d68`  
		Last Modified: Wed, 28 Oct 2026 02:12:23 GMT  
		Size: 5.1 MB (5118041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12ec19663acfeedb42001419973d714b0175cc65b53aba965a4d43d79cda079c`  
		Last Modified: Wed, 28 Oct 2026 02:12:23 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1512e8e1b17b2683c30b40356c8030ed3289b6825e36cd979549d1dd1ad644a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239288270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac77288a12bb544575e756b08c831707574889f47c745dcfc54b4afe5fe2789`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:18:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:18:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:18:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:18:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:18:56 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:19:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:19:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:19:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:19:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85e07ecdf97a10e4f1d12259b8c4dc0b2ac26ab534868dde464d8cff996ec34`  
		Last Modified: Wed, 28 Oct 2026 02:19:36 GMT  
		Size: 144.6 MB (144648276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7740b91f25a9e0bf51da4248376e8c224ad4abd4600fa15d06ad11dc0cca4b`  
		Last Modified: Wed, 28 Oct 2026 02:19:35 GMT  
		Size: 66.5 MB (66501003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f1f7a1a192bfd261a9e8fb175fc72cae27fd3b6d314ca26d16ef645f858538`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbac61a58a72788623708a99f2c8a7a8ec05ef883e736e941d7341e0fa03e447`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1760780f8d06377c01c297d399040dd60a1ce7cd0ecfb16340fd56c258e2adf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3adf701a8e521ba9ba4e46d9b8f87cd362b70ac4d9979a6b8848ceb6dadbf3`

```dockerfile
```

-	Layers:
	-	`sha256:848c2f8c7ecf2aace6c41cfef3e518e4856d05a9f55c4eb73cba3fbf89d334ae`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 5.1 MB (5123802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6b52a7ab3172982e4c1c2c68831104cbf9bcb5e3e0a4b02713de1c69e9ab8f1`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f704d95e04ee293dbfef43b5884c7ce86ecda3798e265907bfb759cd22428eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250099317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4aa5c9858ff2ceffd30c54502793627c622a7216bc47653aff9a21ec37b3562`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:48:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:48:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:48:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:48:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:48:24 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:58:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:58:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:58:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 09:58:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 09:58:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a022e325388c8d6662b7a11139049a5ad2ed36872c5843aed231d39b610bdb`  
		Last Modified: Wed, 28 Oct 2026 09:53:14 GMT  
		Size: 145.7 MB (145671601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4887ff969db908e6aa59efb763bbd6c0be763cc247b9fc9632d0cd67059efa4a`  
		Last Modified: Wed, 28 Oct 2026 09:59:23 GMT  
		Size: 72.3 MB (72333829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddad78bc97fa5f518ef38640ba1341d8d53b056efd24bc9d737091ab1f5feb32`  
		Last Modified: Wed, 28 Oct 2026 09:59:21 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d3adf85d9c66fd54a641194d6ee87192db0297e55366403f119f610b00515a`  
		Last Modified: Wed, 28 Oct 2026 09:59:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a405280aafebec6f5efbb6f85bd81f683b909a23f839b82d400bbab86a6c543e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935b0141436e31c5a25c592807730cb37137f9b7cf6453a1dbfa1fb079e5c9fe`

```dockerfile
```

-	Layers:
	-	`sha256:740c8f94912603c7f2d7c16aee78fbcb96c3c6428c9952302f2b8ac83794f63c`  
		Last Modified: Wed, 28 Oct 2026 09:59:21 GMT  
		Size: 5.1 MB (5123199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a239e39e0f271b6f8e68cb53f1de24056f2a7ce6a267b2b70c023dceb05da54`  
		Last Modified: Wed, 28 Oct 2026 09:59:21 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
